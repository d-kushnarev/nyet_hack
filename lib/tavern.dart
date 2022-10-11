import 'dart:convert';
import 'dart:io';

const tavernName = "Taernyl's Folly";

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

void placeOrder() {
  const order = "shandy,Dragon's Breath,5.91";
  final indexOfApostrophe = tavernName.indexOf("'");
  final tavernMaster = tavernName.substring(0, indexOfApostrophe);
  print('Madrigal speaks with $tavernMaster about their order.');

  final orderData = order.split(',');
  final type = orderData[0];
  final name = orderData[1];
  final cost = int.tryParse(orderData[2]);
  final message = 'Madrigal buys a $name ($type) for $cost.';
  print(message);

  final phrase = 'Ah, delicious $name!';
  final dragonPhrase = phrase.replaceAllMapped(RegExp('[aeiouAEIOU]'), (match) {
    final letter = match.group(0)!.toLowerCase();
    if (letter == 'a') {
      return '4';
    } else if (letter == 'e') {
      return '3';
    } else if (letter == 'i') {
      return '1';
    } else if (letter == 'o') {
      return '0';
    } else {
      return '|_|';
    }
  });
  print(phrase);
  print(dragonPhrase);
}

String? readLine([String? message]) {
  if (message != null) stdout.write(message);
  return stdin.readLineSync(encoding: Encoding.getByName('utf-8')!);
}
