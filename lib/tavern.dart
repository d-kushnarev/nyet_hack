import 'dart:convert';
import 'dart:io';

void start() {
  var beverage = readLine('Enter beverage name >> ')?.toUpperCase();
  beverage ??= 'Ale';
  // final beverageCaps = beverage?.toUpperCase() ?? 'Ale';
  //final beverageCaps = (beverage ?? 'Ale').toUpperCase();

  if (beverage != null) {
    beverage = beverage.toUpperCase();
  } else {
    print("I can't do that without crashing - beverage was null!");
  }

  print(beverage);
}

String? readLine([String? message]) {
  if (message != null) stdout.write(message);
  return stdin.readLineSync(encoding: Encoding.getByName('utf-8')!);
}
