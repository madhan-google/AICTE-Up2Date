class EventAPIModel{
  var _id;

  get id => _id;

  set id(id) {
    _id = id;
  }
   var _imageUrl;

  get imageUrl => _imageUrl;

  set imageUrl(imageUrl) {
    _imageUrl = imageUrl;
  }

  var _title;

  get title => _title;

  set title(title) {
    _title = title;
  }

  var _description;

  get description => _description;

  set description(description) {
    _description = description;
  }

  var _start_date;

  get start_date => _start_date;

  set start_date(start_date) {
    _start_date = start_date;
  }

  var _end_date;

  get end_date => _end_date;

  set end_date(end_date) {
    _end_date = end_date;
  }

  var _clg_name;

  get clg_name => _clg_name;

  set clg_name(clg_name) {
    _clg_name = clg_name;
  }

  var _location;

  get location => _location;

  set location(location) {
    _location = location;
  }

  var _venue;

  get venue => _venue;

  set venue(venue) {
    _venue = venue;
  }

  var _time;

  get time => _time;

  set time(time) {
    _time = time;
  }

  var _duration;

  get duration => _duration;

  set duration(duration) {
    _duration = duration;
  }

  var _google_form_link;

  get google_form_link => _google_form_link;

  set google_form_link(google_form_link) {
    _google_form_link = google_form_link;
  }

  var _coordinator_name;

  get coordinator_name => _coordinator_name;

  set coordinator_name(coordinator_name) {
    _coordinator_name = coordinator_name;
  }

  var _details;

  get details => _details;

  set details(details) {
    _details = details;
  }

  String _category;

  get category => _category;

  set category(category) {
    _category = category;
  }

  List<dynamic> _registers;

  List<dynamic> get registers => _registers;

  set registers(List<dynamic> registers) {
    _registers = registers;
  }


  EventAPIModel(
      this._id,
      this._imageUrl,
      this._title,
      this._description,
      this._start_date,
      this._end_date,
      this._clg_name,
      this._location,
      this._venue,
      this._time,
      this._duration,
      this._google_form_link,
      this._coordinator_name,
      this._details,
      this._category,
      this._registers);
  factory EventAPIModel.fromJson(Map<String, dynamic> json){
    return EventAPIModel(
        json['_id'],
        json['image_url'],
        json['title'],
        json['description'],
        json['start_date'],
        json['end_date'],
        json['clg_name'],
        json['location'],
        json['venue'],
        json['time'],
        json['duration'],
        json['google_form_link'],
        json['coordinator_name'],
        json['details'],
        json['category'],
        json['registers']
    );
  }
  Map<String, dynamic> toJson(EventAPIModel json){
    return {
      '_id':json._id,
      'image_url': json.imageUrl,
      'title': json.title,
      'description': json.description,
      'start_date': json.start_date,
      'end_date': json.end_date,
      'clg_name': json.clg_name,
      'location': json.location,
      'venue': json.venue,
      'time': json.time,
      'duration': json.duration,
      'google_form_link': json.google_form_link,
      'coordinator_name': json.coordinator_name,
      'details': json.details,
      'category': json.category,
      'registers':json.registers
    };
  }
}