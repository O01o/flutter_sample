enum Sex {
  male,
  female
}

void main(List<String> args) {
  int age = 21;
  double weight = 78.5;
  bool hasDriverLicense = true; // or false
  String name = "Matsui Ayato";
  Sex sex = Sex.male;
  List<String> fruits = ["apple", "orange", "lemon"];
  Map<String, dynamic> profile = {
    "name": name,
    "weight": weight,
    "age": age,
    "sex": sex,
    "has-driver-license": hasDriverLicense
  };

  print(fruits);
  print(fruits[0]);

  print(profile);
  print("${profile["name"]}'s weight is ${profile["weight"]}kg");
}