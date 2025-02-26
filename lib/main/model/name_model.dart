// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class nameModel {
  String name;
  String alamat;
  Color color;
  nameModel({
    required this.name,
    required this.alamat,
    required this.color,
  });



  nameModel copyWith({
    String? name,
    String? alamat,
    Color? color,
  }) {
    return nameModel(
      name: name ?? this.name,
      alamat: alamat ?? this.alamat,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'alamat': alamat,
      'color': color.value,
    };
  }

  factory nameModel.fromMap(Map<String, dynamic> map) {
    return nameModel(
      name: map['name'] as String,
      alamat: map['alamat'] as String,
      color: Color(map['color'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory nameModel.fromJson(String source) => nameModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'nameModel(name: $name, alamat: $alamat, color: $color)';

  @override
  bool operator ==(covariant nameModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.alamat == alamat &&
      other.color == color;
  }

  @override
  int get hashCode => name.hashCode ^ alamat.hashCode ^ color.hashCode;
}
