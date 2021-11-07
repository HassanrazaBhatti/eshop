import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagramflutter/features/direct/direct_page.dart';
import 'package:instagramflutter/res/icons_app.dart';
import 'package:instagramflutter/widgets/feed/feed_widget.dart';
import 'package:instagramflutter/widgets/story/home_story_widget.dart';

class HomePage extends StatefulWidget {
  static const ROUTE_NAME = 'HomePage';

  final VoidCallback onCameraClick;

  HomePage(this.onCameraClick);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TAG = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(icon: SvgPicture.asset(IconsApp.icCamera,
                color: Theme.of(context).colorScheme.onPrimary,), onPressed: (){}),
        title: Text("E_Shop"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    CupertinoPageRoute(builder: (context) => DirectPage()));
              },
              icon: Icon(Icons.message))
        ],
      ),
      body: RefreshIndicator(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[HomeStoryWidget(), FeedWidget(), FeedWidget()],
            ),
          ),
          onRefresh: () async {}),
    );
  }
}
