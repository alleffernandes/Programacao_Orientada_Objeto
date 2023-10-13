import 'package:orientacao_a_objeto/classes/pessoa_abstract.dart';
import 'package:orientacao_a_objeto/enum/tipo_notification.dart';

class PessoaFisica extends Pessoa {
  
 
  String _cpf = "";


  void setCpf(String cpf){
    _cpf = cpf;
  }

  String getCpf(){
    return _cpf;
  }

  PessoaFisica (String nome, String endereco, String cpf, {TipoNotification tipoNotification = TipoNotification.NENHUM}):super(nome, endereco, tipoNotification :tipoNotification,){
    
    _cpf = cpf;
  }

  @override
  String toString(){
    return {
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "cpf": _cpf,
      "tipoNotification" : getTipoNotification(),
    }.toString();
  }
}