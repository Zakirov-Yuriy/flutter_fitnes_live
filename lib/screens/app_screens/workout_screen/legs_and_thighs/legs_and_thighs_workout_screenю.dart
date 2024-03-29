import 'package:flutter/material.dart';

import '../../../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Two/Legs_and_thighs/legs_and_thighs_widget.dart';

class LegsAndThighsWorkoutScreen extends StatefulWidget {
  @override
  _LegsAndThighsWorkoutScreenState createState() =>
      _LegsAndThighsWorkoutScreenState();
}

class _LegsAndThighsWorkoutScreenState
    extends State<LegsAndThighsWorkoutScreen> {
  ScrollController _scrollController = ScrollController();
  bool _isImageVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _isImageVisible = _scrollController.offset <= 200;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            title: _isImageVisible
                ? null
                : const Text(
                    'Ноги и бедра',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/training_image/workout_image/legs_and_thighs/Legs and thighs.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              // color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LegsAndThighsWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
