import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:instagramflutter/features/direct/direct_page.dart';
import 'package:instagramflutter/res/icons_app.dart';

class HeaderWidget extends StatelessWidget with PreferredSizeWidget {
  final VoidCallback onCameraClick;

  HeaderWidget(this.onCameraClick);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      elevation: 2,
      child: SafeArea(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: SvgPicture.asset(IconsApp.icCamera,
                color: Theme.of(context).colorScheme.onPrimary,), onPressed: onCameraClick),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Expanded(child: Container(
                  child: Text("E_Shop"),
                )),
              ),
              IconButton(icon: Icon(Icons.message,
                color: Theme.of(context).colorScheme.onPrimary,), onPressed: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => DirectPage()));
              })
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(48);
}
