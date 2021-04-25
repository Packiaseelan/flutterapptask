import 'package:flutterapp/data/entity/entity.dart';

class PostLikesEntity extends Entity<int> {
  final int postId;
  final int userId;

  PostLikesEntity({
    int id,
    this.postId,
    this.userId,
  }) : super(id);

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'postId': postId,
      'userId': userId,
    };
  }

  @override
  List<Object> get props => [
        id,
        postId,
        userId,
      ];
}
