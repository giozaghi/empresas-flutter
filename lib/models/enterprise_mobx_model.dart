import 'package:empresas_flutter/models/enterprise_model.dart';
import 'package:empresas_flutter/models/user_model.dart';
import 'package:mobx/mobx.dart';

part 'enterprise_mobx_model.g.dart';

class EnterpriseMobxModel = EnterpriseModelBase with _$EnterpriseMobxModel;

abstract class EnterpriseModelBase with Store {

  @observable
  List<EnterpriseModel> enterprise;

  @observable
  Exception error;

  @action
  fetch(UserModel userModel) async {
    try{
      //this.enterprise = await EnterpriseApi.getEnterprise();

    }catch(e){
      error = e;
    }
  }
}