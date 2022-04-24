class SmartPhone {
  //Overridden method
  void phone() {
    print("Smartphones are small and very convenient to carry");
  }
}

class Android extends SmartPhone {
  //Overriding method
  void phone() {
    print("Android smartphones are easy and comfortable to use");
  }
}

void main() {
  Android a = new Android();
  //Overriding method in child will be implemented instead of overridden method from parent
  a.phone();
}
