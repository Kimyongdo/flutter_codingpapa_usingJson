import 'package:json_annotation/json_annotation.dart';
import 'address.dart';
//여기 내용은 flutter공식홈페이지에 친절하게 나와있음. 
part 'user.g.dart'; //이거 추가. 클래스이름이 user여서 가능함. 

@JsonSerializable(explicitToJson: true) //explicitToJson을 써줘야 Json안에 Json을 받을 수 있음. 
class User {

  final String name;
  final int email;
  @JsonKey(name:'your_age')//json이름을 생성자에서 변경할떄 사용 
  final int age;
  final Address address;

  User(this.name, this.email, this.age,this.address);

  //factory, $이름도 맞춰주어야함.
  //다 만들고 나서 flutter pub run build_runner build을 terminal에서 해준다.  
  //flutter pub run build_runner build을 하면 알아서 만들어준다. 
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this); 
}