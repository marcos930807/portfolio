import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';

class Project extends Equatable {
  final String? name;
  final String? description;
  final String? asset;
  final PageRouteInfo? route;
  Project({
    this.name,
    this.description,
    this.asset,
    this.route,
  });

  Project copyWith({
    String? name,
    String? description,
    String? asset,
    String? route,
  }) {
    return Project(
      name: name ?? this.name,
      description: description ?? this.description,
      asset: asset ?? this.asset,
      route: route as PageRouteInfo<dynamic>? ?? this.route,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'asset': asset,
      'route': route,
    };
  }

  factory Project.fromMap(Map<String, dynamic>? map) {
    if (map == null) return Project();

    return Project(
      name: map['name'],
      description: map['description'],
      asset: map['asset'],
      route: map['route'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Project.fromJson(String source) => Project.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name, description, asset, route];
}
