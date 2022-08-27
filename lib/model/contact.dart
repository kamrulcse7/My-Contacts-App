class Contact {
  int? id;
  String? name;
  String? phone;
  String? email;
  Contact({
    this.id,
    required this.name,
    required this.phone,
    required this.email,
  });

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
      );
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'phone': phone,
        'email': email,
      };
}
