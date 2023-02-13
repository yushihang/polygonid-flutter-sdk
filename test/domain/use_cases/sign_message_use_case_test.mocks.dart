// Mocks generated by Mockito 5.3.2 from annotations
// in polygonid_flutter_sdk/test/domain/use_cases/sign_message_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:mockito/mockito.dart' as _i1;
import 'package:polygonid_flutter_sdk/identity/domain/entities/identity_entity.dart'
    as _i2;
import 'package:polygonid_flutter_sdk/identity/domain/entities/node_entity.dart'
    as _i4;
import 'package:polygonid_flutter_sdk/identity/domain/entities/rhs_node_entity.dart'
    as _i3;
import 'package:polygonid_flutter_sdk/identity/domain/repositories/identity_repository.dart'
    as _i5;

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

class _FakeIdentityEntity_0 extends _i1.SmartFake
    implements _i2.IdentityEntity {
  _FakeIdentityEntity_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRhsNodeEntity_1 extends _i1.SmartFake implements _i3.RhsNodeEntity {
  _FakeRhsNodeEntity_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeNodeEntity_2 extends _i1.SmartFake implements _i4.NodeEntity {
  _FakeNodeEntity_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [IdentityRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIdentityRepository extends _i1.Mock
    implements _i5.IdentityRepository {
  MockIdentityRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<String> getPrivateKey({
    required String? accessMessage,
    required String? secret,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPrivateKey,
          [],
          {
            #accessMessage: accessMessage,
            #secret: secret,
          },
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<List<String>> getPublicKeys({required dynamic privateKey}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPublicKeys,
          [],
          {#privateKey: privateKey},
        ),
        returnValue: _i6.Future<List<String>>.value(<String>[]),
      ) as _i6.Future<List<String>>);
  @override
  _i6.Future<_i2.IdentityEntity> createIdentity({
    required String? privateKey,
    required String? blockchain,
    required String? network,
    List<int>? profiles,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #createIdentity,
          [],
          {
            #privateKey: privateKey,
            #blockchain: blockchain,
            #network: network,
            #profiles: profiles,
          },
        ),
        returnValue: _i6.Future<_i2.IdentityEntity>.value(_FakeIdentityEntity_0(
          this,
          Invocation.method(
            #createIdentity,
            [],
            {
              #privateKey: privateKey,
              #blockchain: blockchain,
              #network: network,
              #profiles: profiles,
            },
          ),
        )),
      ) as _i6.Future<_i2.IdentityEntity>);
  @override
  _i6.Future<void> storeIdentity({required _i2.IdentityEntity? identity}) =>
      (super.noSuchMethod(
        Invocation.method(
          #storeIdentity,
          [],
          {#identity: identity},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> removeIdentity({
    required String? genesisDid,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeIdentity,
          [],
          {
            #genesisDid: genesisDid,
            #privateKey: privateKey,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<_i2.IdentityEntity> getIdentity({required String? genesisDid}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getIdentity,
          [],
          {#genesisDid: genesisDid},
        ),
        returnValue: _i6.Future<_i2.IdentityEntity>.value(_FakeIdentityEntity_0(
          this,
          Invocation.method(
            #getIdentity,
            [],
            {#genesisDid: genesisDid},
          ),
        )),
      ) as _i6.Future<_i2.IdentityEntity>);
  @override
  _i6.Future<List<_i2.IdentityEntity>> getIdentities() => (super.noSuchMethod(
        Invocation.method(
          #getIdentities,
          [],
        ),
        returnValue:
            _i6.Future<List<_i2.IdentityEntity>>.value(<_i2.IdentityEntity>[]),
      ) as _i6.Future<List<_i2.IdentityEntity>>);
  @override
  _i6.Future<String> signMessage({
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
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<String> getDidIdentifier({
    required String? privateKey,
    required String? blockchain,
    required String? network,
    required int? profileNonce,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getDidIdentifier,
          [],
          {
            #privateKey: privateKey,
            #blockchain: blockchain,
            #network: network,
            #profileNonce: profileNonce,
          },
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<Map<String, dynamic>> getNonRevProof({
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
            _i6.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i6.Future<Map<String, dynamic>>);
  @override
  _i6.Future<Map<String, dynamic>> createIdentityState({
    required String? did,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #createIdentityState,
          [],
          {
            #did: did,
            #privateKey: privateKey,
          },
        ),
        returnValue:
            _i6.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i6.Future<Map<String, dynamic>>);
  @override
  _i6.Future<void> removeIdentityState({
    required String? did,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeIdentityState,
          [],
          {
            #did: did,
            #privateKey: privateKey,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<String> getState({
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
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<String> convertIdToBigInt({required String? id}) =>
      (super.noSuchMethod(
        Invocation.method(
          #convertIdToBigInt,
          [],
          {#id: id},
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<_i3.RhsNodeEntity> getStateRoots({required String? url}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getStateRoots,
          [],
          {#url: url},
        ),
        returnValue: _i6.Future<_i3.RhsNodeEntity>.value(_FakeRhsNodeEntity_1(
          this,
          Invocation.method(
            #getStateRoots,
            [],
            {#url: url},
          ),
        )),
      ) as _i6.Future<_i3.RhsNodeEntity>);
  @override
  _i6.Future<_i4.NodeEntity> getAuthClaimNode(
          {required List<String>? children}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAuthClaimNode,
          [],
          {#children: children},
        ),
        returnValue: _i6.Future<_i4.NodeEntity>.value(_FakeNodeEntity_2(
          this,
          Invocation.method(
            #getAuthClaimNode,
            [],
            {#children: children},
          ),
        )),
      ) as _i6.Future<_i4.NodeEntity>);
  @override
  _i6.Future<String> exportIdentity({
    required String? did,
    required String? privateKey,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #exportIdentity,
          [],
          {
            #did: did,
            #privateKey: privateKey,
          },
        ),
        returnValue: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<void> importIdentity({
    required String? did,
    required String? privateKey,
    required String? encryptedDb,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #importIdentity,
          [],
          {
            #did: did,
            #privateKey: privateKey,
            #encryptedDb: encryptedDb,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}
