// OOP.dart

class human {
  //under score _numberofarm = 2;
  //this is private variable
  // ignore: unused_field
  int? _numberofarm = 2;
  int? _numberoflegs = 2;
  String? name;
  String? email;
  String? phone;
  double? height;
  double? weight;

  set numberofarm(int numberofarm) {
    // setter use to set the value of privte variable
    if (numberofarm <= 2 && numberofarm >= 0) {
      //if the number of arm is less than 2 or greater than 0
      this._numberofarm = numberofarm;
    } else {
      Exception exception1 = Exception("number of arm is not valid");
      throw exception1;
    }
  }

  set numberoflegs(int numberoflegs) {
    // setter use to set the value of privte variable
    if (numberoflegs <= 2 && numberoflegs >= 0) {
      //if the number of legs is less than 2 or greater than 0
      this._numberoflegs = numberoflegs;
    } else {
      Exception exception = Exception("number of legs is not valid");
      throw exception;
    }
  }

  int get numberofarm {
    // getter use to get the value of private variable
    return this._numberofarm!;
  }

  int get numberoflegs {
    // getter use to get the value of private variable
    return this._numberoflegs!;
  }

  /*
  //create the method number of arm input the value of arm
  void setnumberodarm(int numberofarm) {
    if (numberofarm <= 2 && numberofarm >= 0) {
      //if the number of arm is less than 2 or greater than 0
      this._numberofarm = numberofarm;
    }
  }
  //create the method number of arm input the value of legs
  void setnumberoflegs(int numberoflegs) {
    if (numberoflegs <= 2 && numberoflegs >= 0) {
      //if the number of legs is less than 2 or greater than 0
      this._numberoflegs = numberoflegs;
    }
  }
  //create the method number of arm output the value of arm
  int getnumberofarm() {
    return this._numberofarm!;
  }
  //create the method number of legs output the value of legs
  int getnumberoflegs() {
    return this._numberoflegs!;
  }
  */
  //create the constructor of the class human
  human({
    String? name,
    String? email,
    String? phone,
    double? height,
    double? weight,
    int numberofarm = 2,
    //this is the default value of the number of arm
    int numberoflegs = 2,
  }) {
    this.name = name;
    this.email = email;
    this.phone = phone;
    this.height = height;
    this.weight = weight;
    this._numberofarm = numberofarm;
    this._numberoflegs = numberoflegs;
  }

  void walk() {
    print("the human is walking");
  }
}

class animal {
  int numberoflibs = 4;
  String? name;

  animal(String? name) {
    this.name = name;
  }

  void eat() {
    print("eating");
  }
}

//this is the class dog that extends the class animal
//this extends the class animal
class dog extends animal {
  dog(super.name);
  @override
  void eat() {
    print("dog eating");
  }

  void bark() {
    print("barking");
  }
}

class cat extends animal {
  cat(super.name);

  void meow() {
    print("meowing");
  }
}

class tiger extends animal {
  tiger(super.name);
  void roar() {
    print("roaring");
  }
}

class lion extends animal {
  lion(super.name);

  void roar() {
    print("roaring");
  }
}
