class UserModel {
  int id;
  String name;
  String email;
  String username;
  String profilePhotoUrl;
  String token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.username,
    this.profilePhotoUrl,
    this.token,
  });

  //Constructor apabila dia dari JSON
  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
  }

  //Function untuk mengubah UserModel menjadi JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': profilePhotoUrl,
      'token': token,
    };
  }
  
}
