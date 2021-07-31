import 'package:neerutils/neerutils.dart';

void main() async {
  printIp();
}

printIp() async{
  var ip = await NeerUtils.getPublicIP();
  print('ip: ${ip}');
}
