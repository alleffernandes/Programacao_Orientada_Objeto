import 'package:orientacao_a_objeto/service/notificatio_interface.dart';
import 'package:orientacao_a_objeto/classes/pessoa_abstract.dart';

class NotificationPushNotification implements NotificationInterface {
  @override
  void enviarNotification(Pessoa pessoa){
    print("Enviando Push para: ${pessoa.getNome()}");
  }
}