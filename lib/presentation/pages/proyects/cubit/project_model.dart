import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:go_router/go_router.dart';

class Project extends Equatable {
  final String? name;
  final String? description;
  final String? asset;
  final GoRouteData? route;
  const Project({
    this.name,
    this.description,
    this.asset,
    this.route,
  });

  Project copyWith({
    String? name,
    String? description,
    String? asset,
    GoRouteData? route,
  }) {
    return Project(
      name: name ?? this.name,
      description: description ?? this.description,
      asset: asset ?? this.asset,
      route: route ?? this.route,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'asset': asset,
      'route': route,
    };
  }

  factory Project.fromMap(Map<String, dynamic>? map) {
    if (map == null) return const Project();

    return Project(
      name: map['name'] as String,
      description: map['description'] as String,
      asset: map['asset'] as String?,
      route: map['route'] as GoRouteData?,
    );
  }

  String toJson() => json.encode(toMap());

  factory Project.fromJson(String source) =>
      Project.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [name, description, asset, route];
}
