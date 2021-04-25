import 'package:flutterapp/data/models/hash_tag.dart';
import 'package:flutterapp/data/models/post.dart';
import 'package:flutterapp/res/app_assets.dart';

var hashtags = [
  HashTagModel(id: 1, title: 'cheeselove', isMandatory: true),
  HashTagModel(id: 2, title: 'kofluence', isMandatory: true),
  HashTagModel(id: 3, title: 'food', isMandatory: false),
  HashTagModel(id: 4, title: 'kofluencer', isMandatory: false),
];

var yourPosts = [
  PostModel(
    id: 1,
    description: '',
    imagePath: AppAssets.post1,
    postType: 'image',
    postedDate: DateTime(2021, 1, 1),
    likesCount: 100,
    commentsCount: 100,
    hastTagId: 1
  ),
  PostModel(
    id: 2,
    description: '',
    imagePath: AppAssets.post2,
    postType: 'video',
    postedDate: DateTime(2021, 1, 1),
    likesCount: 100,
    commentsCount: 100,
    hastTagId: 2
  ),
  PostModel(
    id: 3,
    description: '',
    imagePath: AppAssets.post3,
    postType: 'image',
    postedDate: DateTime(2021, 1, 1),
    likesCount: 100,
    commentsCount: 100,
    hastTagId: 2
  ),
  PostModel(
    id: 4,
    description: '',
    imagePath: AppAssets.post3,
    postType: 'image',
    postedDate: DateTime(2021, 1, 1),
    likesCount: 100,
    commentsCount: 100,
    hastTagId: 1
  ),
];

var similarPosts = [
  PostModel(
    id: 1,
    description: '',
    imagePath: AppAssets.post1,
    postType: 'image',
    postedDate: DateTime(2021, 1, 1),
    likesCount: 1001234,
    commentsCount: 100,
    hastTagId: 4
  ),
  PostModel(
    id: 2,
    description: '',
    imagePath: AppAssets.post2,
    postType: 'video',
    postedDate: DateTime(2021, 1, 1),
    likesCount: 100,
    commentsCount: 100,
  ),
  PostModel(
    id: 3,
    description: '',
    imagePath: AppAssets.post3,
    postType: 'image',
    postedDate: DateTime(2021, 1, 1),
    likesCount: 100,
    commentsCount: 100,
  ),
  PostModel(
    id: 4,
    description: '',
    imagePath: AppAssets.post3,
    postType: 'image',
    postedDate: DateTime(2021, 1, 1),
    likesCount: 100,
    commentsCount: 100,
  ),
];
