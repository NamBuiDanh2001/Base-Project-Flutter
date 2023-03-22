import 'package:flutter/material.dart';
import 'package:flutter_template/res/colors.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: MainBody());
  }
}

class MainBody extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
    );
  }
}
