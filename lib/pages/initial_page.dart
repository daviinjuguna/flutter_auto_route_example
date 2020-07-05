import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/routes/router.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Go To Second"),
              onPressed: ()=> navigateToSecond(context),
            ),
            SizedBox(height: 10,),
             RaisedButton(
              child: Text('Go to THIRD'),
              onPressed: () => navigateToThird(context),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToSecond(BuildContext context) {
    ExtendedNavigator.of(context).pushNamed(
      Routes.secondPage,
      arguments: SecondPageArguments(userId: "Test Nav")
    );
  }
  
  void navigateToThird(BuildContext context) {
    ExtendedNavigator.of(context).pushNamed(
      Routes.thirdPage,
      arguments: ThirdPageArguments(
        userName: "Tester",
        points: 25,
      )
    );
  }
  
}