import 'package:polygonid_flutter_sdk/common/domain/domain_logger.dart';
import 'package:polygonid_flutter_sdk/common/domain/use_case.dart';

import '../../../identity/domain/use_cases/get_did_identifier_use_case.dart';
import '../entities/iden3_message_entity.dart';
import '../entities/proof_entity.dart';
import '../exceptions/iden3comm_exceptions.dart';
import '../repositories/iden3comm_repository.dart';
import 'get_auth_token_use_case.dart';
import 'get_proofs_use_case.dart';

class AuthenticateParam {
  final Iden3MessageEntity message;
  final String identifier;
  final String? pushToken;

  AuthenticateParam(
      {required this.message, required this.identifier, this.pushToken});
}

class AuthenticateUseCase extends FutureUseCase<AuthenticateParam, bool> {
  final Iden3commRepository _iden3commRepository;
  final GetAuthTokenUseCase _getAuthTokenUseCase;
  final GetProofsUseCase _getProofsUseCase;
  final GetDidIdentifierUseCase _getDidIdentifierUseCase;

  AuthenticateUseCase(this._iden3commRepository, this._getProofsUseCase,
      this._getAuthTokenUseCase, this._getDidIdentifierUseCase);

  @override
  Future<bool> execute({required AuthenticateParam param}) async {
    if (param.message.type == Iden3MessageType.auth) {
      try {
        List<ProofEntity> proofs = await _getProofsUseCase.execute(
            param: GetProofsParam(
                message: param.message, identifier: param.identifier));

        String didIdentifier =
            await _getDidIdentifierUseCase.execute(param: param.identifier);

        String authResponse = await _iden3commRepository.getAuthResponse(
            identifier: param.identifier,
            message: param.message,
            scope: proofs,
            pushToken: param.pushToken,
            didIdentifier: didIdentifier);

        String authToken = await _getAuthTokenUseCase.execute(
            param: GetAuthTokenParam(param.identifier, authResponse));

        return _iden3commRepository
            .getAuthCallback(message: param.message)
            .then((url) => _iden3commRepository.authenticate(
                  url: url,
                  authToken: authToken,
                ));
      } catch (error) {
        logger().e("[AuthenticateUseCase] Error: $error");

        rethrow;
      }
    } else {
      throw UnsupportedIden3MsgTypeException(param.message.type);
    }
  }
}
