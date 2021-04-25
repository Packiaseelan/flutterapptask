import 'package:flutter/material.dart';
import 'package:flutterapp/config/app_theme.dart';
import 'package:flutterapp/data/models/post.dart';
import 'package:intl/intl.dart';

class PostTileWidget extends StatelessWidget {
  final PostModel post;

  const PostTileWidget({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.43,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppTheme.chipColor,
        ),
        child: Stack(
          children: [
            _buildImage(context),
            _buildPostType(post.postType),
            _buildDate(post.postedDate, context)
          ],
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            image: DecorationImage(
              image: AssetImage(post.imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCount(Icons.favorite, post.likesCount, context),
            SizedBox(width: 10),
            _buildCount(Icons.message, post.commentsCount, context),
          ],
        ),
        Spacer()
      ],
    );
  }

  Widget _buildCount(IconData icon, int count, BuildContext context) {
    var value = NumberFormat.compact().format(count);
    return Row(
      children: [
        Icon(icon),
        Text(
          value,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }

  Widget _buildPostType(String type) {
    return Positioned(
      top: 5,
      right: 5,
      child: CircleAvatar(
        backgroundColor: AppTheme.yellow,
        child: Icon(
          type == 'image' ? Icons.image : Icons.play_circle_fill,
          color: AppTheme.black,
        ),
      ),
    );
  }

  Widget _buildDate(DateTime date, BuildContext context) {
    final f = new DateFormat('dd MMM');
    var dat = f.format(date);
    return Positioned(
      top: 3,
      left: 3,
      child: Row(
        children: [
          Icon(
            Icons.schedule,
            color: AppTheme.white,
            size: 20,
          ),
          Text(
            '$dat',
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: AppTheme.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
