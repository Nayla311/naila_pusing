// lib/models/service.dart
abstract class Service {
  String _title;
  String _description;
  String _price;
  final String _category;
  final String _duration;
  final String _icon;

  Service(
    this._title,
    this._description,
    this._price,
    this._category,
    this._duration,
    this._icon,
  );

  // Getters
  String get title => _title;
  String get description => _description;
  String get price => _price;
  String get category => _category;
  String get duration => _duration;
  String get icon => _icon;

  // Setters
  set title(String value) => _title = value;
  set description(String value) => _description = value;
  set price(String value) => _price = value;

  // Abstract methods
  String displayInfo();
  String getServiceType();
  List<String> getServiceFeatures();
}
