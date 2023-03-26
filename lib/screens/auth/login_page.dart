import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget_settings/widget_settings.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isAnimated=false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isAnimated = true;
      });
    },);
  }
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Wellcome to SnapTalk",
        ),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: Duration(seconds: 1),
              top: isAnimated?mq.height*.15:mq.height*1,
              right:mq.width*.25,
              width: mq.width*.5,
              child: Image.network(
                  "https://images.squarespace-cdn.com/content/v1/558172f0e4b077ee5306aa83/1617961116131-UFUTCVBWBVA7PKPQIVRY/logo-14-2-2.png")),
          AnimatedPositioned(
            duration: Duration(seconds: 2),
              bottom:isAnimated? mq.height *.15:mq.height*-1,
              left: mq.width * .10,
              right: mq.width * .10,
              child: ElevatedButton.icon(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.network(
                      "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png",
                      width: mq.width * .12,
                    ),
                  ),
                ),
                label: RichText(
                  text: TextSpan(
                    text: ' Sign In with ',
                    style: myFontStyle(16, FontWeight.normal, Colors.white),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Google',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              )),
        ],
      ),
    ));
  }
}
