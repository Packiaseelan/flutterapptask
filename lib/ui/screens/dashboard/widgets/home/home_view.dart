import 'package:flutter/material.dart';
import 'package:flutterapp/config/app_theme.dart';
import 'package:flutterapp/data/mock_data.dart';
import 'package:flutterapp/data/models/hash_tag.dart';
import 'package:flutterapp/data/models/post.dart';
import 'package:flutterapp/res/app_strings.dart';
import 'package:flutterapp/ui/widgets/hash_tag_chip_widget.dart';
import 'package:flutterapp/ui/widgets/post_tile_widget.dart';
import 'package:flutterapp/ui/widgets/sub_title_widget.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<HashTagModel> selectedHashTags = [];
  List<HashTagModel> availableHashTags = [];

  List<PostModel> yrPost = [];
  List<PostModel> smlrPost = [];

  @override
  void initState() {
    super.initState();
    selectedHashTags = hashtags.where((e) => e.isMandatory).toList();
    availableHashTags = hashtags.where((e) => !e.isMandatory).toList();
    _updateList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildSearchArea(),
          _buildAvailableHashTags(),
          _buildYourPost(),
          _buildSimilarPost(),
        ],
      ),
    );
  }

  Widget _buildSearchArea() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: AppTheme.searchBorderColor),
        ),
        width: double.infinity,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: selectedHashTags.length,
            itemBuilder: (context, index) {
              return HashTagChipWidget(
                text: selectedHashTags[index].title,
                isCloseVisible: !selectedHashTags[index].isMandatory,
                onClose: () {
                  setState(() {
                    var tag = selectedHashTags[index];
                    selectedHashTags.removeAt(index);
                    availableHashTags.add(tag);
                    _updateList();
                  });
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildAvailableHashTags() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      child: Container(
        width: double.infinity,
        height: 60,
        child: Row(
          children: [
            Text(
              '${AppStrings.hashtags}:',
              style: Theme.of(context).textTheme.headline3,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: availableHashTags.length,
                itemBuilder: (context, index) {
                  return HashTagChipWidget(
                    text: availableHashTags[index].title,
                    isCloseVisible: false,
                    onTap: () {
                      setState(() {
                        var tag = availableHashTags[index];
                        availableHashTags.removeAt(index);
                        selectedHashTags.add(tag);
                        _updateList();
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildYourPost() {
    return Container(
      width: double.infinity,
      height: 240,
      child: Column(
        children: [
          SubTitleWidget(title: AppStrings.yourPosts),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: yrPost.length,
                itemBuilder: (context, index) {
                  return PostTileWidget(
                    post: yrPost[index],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSimilarPost() {
    return Column(
      children: [
        SubTitleWidget(
          title: AppStrings.similarPosts,
          subTitle: smlrPost.length.toString(),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: smlrPost.length,
            itemBuilder: (context, index) {
              return PostTileWidget(
                post: smlrPost[index],
              );
            },
          ),
        )
      ],
    );
  }

  void _updateList() {
    yrPost = [];
    smlrPost = [];
    yourPosts.forEach((element) {
      if (selectedHashTags.any((e) => e.id == element.hastTagId)) {
        yrPost.add(element);
      }
    });
    similarPosts.forEach((element) {
      if (selectedHashTags.any((e) => e.id == element.hastTagId)) {
        smlrPost.add(element);
      }
    });
  }
}
