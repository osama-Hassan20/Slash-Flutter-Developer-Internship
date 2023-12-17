import 'package:flutter/material.dart';
import 'package:slash_flutter_internship/features/product/presentation/pages/home/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0xff0c0c0c),
      appBar: AppBar(
        backgroundColor:  Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Home View',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}
