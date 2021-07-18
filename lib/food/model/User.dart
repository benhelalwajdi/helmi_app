class User{
  var name ;
  var email ;
  var id ;
  var profile_photo_url ;
  var token ;
  User({
    this.id,
    this.name,
    this.email,
    this.profile_photo_url,
    this.token
  });

  factory User.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['user']['id']);
    return User(
      id: parsedJson['user']['id'],
      name: parsedJson['user']['name'],
      email: parsedJson['user']['email'],
      profile_photo_url: parsedJson['user']['profile_photo_url'],
      token: parsedJson['token']
    );
  }
}