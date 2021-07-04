import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

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
  final double attack;
  final double defense;
  final double specialAttack;
  final double specialDefense;
  final double speed;

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
    required this.attack,
    required this.defense,
    required this.specialAttack,
    required this.specialDefense,
    required this.speed,
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
    double? attack,
    double? defense,
    double? specialAttack,
    double? specialDefense,
    double? speed,
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
      attack: attack ?? this.attack,
      defense: defense ?? this.defense,
      specialAttack: specialAttack ?? this.specialAttack,
      specialDefense: specialDefense ?? this.specialDefense,
      speed: speed ?? this.speed,
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
      'attack': attack,
      'defense': defense,
      'specialAttack': specialAttack,
      'specialDefense': specialDefense,
      'speed': speed,
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
      attack: map['attack'],
      defense: map['defense'],
      specialAttack: map['specialAttack'],
      specialDefense: map['specialDefense'],
      speed: map['speed'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonModel.fromJson(String source) =>
      PokemonModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PokemonModel(id: $id, name: $name, imageUrl: $imageUrl, types: $types, weight: $weight, height: $height, moves: $moves, description: $description, hp: $hp, attack: $attack, defense: $defense, specialAttack: $specialAttack, specialDefense: $specialDefense, speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

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
        other.attack == attack &&
        other.defense == defense &&
        other.specialAttack == specialAttack &&
        other.specialDefense == specialDefense &&
        other.speed == speed;
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
        attack.hashCode ^
        defense.hashCode ^
        specialAttack.hashCode ^
        specialDefense.hashCode ^
        speed.hashCode;
  }
}
