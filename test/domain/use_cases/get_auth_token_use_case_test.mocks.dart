// Mocks generated by Mockito 5.3.0 from annotations
// in polygonid_flutter_sdk/test/domain/use_cases/get_auth_token_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:polygonid_flutter_sdk/iden3comm/data/dtos/iden3_message.dart'
    as _i5;
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/iden3_message_entity.dart'
    as _i4;
import 'package:polygonid_flutter_sdk/iden3comm/domain/repositories/iden3comm_repository.dart'
    as _i2;

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

/// A class which mocks [Iden3commRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIden3commRepository extends _i1.Mock
    implements _i2.Iden3commRepository {
  MockIden3commRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<bool> authenticate(
          {_i4.Iden3MessageEntity? iden3message,
          String? identifier,
          String? pushToken}) =>
      (super.noSuchMethod(
          Invocation.method(#authenticate, [], {
            #iden3message: iden3message,
            #identifier: identifier,
            #pushToken: pushToken
          }),
          returnValue: _i3.Future<bool>.value(false)) as _i3.Future<bool>);
  @override
  _i3.Future<String> getAuthToken({String? identifier, String? message}) =>
      (super.noSuchMethod(
          Invocation.method(
              #getAuthToken, [], {#identifier: identifier, #message: message}),
          returnValue: _i3.Future<String>.value('')) as _i3.Future<String>);
  @override
  _i3.Future<List<Map<String, dynamic>>> getVocabsFromIden3Message(
          {_i5.Iden3Message? iden3Message}) =>
      (super.noSuchMethod(
          Invocation.method(
              #getVocabsFromIden3Message, [], {#iden3Message: iden3Message}),
          returnValue: _i3.Future<List<Map<String, dynamic>>>.value(
              <Map<String, dynamic>>[])) as _i3
          .Future<List<Map<String, dynamic>>>);
}
