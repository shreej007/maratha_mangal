class PhysicalAttribute {
  String? height;
  String? weight;
  String? bloodGroup;
  String? complexion;
  bool? physicalDisabilities;
  String? disabilityDetails;
  String? diet;
  bool? spects;
  bool? lens;
  String? smoke;
  String? drink;
  String? personality;

  PhysicalAttribute({
    this.height,
    this.weight,
    this.bloodGroup,
    this.complexion,
    this.physicalDisabilities,
    this.disabilityDetails,
    this.diet,
    this.spects,
    this.lens,
    this.smoke,
    this.drink,
    this.personality,
  });

  factory PhysicalAttribute.fromJson(Map<String, dynamic> json) {
    return PhysicalAttribute(
      height: json['height'],
      weight: json['weight'],
      bloodGroup: json['bloodGroup'],
      complexion: json['complexion'],
      physicalDisabilities: json['physicalDisabilities'],
      disabilityDetails: json['disabilityDetails'],
      diet: json['diet'],
      spects: json['spects'],
      lens: json['lens'],
      smoke: json['smoke'],
      drink: json['drink'],
      personality: json['personality'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'height': height,
      'weight': weight,
      'bloodGroup': bloodGroup,
      'complexion': complexion,
      'physicalDisabilities': physicalDisabilities,
      'disabilityDetails': disabilityDetails,
      'diet': diet,
      'spects': spects,
      'lens': lens,
      'smoke': smoke,
      'drink': drink,
      'personality': personality,
    };
  }
}
