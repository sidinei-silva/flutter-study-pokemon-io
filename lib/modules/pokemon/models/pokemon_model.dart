import 'dart:convert';

import 'package:collection/collection.dart';

class PokemonModel {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> types;
  final double weight;
  final double height;
  final List<String> moves;
  final String description;

  final double hp;
  final double atk;
  final double def;
  final double satk;
  final double sdef;
  final double spd;

  PokemonModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
    required this.weight,
    required this.height,
    required this.moves,
    required this.description,
    required this.hp,
    required this.atk,
    required this.def,
    required this.satk,
    required this.sdef,
    required this.spd,
  });

  PokemonModel copyWith({
    int? id,
    String? name,
    String? imageUrl,
    List<String>? types,
    double? weight,
    double? height,
    List<String>? moves,
    String? description,
    double? hp,
    double? atk,
    double? def,
    double? satk,
    double? sdef,
    double? spd,
  }) {
    return PokemonModel(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      types: types ?? this.types,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      moves: moves ?? this.moves,
      description: description ?? this.description,
      hp: hp ?? this.hp,
      atk: atk ?? this.atk,
      def: def ?? this.def,
      satk: satk ?? this.satk,
      sdef: sdef ?? this.sdef,
      spd: spd ?? this.spd,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'types': types,
      'weight': weight,
      'height': height,
      'moves': moves,
      'description': description,
      'hp': hp,
      'atk': atk,
      'def': def,
      'satk': satk,
      'sdef': sdef,
      'spd': spd,
    };
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      id: map['id'],
      name: map['name'],
      imageUrl: map['imageUrl'],
      types: List<String>.from(map['types']),
      weight: map['weight'],
      height: map['height'],
      moves: List<String>.from(map['moves']),
      description: map['description'],
      hp: map['hp'],
      atk: map['atk'],
      def: map['def'],
      satk: map['satk'],
      sdef: map['sdef'],
      spd: map['spd'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonModel.fromJson(String source) =>
      PokemonModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PokemonModel(id: $id, name: $name, imageUrl: $imageUrl, types: $types, weight: $weight, height: $height, moves: $moves, description: $description, hp: $hp, atk: $atk, def: $def, satk: $satk, sdef: $sdef, spd: $spd)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is PokemonModel &&
        other.id == id &&
        other.name == name &&
        other.imageUrl == imageUrl &&
        listEquals(other.types, types) &&
        other.weight == weight &&
        other.height == height &&
        listEquals(other.moves, moves) &&
        other.description == description &&
        other.hp == hp &&
        other.atk == atk &&
        other.def == def &&
        other.satk == satk &&
        other.sdef == sdef &&
        other.spd == spd;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        imageUrl.hashCode ^
        types.hashCode ^
        weight.hashCode ^
        height.hashCode ^
        moves.hashCode ^
        description.hashCode ^
        hp.hashCode ^
        atk.hashCode ^
        def.hashCode ^
        satk.hashCode ^
        sdef.hashCode ^
        spd.hashCode;
  }
}
