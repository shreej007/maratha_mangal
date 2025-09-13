class HoroscopeDetails {
  String? rashi;
  String? nakshatra;
  int? charan;
  String? nadi;
  String? gan;
  String? magal;
  String? birthTime;
  String? birthDistrict;
  String? devak;

  HoroscopeDetails({
    this.rashi,
    this.nakshatra,
    this.charan,
    this.nadi,
    this.gan,
    this.magal,
    this.birthTime,
    this.birthDistrict,
    this.devak,
  });

  factory HoroscopeDetails.fromJson(Map<String, dynamic> json) {
    return HoroscopeDetails(
      rashi: json['rashi'],
      nakshatra: json['nakshatra'],
      charan: json['charan'],
      nadi: json['nadi'],
      gan: json['gan'],
      magal: json['magal'],
      birthTime: json['birthTime'],
      birthDistrict: json['birthDistrict'],
      devak: json['devak'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rashi': rashi,
      'nakshatra': nakshatra,
      'charan': charan,
      'nadi': nadi,
      'gan': gan,
      'magal': magal,
      'birthTime': birthTime,
      'birthDistrict': birthDistrict,
      'devak': devak,
    };
  }
}
