import 'package:settings/components/CustomShowDialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Settings extends  StatefulWidget {
  @override
  SettingsState createState() => new SettingsState();
}

class SettingsState extends State<Settings> {
//class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          // here we display the title corresponding to the fragment
          // you can instead choose to have a static title
          title: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("Settings",
                style: TextStyle(color: Colors.white,fontFamily: "Raleway"),),

              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                child:new Text("",
                  style: TextStyle(color: Colors.white,fontFamily: "Raleway",fontSize: 14.0),)
                ,),


            ],),

          iconTheme: new IconThemeData(color: Colors.white),
        ),
        body:  new Scaffold(
          backgroundColor: Colors.white,
          body:SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 200.0,
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Padding(padding: EdgeInsets.only(left: 10.0, top: 10.0),
                    child:
                    new Text(
                      "General",
                      style: new TextStyle(
                          color: Theme
                              .of(context)
                              .primaryColor,
                          fontSize: 22.0,
                          fontFamily: "Proxima",
                          fontWeight: FontWeight.bold),
                    ),),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  "Account",
                                  textAlign: TextAlign.right,
                                  style: new TextStyle(
                                      color: const Color.fromRGBO(
                                          68, 68, 68, 1.0),
                                      fontSize: 18.0,
                                      fontFamily: "Circular"),
                                ),
                                SizedBox(height: 5.0,),
                                new Text("change all your account details.",
                                  style: new TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontFamily: "Circular"),),
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {
                            /*Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Terms.Terms()));*/
                            //Navigator.of(context).push(new AccountPageRoute.AccountPageRoute());
                          },
                        ),
                        width: double.infinity,
                      ),
//=========================================================
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  "Payments",
                                  textAlign: TextAlign.right,
                                  style: new TextStyle(
                                      color: const Color.fromRGBO(
                                          68, 68, 68, 1.0),
                                      fontSize: 18.0,
                                      fontFamily: "Circular"),
                                ),
                                SizedBox(height: 5.0,),
                                new Text(
                                  "add your payments methods and set the  default payment.",
                                  style: new TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontFamily: "Circular"),),
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {
                            /*Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new CardPayment.CardPayment()));*/
                            //Navigator.of(context).push(new CardPayment.CardPayment());
                            //print("on Click ");
                            //_showToast(context);
                          },
                        ),
                        width: double.infinity,
                      ),
//=========================================================
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  "Language",
                                  textAlign: TextAlign.right,
                                  style: new TextStyle(
                                      color: const Color.fromRGBO(
                                          68, 68, 68, 1.0),
                                      fontSize: 18.0,
                                      fontFamily: "Circular"),
                                ),
                                SizedBox(height: 5.0,),
                                new Text(
                                  "change the default language of the app from one of the supported languages.",
                                  style: new TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontFamily: "Circular"),),
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {
                            /*Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Terms.Terms()));*/
                            //Navigator.of(context).push(new Terms.TermsPageRoute());
                            //print("on Click ");
                            //_showToast(context);
                            _chooselanguage(context);
                          },
                        ),
                        width: double.infinity,
                      ),
//=========================================================
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  "Theme",
                                  textAlign: TextAlign.right,
                                  style: new TextStyle(
                                      color: const Color.fromRGBO(
                                          68, 68, 68, 1.0),
                                      fontSize: 18.0,
                                      fontFamily: "Circular"),
                                ),
                                SizedBox(height: 5.0,),
                                new Text(
                                  "you can change the main colors of the UI Design of the app.",
                                  style: new TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontFamily: "Circular"),),
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {
                            /*Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Terms.Terms()));*/
                            //Navigator.of(context).push(new Terms.TermsPageRoute());
                            //print("on Click ");
                            //_showToast(context);
                            _chooseTheme(context);
                          },
                        ),
                        width: double.infinity,
                      ),
//=========================================================
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  "Linked Accounts",
                                  textAlign: TextAlign.right,
                                  style: new TextStyle(
                                      color: const Color.fromRGBO(
                                          68, 68, 68, 1.0),
                                      fontSize: 18.0,
                                      fontFamily: "Circular"),
                                ),
                                SizedBox(height: 5.0,),
                                new Text(
                                  "add your social media accounts to verify your account.",
                                  style: new TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontFamily: "Circular"),),
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {
                            /*Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Terms.Terms()));*/
                            //Navigator.of(context).push(new Terms.TermsPageRoute());
                            print("on Click ");
                            _showToast(context);
                          },
                        ),
                        width: double.infinity,
                      ),
