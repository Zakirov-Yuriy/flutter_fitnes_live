import 'package:flutter/material.dart';
import '../../../../widgets/app_screens/workout_screen/training_screen/Container_Carousel_One/melts_fat/melts_fat_widget.dart';

class MeltsFatWorkoutScreen extends StatefulWidget {
  @override
  _MeltsFatWorkoutScreenState createState() => _MeltsFatWorkoutScreenState();
}

class _MeltsFatWorkoutScreenState extends State<MeltsFatWorkoutScreen> {
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
                    'Всё тело',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/training_image/workout_image/GIRL_WITH.jpg',
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
                  MeltsFatWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
