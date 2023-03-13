import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:polygonid_flutter_sdk/identity/domain/repositories/identity_repository.dart';
import 'package:polygonid_flutter_sdk/identity/domain/use_cases/get_current_env_did_identifier_use_case.dart';
import 'package:polygonid_flutter_sdk/identity/domain/use_cases/get_identity_use_case.dart';
import 'package:polygonid_flutter_sdk/identity/domain/use_cases/get_profiles_use_case.dart';

import '../../../../common/common_mocks.dart';
import '../../../../common/identity_mocks.dart';
import 'get_profiles_use_case_test.mocks.dart';

MockGetIdentityUseCase getIdentityUseCase = MockGetIdentityUseCase();
MockGetCurrentEnvDidIdentifierUseCase getCurrentEnvDidIdentifierUseCase =
    MockGetCurrentEnvDidIdentifierUseCase();

// Data
String param = CommonMocks.did;

GetProfilesUseCase useCase = GetProfilesUseCase(
  getIdentityUseCase,
  getCurrentEnvDidIdentifierUseCase,
);

@GenerateMocks([
  GetIdentityUseCase,
  GetCurrentEnvDidIdentifierUseCase,
])
void main() {
  setUp(() {
    reset(getIdentityUseCase);

    // Given
    when(getCurrentEnvDidIdentifierUseCase.execute(param: anyNamed('param')))
        .thenAnswer((realInvocation) => Future.value(CommonMocks.did));
    when(getIdentityUseCase.execute(param: anyNamed('param')))
        .thenAnswer((realInvocation) => Future.value(IdentityMocks.identity));
  });

  test(
    'Given a param, when I call execute, then I expect an Map<int, String> to be returned',
    () async {
      // When
      expect(await useCase.execute(param: param), CommonMocks.profiles);

      // Then
      expect(
          verify(getCurrentEnvDidIdentifierUseCase.execute(
              param: captureAnyNamed('param')))
              .captured
              .first
              .privateKey,
          param);

      var getIdentityCapture =
          verify(getIdentityUseCase.execute(param: captureAnyNamed('param')))
              .captured;
      expect(getIdentityCapture.first.genesisDid, CommonMocks.did);
    },
  );

  test(
    'Given a param, when I call execute and an error occurred, then I expect an exception to be thrown',
    () async {
      // Given
      when(getIdentityUseCase.execute(param: anyNamed('param')))
          .thenAnswer((realInvocation) => Future.error(CommonMocks.exception));

      // When
      await expectLater(
          useCase.execute(param: param), throwsA(CommonMocks.exception));

      // Then
      expect(
          verify(getCurrentEnvDidIdentifierUseCase.execute(
              param: captureAnyNamed('param')))
              .captured
              .first
              .privateKey,
          param);

      var getIdentityCapture =
          verify(getIdentityUseCase.execute(param: captureAnyNamed('param')))
              .captured;
      expect(getIdentityCapture.first.genesisDid, CommonMocks.did);
    },
  );
}