//=========================================================

                    ],
                  ),
                  new Padding(padding: EdgeInsets.only(left: 10.0, top: 10.0),
                    child:
                    new Text(
                      "Notification",
                      style: new TextStyle(
                          color: Theme
                              .of(context)
                              .primaryColor,
                          fontSize: 22.0,
                          fontFamily: "Proxima",
                          fontWeight: FontWeight.bold),
                    ),),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Row(
                              //crossAxisAlignment: CrossAxisAlignment.spaceBetween,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text(
                                      "Sound",
                                      textAlign: TextAlign.right,
                                      style: new TextStyle(
                                          color: const Color.fromRGBO(
                                              68, 68, 68, 1.0),
                                          fontSize: 18.0,
                                          fontFamily: "Circular"),
                                    ),
                                    SizedBox(height: 5.0,),
                                    new Text("Make a Sound Notification.",
                                      style: new TextStyle(
                                          color: Colors.black38,
                                          fontSize: 14.0,
                                          fontFamily: "Circular"),),
                                  ],
                                ),
                                new Flexible(
                                  child: defaultTargetPlatform ==
                                      TargetPlatform.iOS
                                      ? (new CupertinoSwitch(
                                    value: true,
                                    onChanged: (bool val) {
                                      //switch1 = val;
                                    },
                                    activeColor: Theme
                                        .of(context)
                                        .primaryColor,
                                  ))
                                      : (new Switch(
                                      activeColor: Theme
                                          .of(context)
                                          .primaryColor,
                                      value: true,
                                      onChanged: (bool val) {
                                        //switch1 = val;
                                      })),
                                ),
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {},
                        ),
                        width: double.infinity,
                      ),
//=========================================================
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Row(
                              //crossAxisAlignment: CrossAxisAlignment.spaceBetween,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text(
                                      "Offers",
                                      textAlign: TextAlign.right,
                                      style: new TextStyle(
                                          color: const Color.fromRGBO(
                                              68, 68, 68, 1.0),
                                          fontSize: 18.0,
                                          fontFamily: "Circular"),
                                    ),
                                    SizedBox(height: 5.0,),
                                    new Text(
                                      "Get notification about all new offers.",
                                      style: new TextStyle(
                                          color: Colors.black38,
                                          fontSize: 14.0,
                                          fontFamily: "Circular"),),
                                  ],
                                ),
                                new Flexible(
                                  child: defaultTargetPlatform ==
                                      TargetPlatform.iOS
                                      ? (new CupertinoSwitch(
                                    value: false,
                                    onChanged: (bool val) {
                                      //switch1 = val;
                                    },
                                    activeColor: Theme
                                        .of(context)
                                        .primaryColor,
                                  ))
                                      : (new Switch(
                                      activeColor: Theme
                                          .of(context)
                                          .primaryColor,
                                      value: false,
                                      onChanged: (bool val) {
                                        //switch1 = val;
                                      })),
                                ),
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {},
                        ),
                        width: double.infinity,
                      ),
//=========================================================
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Row(
                              //crossAxisAlignment: CrossAxisAlignment.spaceBetween,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    new Text(
                                      "Activity",
                                      textAlign: TextAlign.right,
                                      style: new TextStyle(
                                          color: const Color.fromRGBO(
                                              68, 68, 68, 1.0),
                                          fontSize: 18.0,
                                          fontFamily: "Circular"),
                                    ),
                                    SizedBox(height: 5.0,),
                                    new Text(
                                      "notification on Activity that involves you.",
                                      style: new TextStyle(
                                          color: Colors.black38,
                                          fontSize: 14.0,
                                          fontFamily: "Circular"),),
                                  ],
                                ),
                                new Flexible(
                                  child: defaultTargetPlatform ==
                                      TargetPlatform.iOS
                                      ? (new CupertinoSwitch(
                                    value: false,
                                    onChanged: (bool val) {
                                      //switch1 = val;
                                    },
                                    activeColor: Theme
                                        .of(context)
                                        .primaryColor,
                                  ))
                                      : (new Switch(
                                      activeColor: Theme
                                          .of(context)
                                          .primaryColor,
                                      value: false,
                                      onChanged: (bool val) {
                                        //switch1 = val;
                                      })),
                                ),
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {},
                        ),
                        width: double.infinity,
                      ),
