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

  var _userId;

  get userId => _userId;

  set userId(userId) {
    _userId = userId;
  }

  var _phNoText;

  get phNoText => _phNoText;

  set phNoText(phNoText) {
    _phNoText = phNoText;
  }

  var _userType;

  get userType => _userType;

  set userType(userType) {
    _userType = userType;
  }

  UserFields(
      this._name,
      this._mail,
      this._dob,
      this._age,
      this._gender,
      this._collegeName,
      this._dept,
      this._rollNumber,
      this._city,
      this._state,
      this._phNoText,
      this._userType,
      this._userId);
  Map<String, dynamic> toJson(UserFields json){
    return {
      'name': json.name,
      'dob': json.dob,
      'phno': json.phNoText,
      'age': json.age,
      'gender':json.gender,
      'college': json.collegeName,
      'dept': json.dept,
      'usertype': json.userType,
      'rollno': json.rollNumber,
      'mailid': json.mail,
      'city': json.city,
      'state': json.state,
      'userid': json.userId
    };
  }

  UserFields fromJson(Map<String, dynamic> json){
    return UserFields(
        json['name'],
        json['mailid'],
        json['dob'],
        json['age'],
        json['gender'],
        json['college'],
        json['dept'],
        json['rollno'],
        json['city'],
        json['state'],
        json['phno'],
        json['usertype'],
        json['userid']);
  }

}