// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enterprise_mobx_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EnterpriseMobxModel on EnterpriseModelBase, Store {
  final _$enterpriseAtom = Atom(name: 'EnterpriseModelBase.enterprise');

  @override
  List<EnterpriseModel> get enterprise {
    _$enterpriseAtom.reportRead();
    return super.enterprise;
  }

  @override
  set enterprise(List<EnterpriseModel> value) {
    _$enterpriseAtom.reportWrite(value, super.enterprise, () {
      super.enterprise = value;
    });
  }

  final _$errorAtom = Atom(name: 'EnterpriseModelBase.error');

  @override
  Exception get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(Exception value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$fetchAsyncAction = AsyncAction('EnterpriseModelBase.fetch');

  @override
  Future fetch(UserModel userModel) {
    return _$fetchAsyncAction.run(() => super.fetch(userModel));
  }

  @override
  String toString() {
    return '''
enterprise: ${enterprise},
error: ${error}
    ''';
  }
}
