import 'dart:convert';


Client clientFromJson(String str){
  final jsonData =json.decode(str);
  return Client.fromMap(jsonData);
}

String clientToJson(Client data){
    final dyn = data.toMap();
    return json.encode(dyn);
}

class Client {
  int id;
  String name;
  String imagePath;
  bool littleInfo;
  String hugeInfo;

  Client({
    this.id,
    this.name,
    this.imagePath,
    this.littleInfo,
    this.hugeInfo
});

  factory Client.fromMap(Map<String, dynamic> json) => Client(
    id: json["id"],
    name: json["first_name"],
    imagePath: json["last_name"],
    littleInfo: json["blocked"] == 1,
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "image_path": imagePath,
    "little_info": littleInfo,
    "huge_info": hugeInfo
  };
}
