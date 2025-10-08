import 'package:naila_pusing/models/service.dart';

class HairStylingService extends Service {
  final bool _includesWash;
  final List<String> _stylingOptions;

  HairStylingService(
    String title,
    String description,
    String price,
    String duration,
    this._includesWash,
    this._stylingOptions,
  ) : super(title, description, price, 'Hair Styling', duration, '✂️');

  bool get includesWash => _includesWash;
  List<String> get stylingOptions => _stylingOptions;

  @override
  String displayInfo() {
    return "✂️ Hair Styling: $title → $price";
  }

  @override
  String getServiceType() {
    return "Professional Hair Styling Service";
  }

  @override
  List<String> getServiceFeatures() {
    return [
      "Professional hair consultation",
      "Premium hair products",
      "Expert styling techniques",
      if (_includesWash) "Hair wash and conditioning",
      "Styling advice and maintenance tips",
    ];
  }

  // Static method to get all hair styling services
  static List<HairStylingService> getAllHairStylingServices() {
    return [
      HairStylingService(
        "Hair Coloring",
        "Professional hair color transformation",
        "Rp 400.000",
        "4 hours",
        true,
        ["Full Color", "Highlights", "Balayage"],
      ),
      HairStylingService(
        "Hair Cut & Style",
        "Expert haircut with styling",
        "Rp 250.000",
        "2 hours",
        true,
        ["Cut", "Blow Dry", "Styling"],
      ),
      HairStylingService(
        "Hair Treatment",
        "Deep conditioning and repair treatment",
        "Rp 300.000",
        "2.5 hours",
        true,
        ["Deep Conditioning", "Protein Treatment", "Keratin"],
      ),
    ];
  }
}
