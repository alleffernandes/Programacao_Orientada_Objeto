import 'package:orientacao_a_objeto/classes/pessoa_fisica.dart';
import 'package:orientacao_a_objeto/classes/pessoa_juridica.dart';
import 'package:orientacao_a_objeto/enum/tipo_notification.dart';
import 'package:orientacao_a_objeto/service/enviar_notification.dart';

void main() {

  var pessoaFisica = PessoaFisica("Lula Molusco", "Maranhão", '121.123.131-44');
  print(pessoaFisica);

  var pessoaJuridica = PessoaJuridica("SIRI CASCUDO", "fenda do biquine", "12.333.222/2255-55", tipoNotification: TipoNotification.EMAIL);
  print(pessoaJuridica);


  EnviarNotification enviarNotification = EnviarNotification();
  enviarNotification.noticar(pessoaFisica);
  enviarNotification.noticar(pessoaJuridica);
}