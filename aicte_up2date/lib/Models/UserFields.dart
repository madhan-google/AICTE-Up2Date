class UserFields{
  var _name;

  get name => _name;

  set name(name) {
    _name = name;
  }
  var _mail;

  get mail => _mail;

  set mail(mail) {
    _mail = mail;
  }
  var _dob;

  get dob => _dob;

  set dob(dob) {
    _dob = dob;
  }
  var _age;

  get age => _age;

  set age(age) {
    _age = age;
  }
  var _gender;

  get gender => _gender;

  set gender(gender) {
    _gender = gender;
  }
  var _collegeName;

  get collegeName => _collegeName;

  set collegeName(collegeName) {
    _collegeName = collegeName;
  }
  var _dept;

  get dept => _dept;

  set dept(dept) {
    _dept = dept;
  }
  var _rollNumber;

  get rollNumber => _rollNumber;

  set rollNumber(rollNumber) {
    _rollNumber = rollNumber;
  }
  var _city;

  get city => _city;

  set city(city) {
    _city = city;
  }
  var _state;

  get state => _state;

  set state(state) {
    _state = state;
  }

  UserFields(this._name, this._mail, this._dob, this._age, this._gender,
      this._collegeName, this._dept, this._rollNumber, this._city, this._state);
}