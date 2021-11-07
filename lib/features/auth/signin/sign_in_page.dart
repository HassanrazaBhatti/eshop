import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramflutter/features/bottom_nav/bottom_nav_page.dart';

class SignInPage extends StatefulWidget {
  static const ROUTE_NAME = 'SignInPage';
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  static const TAG = 'SignInPage';
  ResultFuture<bool>? singingFuture;
  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return Scaffold(
      body: IgnorePointer(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              children: [
                Flexible(
                  child: Container(),
                  flex: 1,
                ),
                Text(
                  "E_Shop",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Flexible(
                  child: Container(),
                  flex: 1,
                ),
                Text(
                  'Sign in and use more feature',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: 64,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'email or username',
                    border: inputBorder,
                    focusedBorder: inputBorder,
                    enabledBorder: inputBorder,
                    filled: true,
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'password',
                      border: inputBorder,
                      focusedBorder: inputBorder,
                      enabledBorder: inputBorder,
                      filled: true,
                      contentPadding: EdgeInsets.all(8)),
                  obscureText: true,
                ),
                SizedBox(
                  height: 24,
                ),
                InkWell(
                    child: Container(
                      child:
                          (singingFuture == null || singingFuture!.isComplete)
                              ? Text(
                                  'Sign in',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(color: Colors.white),
                                )
                              : CupertinoActivityIndicator(),
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          gradient: LinearGradient(colors: [
                            Color(0xFF405de6),
                            Color(0xFF833ab4),
                            Color(0xFFe1306c),
                          ])),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RandomScreen()),
                      );
                    }),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Forgot for login details? get help signing in',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 10),
                ),
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                GestureDetector(
                  onTap: () {
                    //                    Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => SignUpPage()),
                    // );
                  },
                  child: Container(
                    child: Text(
                      'Don\'t have an account? sign up',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ],
            ),
          ),
        ),
        ignoring: singingFuture != null && !singingFuture!.isComplete,
      ),
    );
  }
}

// class SignUpPage extends StatefulWidget {
//   @override
//   SignUpPageState createState() => SignUpPageState();
// }

// class SignUpPageState extends State<SignUpPage> {

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'E_Shop',
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.grey,
//           elevation: 0,
//           // give the app bar rounded corners
//           leading: Icon(
//             Icons.menu,
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             children: <Widget>[
//               // construct the profile details widget here
//               SizedBox(
//                 height: 180,
//                 child: Center(
//                   child: Icon(Icons.person,size: 150,),

//                 ),
//               ),

//               // the tab bar with two items
//               SizedBox(
//                 height: 50,
//                 child: AppBar(
//                   bottom: TabBar(
//                     indicatorColor: Colors.black,
//                     tabs: [
//                       Tab(
//                         text: "PHONE",
//                       ),
//                       Tab(
//                        text: "EMAIL",
//                         ),

//                     ],
//                   ),
//                 ),
//               ),

//               // create widgets for each tab bar here
//               Expanded(
//                 child: TabBarView(
//                   children: [
//                     // first tab bar view widget
//                     TextFormField(
//                   decoration: InputDecoration(
//                       hintText: 'password',
//                       focusedBorder: inputBorder,
//                       filled: true,
//                       contentPadding: EdgeInsets.all(8)),
//                   obscureText: true,
//                 ),
//   TextFormField(
//                   decoration: InputDecoration(
//                       hintText: 'password',

//                       filled: true,
//                       contentPadding: EdgeInsets.all(8)),
//                   obscureText: true,
//                 ),
//                     // second tab bar viiew widget

//                   ],
//                 ),
//               ),

//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
