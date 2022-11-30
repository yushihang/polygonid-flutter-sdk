// Mocks generated by Mockito 5.3.2 from annotations
// in polygonid_flutter_sdk/test/domain/use_cases/get_auth_token_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;
import 'dart:typed_data' as _i16;

import 'package:mockito/mockito.dart' as _i1;
import 'package:polygonid_flutter_sdk/common/domain/entities/filter_entity.dart'
    as _i14;
import 'package:polygonid_flutter_sdk/credential/domain/entities/claim_entity.dart'
    as _i2;
import 'package:polygonid_flutter_sdk/credential/domain/repositories/credential_repository.dart'
    as _i12;
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/proof_entity.dart'
    as _i11;
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/proof_request_entity.dart'
    as _i17;
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/request/auth/auth_iden3_message_entity.dart'
    as _i10;
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/request/offer/offer_iden3_message_entity.dart'
    as _i13;
import 'package:polygonid_flutter_sdk/iden3comm/domain/repositories/iden3comm_repository.dart'
    as _i8;
import 'package:polygonid_flutter_sdk/identity/domain/entities/identity_entity.dart'
    as _i6;
import 'package:polygonid_flutter_sdk/identity/domain/entities/private_identity_entity.dart'
    as _i5;
import 'package:polygonid_flutter_sdk/identity/domain/entities/rhs_node_entity.dart'
    as _i7;
import 'package:polygonid_flutter_sdk/identity/domain/repositories/identity_repository.dart'
    as _i18;
import 'package:polygonid_flutter_sdk/identity/libs/jwz/jwz_proof.dart' as _i4;
import 'package:polygonid_flutter_sdk/proof_generation/domain/entities/circuit_data_entity.dart'
    as _i3;
