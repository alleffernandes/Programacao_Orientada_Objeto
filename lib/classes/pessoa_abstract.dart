import 'package:orientacao_a_objeto/enum/tipo_notification.dart';

abstract class Pessoa {
  String _nome = "";
  String _endereco = "";
  String _email = "";
  String _telefone = "";
  String _token = "";

  TipoNotification _tipoNotification = TipoNotification.NENHUM;


  void setNome(String nome){
    _nome = nome;
  }

  String getNome(){
    return _nome.toUpperCase();
  }
  void setEndereco(String endereco){
    _endereco = endereco;
  }

  String getEndereco(){
    return _endereco;
  }

  void setEmail(String email){
    _email = email;
  }

  String getEmail(){
    return _email;
  }

  void setTelefone(String telefone){
    _telefone = telefone;
  }

  String getTelefone(){
    return _telefone;
  }
  void setToken(String token){
    _token = token;
  }

  String getToken(){
    return _token;
  }


  void setTipoNotification(tipoNotification){
    _tipoNotification = tipoNotification;
  }

  TipoNotification getTipoNotification(){
    return _tipoNotification;
  }

  Pessoa (String nome, String endereco, {TipoNotification tipoNotification = TipoNotification.NENHUM}){
    _nome = nome;
    _endereco = endereco;
    _tipoNotification = tipoNotification;
  }

  @override
  String toString(){
    return {

      "Nome": _nome,
      "Endereco": _endereco,
      "tipoNotification" : _tipoNotification,
    }.toString();
  }
}