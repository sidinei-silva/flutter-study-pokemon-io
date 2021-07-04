import 'dart:convert';

import 'package:flutter/foundation.dart';

class CardPokemonModel {
  int id;
  String name;
  List<String> types;
  String imageUrl;

  CardPokemonModel({
    required this.id,
    required this.name,
    required this.types,
    required this.imageUrl,
  });

  CardPokemonModel copyWith({
    int? id,
    String? name,
    List<String>? types,
    String? imageUrl,
  }) {
    return CardPokemonModel(
      id: id ?? this.id,
      name: name ?? this.name,
      types: types ?? this.types,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'types': types,
      'imageUrl': imageUrl,
    };
  }

  factory CardPokemonModel.fromMap(Map<String, dynamic> map) {
    return CardPokemonModel(
      id: map['id'],
      name: map['name'],
      types: List<String>.from(map['types']),
      imageUrl: map['imageUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CardPokemonModel.fromJson(String source) =>
      CardPokemonModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CardPokemonModel(id: $id, name: $name, types: $types, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CardPokemonModel &&
        other.id == id &&
        other.name == name &&
        listEquals(other.types, types) &&
        other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ types.hashCode ^ imageUrl.hashCode;
  }
}
