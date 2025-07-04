import 'package:app_instagram/widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,

        elevation: 0,

        title: SizedBox(
          width: 105.w,
          height: 28.h,
          child: Image.asset('images/instagram.jpg'),
        ),
        leading: Image.asset('images/camera.jpg'),
        backgroundColor: const Color(0xffFAFAFA),
      ),

      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return PostWidget();
            }, childCount: 5),
          ),
        ],
      ),
    );
  }
}
