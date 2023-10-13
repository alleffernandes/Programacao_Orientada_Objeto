import 'package:orientacao_a_objeto/classes/pessoa_abstract.dart';
import 'package:orientacao_a_objeto/enum/tipo_notification.dart';

class PessoaJuridica extends Pessoa{
  
  
  String _cnpj = "";


  
  void setCnpj(String cnpj){
    _cnpj = cnpj;
  }
  String getCnpj(){
    return _cnpj;
  }


  PessoaJuridica (String nome, String endereco, String cnpj,  {TipoNotification tipoNotification = TipoNotification.NENHUM}):super(nome, endereco, tipoNotification: tipoNotification){
    _cnpj = cnpj;
  }

  @override
  String toString(){
    return {
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "cnpj": _cnpj,
      "tipoNotification": getTipoNotification(),
    }.toString();
  }
}