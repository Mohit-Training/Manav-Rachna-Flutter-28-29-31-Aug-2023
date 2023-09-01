class Employee {
  late int id;
  late String name;
  late double _salary; //private

  Employee(this.id, this.name, this._salary);

  //Setter
  set salary(double salary) => _salary = salary;

  //Getter
  double get salary => _salary;

  // Named constructor
  Employee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    salary = json['salary'];
  }

  // Method
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'salary': _salary};
}
