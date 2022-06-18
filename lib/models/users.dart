import 'dart:convert';

class Users {
  final String id;
  final String name;
  final String username;
  final String password;
  final String address;
  final String type;
  final String token;

  Users({
    required this.id,
    required this.name,
    required this.username,
    required this.password,
    required this.address,
    required this.type,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'password': password,
      'address': address,
      'type': type,
      'token': token,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      id: map['_id'] ?? '',
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      password: map['password'] ?? '',
      address: map['address'] ?? '',
      type: map['type'] ?? '',
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Users.fromJson(String source) => Users.fromMap(json.decode(source));

  Users copyWith({
    String? id,
    String? name,
    String? username,
    String? password,
    String? address,
    String? type,
    String? token,
  }) {
    return Users(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      password: password ?? this.password,
      address: address ?? this.address,
      type: type ?? this.type,
      token: token ?? this.token,
    );
  }
}