import 'package:polygonid_flutter_sdk/proof_generation/domain/repositories/proof_repository.dart'
    as _i15;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeClaimEntity_0 extends _i1.SmartFake implements _i2.ClaimEntity {
  _FakeClaimEntity_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCircuitDataEntity_1 extends _i1.SmartFake
    implements _i3.CircuitDataEntity {
  _FakeCircuitDataEntity_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeJWZProof_2 extends _i1.SmartFake implements _i4.JWZProof {
  _FakeJWZProof_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePrivateIdentityEntity_3 extends _i1.SmartFake
    implements _i5.PrivateIdentityEntity {
  _FakePrivateIdentityEntity_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIdentityEntity_4 extends _i1.SmartFake
    implements _i6.IdentityEntity {
  _FakeIdentityEntity_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRhsNodeEntity_5 extends _i1.SmartFake implements _i7.RhsNodeEntity {
  _FakeRhsNodeEntity_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Iden3commRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIden3commRepository extends _i1.Mock
    implements _i8.Iden3commRepository {
  MockIden3commRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<void> authenticate({
    required _i10.AuthIden3MessageEntity? request,
    required String? authToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #authenticate,
          [],
          {
            #request: request,
            #authToken: authToken,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
  @override
  _i9.Future<String> getAuthToken({
    required _i5.PrivateIdentityEntity? identity,
    required String? message,
    required _i3.CircuitDataEntity? authData,
    required String? authClaim,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAuthToken,
          [],
          {
            #identity: identity,
            #message: message,
            #authData: authData,
            #authClaim: authClaim,
          },
        ),
        returnValue: _i9.Future<String>.value(''),
      ) as _i9.Future<String>);
  @override
  _i9.Future<String> getAuthResponse({
    required String? identifier,
    required _i10.AuthIden3MessageEntity? request,
    required List<_i11.ProofEntity>? scope,
    String? pushUrl,
    String? pushToken,
    String? didIdentifier,
    String? packageName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAuthResponse,
          [],
          {
            #identifier: identifier,
            #request: request,
            #scope: scope,
            #pushUrl: pushUrl,
            #pushToken: pushToken,
            #didIdentifier: didIdentifier,
            #packageName: packageName,
          },
        ),
        returnValue: _i9.Future<String>.value(''),
      ) as _i9.Future<String>);
}

/// A class which mocks [CredentialRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockCredentialRepository extends _i1.Mock
    implements _i12.CredentialRepository {
  MockCredentialRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i2.ClaimEntity> fetchClaim({
    required String? identifier,
    required String? token,
    required _i13.OfferIden3MessageEntity? message,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchClaim,
          [],
          {
            #identifier: identifier,
            #token: token,
            #message: message,
          },
        ),
        returnValue: _i9.Future<_i2.ClaimEntity>.value(_FakeClaimEntity_0(
          this,
          Invocation.method(
            #fetchClaim,
            [],
            {
              #identifier: identifier,
              #token: token,
              #message: message,
            },
          ),
        )),
      ) as _i9.Future<_i2.ClaimEntity>);
  @override
  _i9.Future<void> saveClaims({
    required List<_i2.ClaimEntity>? claims,
    required String? identifier,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveClaims,
          [],
          {
            #claims: claims,
            #identifier: identifier,
            #privateKey: privateKey,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
  @override
  _i9.Future<List<_i2.ClaimEntity>> getClaims({
    List<_i14.FilterEntity>? filters,
    required String? identifier,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getClaims,
          [],
          {
            #filters: filters,
            #identifier: identifier,
            #privateKey: privateKey,
          },
        ),
        returnValue:
            _i9.Future<List<_i2.ClaimEntity>>.value(<_i2.ClaimEntity>[]),
      ) as _i9.Future<List<_i2.ClaimEntity>>);
  @override
  _i9.Future<_i2.ClaimEntity> getClaim({
    required String? claimId,
    required String? identifier,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getClaim,
          [],
          {
            #claimId: claimId,
            #identifier: identifier,
            #privateKey: privateKey,
          },
        ),
        returnValue: _i9.Future<_i2.ClaimEntity>.value(_FakeClaimEntity_0(
          this,
          Invocation.method(
            #getClaim,
            [],
            {
              #claimId: claimId,
              #identifier: identifier,
              #privateKey: privateKey,
            },
          ),
        )),
      ) as _i9.Future<_i2.ClaimEntity>);
  @override
  _i9.Future<void> removeClaims({
    required List<String>? claimIds,
    required String? identifier,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeClaims,
          [],
          {
            #claimIds: claimIds,
            #identifier: identifier,
            #privateKey: privateKey,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
  @override
  _i9.Future<Map<String, dynamic>> fetchSchema({required String? url}) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchSchema,
          [],
          {#url: url},
        ),
        returnValue:
            _i9.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i9.Future<Map<String, dynamic>>);
  @override
  _i9.Future<Map<String, dynamic>> fetchVocab({
    required Map<String, dynamic>? schema,
    required String? type,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchVocab,
          [],
          {
            #schema: schema,
            #type: type,
          },
        ),
        returnValue:
            _i9.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i9.Future<Map<String, dynamic>>);
  @override
  _i9.Future<Map<String, dynamic>> getRevocationStatus(
          {required _i2.ClaimEntity? claim}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRevocationStatus,
          [],
          {#claim: claim},
        ),
        returnValue:
            _i9.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i9.Future<Map<String, dynamic>>);
  @override
  _i9.Future<bool> isUsingRHS({required _i2.ClaimEntity? claim}) =>
      (super.noSuchMethod(
        Invocation.method(
          #isUsingRHS,
          [],
          {#claim: claim},
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);
  @override
  _i9.Future<String> getRhsRevocationId({required _i2.ClaimEntity? claim}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRhsRevocationId,
          [],
          {#claim: claim},
        ),
        returnValue: _i9.Future<String>.value(''),
      ) as _i9.Future<String>);
  @override
  _i9.Future<int> getRevocationNonce({required _i2.ClaimEntity? claim}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRevocationNonce,
          [],
          {#claim: claim},
        ),
        returnValue: _i9.Future<int>.value(0),
      ) as _i9.Future<int>);
  @override
  _i9.Future<String> getAuthClaim(
          {required _i5.PrivateIdentityEntity? identity}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAuthClaim,
          [],
          {#identity: identity},
        ),
        returnValue: _i9.Future<String>.value(''),
      ) as _i9.Future<String>);
}

/// A class which mocks [ProofRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockProofRepository extends _i1.Mock implements _i15.ProofRepository {
  MockProofRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<bool> isCircuitSupported({required String? circuitId}) =>
      (super.noSuchMethod(
        Invocation.method(
          #isCircuitSupported,
          [],
          {#circuitId: circuitId},
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);
  @override
  _i9.Future<_i3.CircuitDataEntity> loadCircuitFiles(String? circuitId) =>
      (super.noSuchMethod(
        Invocation.method(
          #loadCircuitFiles,
          [circuitId],
        ),
        returnValue:
            _i9.Future<_i3.CircuitDataEntity>.value(_FakeCircuitDataEntity_1(
          this,
          Invocation.method(
            #loadCircuitFiles,
            [circuitId],
          ),
        )),
      ) as _i9.Future<_i3.CircuitDataEntity>);
  @override
  _i9.Future<_i16.Uint8List> calculateAtomicQueryInputs(
    String? challenge,
    _i2.ClaimEntity? authClaim,
    String? circuitId,
    _i17.ProofQueryParamEntity? queryParam,
    String? pubX,
    String? pubY,
    String? signature,
    Map<String, dynamic>? revocationStatus,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #calculateAtomicQueryInputs,
          [
            challenge,
            authClaim,
            circuitId,
            queryParam,
            pubX,
            pubY,
            signature,
            revocationStatus,
          ],
        ),
        returnValue: _i9.Future<_i16.Uint8List>.value(_i16.Uint8List(0)),
      ) as _i9.Future<_i16.Uint8List>);
  @override
  _i9.Future<_i16.Uint8List> calculateWitness(
    _i3.CircuitDataEntity? circuitData,
    _i16.Uint8List? atomicQueryInputs,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #calculateWitness,
          [
            circuitData,
            atomicQueryInputs,
          ],
        ),
        returnValue: _i9.Future<_i16.Uint8List>.value(_i16.Uint8List(0)),
      ) as _i9.Future<_i16.Uint8List>);
  @override
  _i9.Future<_i4.JWZProof> prove(
    _i3.CircuitDataEntity? circuitData,
    _i16.Uint8List? wtnsBytes,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #prove,
          [
            circuitData,
            wtnsBytes,
          ],
        ),
        returnValue: _i9.Future<_i4.JWZProof>.value(_FakeJWZProof_2(
          this,
          Invocation.method(
            #prove,
            [
              circuitData,
              wtnsBytes,
            ],
          ),
        )),
      ) as _i9.Future<_i4.JWZProof>);
  @override
  _i9.Future<List<_i14.FilterEntity>> getFilters(
          {required _i17.ProofRequestEntity? request}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFilters,
          [],
          {#request: request},
        ),
        returnValue:
            _i9.Future<List<_i14.FilterEntity>>.value(<_i14.FilterEntity>[]),
      ) as _i9.Future<List<_i14.FilterEntity>>);
}

/// A class which mocks [IdentityRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIdentityRepository extends _i1.Mock
    implements _i18.IdentityRepository {
  MockIdentityRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i5.PrivateIdentityEntity> createIdentity({
    String? secret,
    required String? accessMessage,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #createIdentity,
          [],
          {
            #secret: secret,
            #accessMessage: accessMessage,
          },
        ),
        returnValue: _i9.Future<_i5.PrivateIdentityEntity>.value(
            _FakePrivateIdentityEntity_3(
          this,
          Invocation.method(
            #createIdentity,
            [],
            {
              #secret: secret,
              #accessMessage: accessMessage,
            },
          ),
        )),
      ) as _i9.Future<_i5.PrivateIdentityEntity>);
  @override
  _i9.Future<void> storeIdentity({
    required _i6.IdentityEntity? identity,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #storeIdentity,
          [],
          {
            #identity: identity,
            #privateKey: privateKey,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
  @override
  _i9.Future<void> removeIdentity({
    required String? identifier,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeIdentity,
          [],
          {
            #identifier: identifier,
            #privateKey: privateKey,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
  @override
  _i9.Future<String> getIdentifier({required String? privateKey}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getIdentifier,
          [],
          {#privateKey: privateKey},
        ),
        returnValue: _i9.Future<String>.value(''),
      ) as _i9.Future<String>);
  @override
  _i9.Future<_i6.IdentityEntity> getIdentity({required String? identifier}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getIdentity,
          [],
          {#identifier: identifier},
        ),
        returnValue: _i9.Future<_i6.IdentityEntity>.value(_FakeIdentityEntity_4(
          this,
          Invocation.method(
            #getIdentity,
            [],
            {#identifier: identifier},
          ),
        )),
      ) as _i9.Future<_i6.IdentityEntity>);
  @override
  _i9.Future<_i5.PrivateIdentityEntity> getPrivateIdentity({
    required String? identifier,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPrivateIdentity,
          [],
          {
            #identifier: identifier,
            #privateKey: privateKey,
          },
        ),
        returnValue: _i9.Future<_i5.PrivateIdentityEntity>.value(
            _FakePrivateIdentityEntity_3(
          this,
          Invocation.method(
            #getPrivateIdentity,
            [],
            {
              #identifier: identifier,
              #privateKey: privateKey,
            },
          ),
        )),
      ) as _i9.Future<_i5.PrivateIdentityEntity>);
  @override
  _i9.Future<List<_i6.IdentityEntity>> getIdentities() => (super.noSuchMethod(
        Invocation.method(
          #getIdentities,
          [],
        ),
        returnValue:
            _i9.Future<List<_i6.IdentityEntity>>.value(<_i6.IdentityEntity>[]),
      ) as _i9.Future<List<_i6.IdentityEntity>>);
  @override
  _i9.Future<String> signMessage({
    required String? privateKey,
    required String? message,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signMessage,
          [],
          {
            #privateKey: privateKey,
            #message: message,
          },
        ),
        returnValue: _i9.Future<String>.value(''),
      ) as _i9.Future<String>);
  @override
  _i9.Future<String> getDidIdentifier({
    required String? identifier,
    required String? networkName,
    required String? networkEnv,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getDidIdentifier,
          [],
          {
            #identifier: identifier,
            #networkName: networkName,
            #networkEnv: networkEnv,
          },
        ),
        returnValue: _i9.Future<String>.value(''),
      ) as _i9.Future<String>);
  @override
  _i9.Future<Map<String, dynamic>> getNonRevProof({
    required String? identityState,
    required int? nonce,
    required String? baseUrl,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getNonRevProof,
          [],
          {
            #identityState: identityState,
            #nonce: nonce,
            #baseUrl: baseUrl,
          },
        ),
        returnValue:
            _i9.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i9.Future<Map<String, dynamic>>);
  @override
  _i9.Future<String> getState({
    required String? identifier,
    required String? contractAddress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getState,
          [],
          {
            #identifier: identifier,
            #contractAddress: contractAddress,
          },
        ),
        returnValue: _i9.Future<String>.value(''),
      ) as _i9.Future<String>);
  @override
  _i9.Future<_i7.RhsNodeEntity> getStateRoots({required String? url}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getStateRoots,
          [],
          {#url: url},
        ),
        returnValue: _i9.Future<_i7.RhsNodeEntity>.value(_FakeRhsNodeEntity_5(
          this,
          Invocation.method(
            #getStateRoots,
            [],
            {#url: url},
          ),
        )),
      ) as _i9.Future<_i7.RhsNodeEntity>);
}
