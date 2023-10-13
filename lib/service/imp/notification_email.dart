import 'package:orientacao_a_objeto/service/notificatio_interface.dart';
import 'package:orientacao_a_objeto/classes/pessoa_abstract.dart';

class NotificationEmail implements NotificationInterface {
  @override
  void enviarNotification(Pessoa pessoa){
    print("Enviando Email para: ${pessoa.getNome()}");
  }
}