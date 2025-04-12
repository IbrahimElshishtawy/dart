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
  String? haircolor;

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
    String? haircolor,
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
  // override the method eat in the class animal
  //this is the method that override the method in the class animal
  @override
  int numberoflibs = 6;
  void eat() {
    print("dog eating");
  }

  void bark() {
    print("barking");
  }
}

class cat extends animal {
  cat(super.name);

  void eat() {
    print("cat eating");
  }

  void meow() {
    print("meowing");
  }
}

class tiger extends animal {
  tiger(super.name);
  void eat() {
    print("tiger eating");
  }

  void roar() {
    print("roaring");
  }
}

class lion extends animal {
  lion(super.name);

  void eat() {
    print("lion eating");
  }

  void roar() {
    print("roaring");
  }
}

// learn super constructor in dart
class FootballPlayer extends human {
  int? speed;
  int? numberofgoals;

  FootballPlayer({
    this.speed,
    this.numberofgoals,
    String? name,
    String? haircolor,
  }) : super(haircolor: haircolor, name: name) {
    //this is the constructor of the class FootballPlayer
    //this.haircolor = haircolor;
    //this.name = name;
    {
      this.haircolor = haircolor;
      this.name = name;
      print("this is the constructor of the class FootballPlayer");
    }
  }
}

class student {
  int? id;
  bool? UptoNextLevel;

  student({this.id, this.UptoNextLevel}) {
    //this is the constructor of the class student
    print("this is the constructor of the class student");
  }
  student.faild(this.id) {
    UptoNextLevel = false;
    print("this is the constructor of the class student faild");
  }
}

@override
String toString() {
  return "this is the constructor of the class student";
}
