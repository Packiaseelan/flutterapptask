class PostModel {
  final int id;
  final String description;
  final String imagePath;
  final String postType;
  final DateTime postedDate;
  final int likesCount;
  final int commentsCount;
  final int hastTagId;
  
  PostModel({
    this.id,
    this.description,
    this.imagePath,
    this.postType,
    this.postedDate,
    this.likesCount,
    this.commentsCount,
    this.hastTagId,
  });
}
