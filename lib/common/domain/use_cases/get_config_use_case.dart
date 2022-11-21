import 'package:polygonid_flutter_sdk/common/domain/repositories/config_repository.dart';
import 'package:polygonid_flutter_sdk/common/domain/use_case.dart';

enum PolygonIdConfig {
  polygonIdAccessMessage,
  networkName,
  networkEnv,
  infuraUrl,
  infuraRdpUrl,
  infuraApiKey,
  reverseHashServiceUrl,
  idStateContractAddress,
  pushUrl,
}

class GetEnvConfigUseCase extends FutureUseCase<PolygonIdConfig, String> {
  final ConfigRepository _configRepository;

  GetEnvConfigUseCase(this._configRepository);

  @override
  Future<String> execute({required PolygonIdConfig param}) {
    return _configRepository.getConfig(config: param);
  }
}