// ignore_for_file: avoid_positional_boolean_parameters

void start() {
  const name = 'Madrigal';
  var healthPoints = 89;
  const isBlessed = true;
  const isImmortal = false;

  final isAuraVisible = isBlessed && healthPoints > 50 || isImmortal;
  final auraColor = isAuraVisible ? 'GREEN' : 'RED';

  greeting();
  final healtSatus = formatHealthStatus(healthPoints, isBlessed);
  print(healtSatus);
  //final String healthStatus;
  //formatHealthStatus(healthPoints, healthStatus, isBlessed);
  // final String auraColor;
  // if (isAuraVisible) {
  //   auraColor = 'GREEN';
  // } else {
  //   auraColor = 'RED';
  // }
}

String formatHealthStatus(int healthPoints, bool isBlessed) {
  //final String healthStatus;
  if (healthPoints == 100) {
    return 'is in excellent condition!';
  } else if (healthPoints >= 90) {
    return 'has a few scratches.';
  } else if (healthPoints >= 75) {
    return isBlessed
        ? 'has some minor wounds, but is healing quite quickly!'
        : 'has some minor wounds.';
  } else if (healthPoints >= 15) {
    return 'looks pretty hurt.';
  } else {
    return 'is in awful condition!';
  }
  //return healthStatus;
}

void greeting() {
  print('hello');
}
