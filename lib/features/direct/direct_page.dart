import 'package:flutter/material.dart';
import 'package:instagramflutter/data/bloc/auth_bloc.dart';
import 'package:instagramflutter/data/bloc/chat_bloc.dart';
import 'package:provider/provider.dart';

import 'direct_item_widget.dart';

class DirectPage extends StatefulWidget {
  static const ROUTE_NAME = 'DirectPage';
  @override
  _DirectPageState createState() => _DirectPageState();
}

class _DirectPageState extends State<DirectPage> {
  static const TAG = 'DirectPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.watch<AuthBloc>().user!.asValue!.value!.username),
        actions: [
          IconButton(
            icon: Icon(Icons.video_call),
            onPressed: (){},),
            SizedBox(width: 5,),
           IconButton(onPressed: (){}, icon: Icon(Icons.edit))
        ],

      ),
      body: Consumer<ChatBloc>(
          builder: (context, chatBloc, child) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return DirectItemWidget(chatBloc.conversation[index]);
              },
              itemCount: chatBloc.conversation.length,
            );
          }
      ),
    );
  }
}
