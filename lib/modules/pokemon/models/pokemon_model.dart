import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'package:pokemons_io/modules/pokemon/models/pokemon_stats_model.dart';

class PokemonModel {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> types;
  final double weight;
  final double height;
  final List<String> moves;
  final String description;

  final PokemonStatsModel stats;
  PokemonModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
    required this.weight,
    required this.height,
    required this.moves,
    required this.description,
    required this.stats,
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
    PokemonStatsModel? stats,
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
      stats: stats ?? this.stats,
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
      'stats': stats.toMap(),
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
      stats: PokemonStatsModel.fromMap(map['stats']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonModel.fromJson(String source) =>
      PokemonModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PokemonModel(id: $id, name: $name, imageUrl: $imageUrl, types: $types, weight: $weight, height: $height, moves: $moves, description: $description, stats: $stats)';
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
        other.stats == stats;
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
        stats.hashCode;
  }
}
