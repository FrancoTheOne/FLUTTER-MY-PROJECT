import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'CCCRM_CLIENT_SECRET_KEY', obfuscate: true)
  static final cccrmClientSecretKey = _Env.cccrmClientSecretKey;

  @EnviedField(varName: 'CCCMS_CLIENT_SECRET_KEY', obfuscate: true)
  static final cccmsClientSecretKey = _Env.cccmsClientSecretKey;
}
