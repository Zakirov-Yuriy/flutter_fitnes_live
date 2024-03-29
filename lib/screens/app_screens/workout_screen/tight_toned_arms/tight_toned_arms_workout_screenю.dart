import 'package:flutter/material.dart';

import '../../../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_Five/Tight_toned_arms/tight_toned_arms_widget.dart';

class TightTonedArmsWorkoutScreen extends StatefulWidget {
  @override
  _TightTonedArmsWorkoutScreenState createState() =>
      _TightTonedArmsWorkoutScreenState();
}

class _TightTonedArmsWorkoutScreenState
    extends State<TightTonedArmsWorkoutScreen> {
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
                    ' Подтянутые руки',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/training_image/workout_image/tight_toned_arms/Tight toned arms.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              // color: Colors.white,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TightTonedArmsWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
