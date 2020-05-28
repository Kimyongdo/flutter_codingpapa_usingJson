import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable() //라이브러리 추가후 사용
class Address {
  
  final String street;
  final String city;

  Address(this.street, this.city);

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this); 
}