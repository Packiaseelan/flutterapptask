import 'package:flutterapp/data/entity/entity.dart';

class PostEntity extends Entity<int> {
  final int userId;
  final String description;
  final String type;
  final String imagePath;
  final int postedDate;

  PostEntity({
    int id,
    this.userId,
    this.description,
    this.type,
    this.imagePath,
    this.postedDate,
  }) : super(id);

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'description': description,
      'type': type,
      'imagePath': imagePath,
      'postedDate': postedDate,
    };
  }

  @override
  List<Object> get props => [
        id,
        userId,
        description,
        type,
        imagePath,
        postedDate,
      ];
}