//=========================================================
                    ],
                  ),

                  new Padding(padding: EdgeInsets.only(left: 10.0, top: 10.0),
                    child:
                    new Text(
                      "Advertisements",
                      style: new TextStyle(
                          color: Theme
                              .of(context)
                              .primaryColor,
                          fontSize: 22.0,
                          fontFamily: "Proxima",
                          fontWeight: FontWeight.bold),
                    ),),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  "Foodies Ad Partner Preferences",
                                  textAlign: TextAlign.right,
                                  style: new TextStyle(
                                      color: const Color.fromRGBO(
                                          68, 68, 68, 1.0),
                                      fontSize: 18.0,
                                      fontFamily: "Circular"),
                                ),
                                SizedBox(height: 5.0,),
                                new Text(
                                  "Control how advertising are targeted to me based on information gathered from advertising partner.",
                                  style: new TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontFamily: "Circular"),)
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {
                            /*Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Terms.Terms()));*/
                            //Navigator.of(context).push(new Terms.TermsPageRoute());
                            print("on Click ");
                            _showToast(context);
                          },
                        ),
                        width: double.infinity,
                      ),


                    ],
                  ),

                  new Padding(padding: EdgeInsets.only(left: 10.0, top: 10.0),
                    child:
                    new Text(
                      "Legal",
                      style: new TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 22.0,
                          fontFamily: "Proxima",
                          fontWeight: FontWeight.bold),
                    ),),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  "Copyright",
                                  textAlign: TextAlign.right,
                                  style: new TextStyle(
                                      color: const Color.fromRGBO(
                                          68, 68, 68, 1.0),
                                      fontSize: 18.0,
                                      fontFamily: "Circular"),
                                ),
                                SizedBox(height: 5.0,),
                                new Text(
                                  "there are a number of distinctive issues that arise with software.",
                                  style: new TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontFamily: "Circular"),),

                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {
                            /*Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Terms.Terms()));*/
                            //Navigator.of(context).push(new Terms.TermsPageRoute());
                            print("on Click ");
                            _showToast(context);
                          },
                        ),
                        width: double.infinity,
                      ),
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  "Terms & Conditions",
                                  textAlign: TextAlign.right,
                                  style: new TextStyle(
                                      color: const Color.fromRGBO(
                                          68, 68, 68, 1.0),
                                      fontSize: 18.0,
                                      fontFamily: "Circular"),
                                ),
                                SizedBox(height: 5.0,),
                                new Text("All the stuff you need to know.",
                                  style: new TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontFamily: "Circular"),)
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {
                            /*Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Terms.Terms()));*/
                            //Navigator.of(context).push(new Terms.TermsPageRoute());
                            print("on Click ");
                            _showToast(context);
                          },
                        ),
                        width: double.infinity,
                      ),
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  "Privacy Policy",
                                  textAlign: TextAlign.right,
                                  style: new TextStyle(
                                      color: const Color.fromRGBO(
                                          68, 68, 68, 1.0),
                                      fontSize: 18.0,
                                      fontFamily: "Circular"),
                                ),
                                SizedBox(height: 5.0,),
                                new Text("Important for both of us.",
                                  style: new TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontFamily: "Circular"),)
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {
                            /*Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Terms.Terms()));*/
                            //Navigator.of(context).push(new Terms.TermsPageRoute());
                            print("on Click ");
                            _showToast(context);
                          },
                        ),
                        width: double.infinity,
                      ),
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  "Third-party license",
                                  textAlign: TextAlign.right,
                                  style: new TextStyle(
                                      color: const Color.fromRGBO(
                                          68, 68, 68, 1.0),
                                      fontSize: 18.0,
                                      fontFamily: "Circular"),
                                ),
                                SizedBox(height: 5.0,),
                                new Text("Sweet software that helps us.",
                                  style: new TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontFamily: "Circular"),)
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {
                            /*Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Terms.Terms()));*/
                            //Navigator.of(context).push(new Terms.TermsPageRoute());
                            print("on Click ");
                            _showToast(context);
                          },
                        ),
                        width: double.infinity,
                      ),
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  "Pricing",
                                  textAlign: TextAlign.right,
                                  style: new TextStyle(
                                      color: const Color.fromRGBO(
                                          68, 68, 68, 1.0),
                                      fontSize: 18.0,
                                      fontFamily: "Circular"),
                                ),
                                SizedBox(height: 5.0,),
                                new Text(
                                  "there are a number of distinctive issues that arise with software.",
                                  style: new TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontFamily: "Circular"),)
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {
                            /*Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Terms.Terms()));*/
                            //Navigator.of(context).push(new Terms.TermsPageRoute());
                            print("on Click ");
                            _showToast(context);
                          },
                        ),
                        width: double.infinity,
                      ),


                    ],
                  ),

                  new Padding(padding: EdgeInsets.only(left: 10.0, top: 10.0),
                    child:
                    new Text(
                      "About",
                      style: new TextStyle(
                          color: Theme
                              .of(context)
                              .primaryColor,
                          fontSize: 22.0,
                          fontFamily: "Proxima",
                          fontWeight: FontWeight.bold),
                    ),),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        child: new InkWell(
                          child: new Padding(padding: EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  "Version",
                                  textAlign: TextAlign.right,
                                  style: new TextStyle(
                                      color: const Color.fromRGBO(
                                          68, 68, 68, 1.0),
                                      fontSize: 18.0,
                                      fontFamily: "Circular"),
                                ),
                                SizedBox(height: 5.0,),
                                new Text("0.4.28(Code 2854-28) armV7",
                                  style: new TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14.0,
                                      fontFamily: "Circular"),)
                              ],
                            ),),
                          splashColor: Colors.orangeAccent,
                          //highlightColor: Colors.orangeAccent,
                          onTap: () {
                            /*Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new Terms.Terms()));*/
                            //Navigator.of(context).push(new Terms.TermsPageRoute());
                            print("on Click ");
                            _showToast(context);
                          },
                        ),
                        width: double.infinity,
                      ),


                    ],
                  ),
                ],
              ),),
          ),
        ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Login as Admin'),
        action: SnackBarAction(
            label: 'Login', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  void _chooselanguage(BuildContext context) {
    showDialog(context: context, child: new MyForm());
  }

  void _chooseTheme(BuildContext context) {
    showDialog(context: context, child: new MyTheme());
  }
}


