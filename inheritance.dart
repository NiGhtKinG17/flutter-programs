class Music {
  void music() {
    print("Music is pleasant for mind");
  }
}

class Guitar extends Music {
  void string() {
    print("Guitar is a string instrument which produces music");
  }
}

class ElectricGuitar extends Guitar {
  void electric() {
    print("Electric guitar produces electric music");
  }
}

void main() {
  ElectricGuitar e = new ElectricGuitar();
  e.music();
  e.string();
  e.electric();
}
