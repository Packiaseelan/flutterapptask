import 'package:flutterapp/data/entity/entity.dart';

class PostCommentEntity extends Entity<int> {
  final int postId;
  final int userId;
  final String comment;

  PostCommentEntity({
    int id,
    this.postId,
    this.userId,
    this.comment,
  }) : super(id);

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'postId': postId,
      'userId': userId,
      'comment': comment,
    };
  }

  @override
  List<Object> get props => [
        id,
        postId,
        userId,
        comment,
      ];
}
