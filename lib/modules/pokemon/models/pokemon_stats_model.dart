import 'dart:convert';

class PokemonStatsModel {
  final double hp;
  final double attack;
  final double defense;
  final double specialAttack;
  final double specialDefense;
  final double speed;

  PokemonStatsModel({
    required this.hp,
    required this.attack,
    required this.defense,
    required this.specialAttack,
    required this.specialDefense,
    required this.speed,
  });

  PokemonStatsModel copyWith({
    double? hp,
    double? attack,
    double? defense,
    double? specialAttack,
    double? specialDefense,
    double? speed,
  }) {
    return PokemonStatsModel(
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
      'hp': hp,
      'attack': attack,
      'defense': defense,
      'specialAttack': specialAttack,
      'specialDefense': specialDefense,
      'speed': speed,
    };
  }

  factory PokemonStatsModel.fromMap(Map<String, dynamic> map) {
    return PokemonStatsModel(
      hp: map['hp'],
      attack: map['attack'],
      defense: map['defense'],
      specialAttack: map['specialAttack'],
      specialDefense: map['specialDefense'],
      speed: map['speed'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonStatsModel.fromJson(String source) =>
      PokemonStatsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PokemonStatsModel(hp: $hp, attack: $attack, defense: $defense, specialAttack: $specialAttack, specialDefense: $specialDefense, speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PokemonStatsModel &&
        other.hp == hp &&
        other.attack == attack &&
        other.defense == defense &&
        other.specialAttack == specialAttack &&
        other.specialDefense == specialDefense &&
        other.speed == speed;
  }

  @override
  int get hashCode {
    return hp.hashCode ^
        attack.hashCode ^
        defense.hashCode ^
        specialAttack.hashCode ^
        specialDefense.hashCode ^
        speed.hashCode;
  }
}
