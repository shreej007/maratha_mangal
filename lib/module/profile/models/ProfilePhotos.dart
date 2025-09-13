class ProfilePhotos {
  String? firstPhoto;
  String? secondPhoto;

  ProfilePhotos({
    this.firstPhoto,
    this.secondPhoto,
  });

  factory ProfilePhotos.fromJson(Map<String, dynamic> json) {
    return ProfilePhotos(
      firstPhoto: json['firstPhoto'],
      secondPhoto: json['secondPhoto'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstPhoto': firstPhoto,
      'secondPhoto': secondPhoto,
    };
  }
}
