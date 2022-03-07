class EventAPIModel{
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

  var _category;

  get category => _category;

  set category(category) {
    _category = category;
  }

  EventAPIModel(
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
      this._category);

}