class MyForm extends StatefulWidget {

  @override
  _MyFormState createState() => new _MyFormState();
}
class _MyFormState extends State<MyForm> {
  String value = "foo";
  int _radioValue1 = 0;
  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        case 0:
          print("Click0");
          Navigator.pop(context);
          break;
        case 1:
          print("Click1");
          Navigator.pop(context);

          break;
        case 2:
          Navigator.pop(context);
          print("Click2");

          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return new CustomAlertDialog(
        title: Text("Select language"),
        content: new Container(
            width: 260.0,
            height: 280.0,
            alignment:Alignment.topLeft,
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xFFFFFF),
              borderRadius:
              new BorderRadius.all(new Radius.circular(25.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Radio(
                      value: 0,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    new Text(
                      'English',
                      style: new TextStyle(fontSize: 16.0),
                    )
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Radio(
                      value: 1,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    new Text(
                      'Russian',
                      style: new TextStyle(fontSize: 16.0),
                    )
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Radio(
                      value: 2,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    new Text(
                      'Dutch',
                      style: new TextStyle(fontSize: 16.0),
                    )
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Radio(
                      value: 4,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    new Text(
                      'Nederlands',
                      style: new TextStyle(fontSize: 16.0),
                    )
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Radio(
                      value: 5,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    new Text(
                      'Czech',
                      style: new TextStyle(fontSize: 16.0),
                    )
                  ],
                ),
              ],
            )));
  }
}


class MyTheme extends StatefulWidget {

  @override
  _MyThemeState createState() => new _MyThemeState();
}
class _MyThemeState extends State<MyTheme> {
  int _radioValue1 = 0;
  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        case 0:
          print("Click0");
          Navigator.pop(context);
          break;
        case 1:
          print("Click1");
          Navigator.pop(context);

          break;
        case 2:
          Navigator.pop(context);
          print("Click2");

          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return new CustomAlertDialog(
        title: Text("Select Theme"),
        content: new Container(
            width: 150.0,
            height: 150.0,
            alignment:Alignment.topLeft,
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xFFFFFF),
              borderRadius:
              new BorderRadius.all(new Radius.circular(25.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Radio(
                      value: 0,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    new Text(
                      'Default',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Padding(padding: EdgeInsets.only(left: 20.0)),
                    new Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: new BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle,
                        )
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Radio(
                      value: 1,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    new Text(
                      'Dark',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Padding(padding: EdgeInsets.only(left: 20.0)),
                    new Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: new BoxDecoration(
                          color: Colors.black38,
                          shape: BoxShape.circle,
                        )
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Radio(
                      value: 2,
                      groupValue: _radioValue1,
                      onChanged: _handleRadioValueChange1,
                    ),
                    new Text(
                      'Green',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    new Padding(padding: EdgeInsets.only(left: 20.0)),
                    new Container(
                        padding: EdgeInsets.only(left: 30.0),
                        width: 30.0,
                        height: 30.0,
                        decoration: new BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        )
                    ),
                  ],
                ),
              ],
            )));
  }
}