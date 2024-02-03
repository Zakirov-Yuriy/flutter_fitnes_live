import 'package:flutter/material.dart';
import '../../../widgets/app_screens/workout_screen/your_body_widget.dart';

class FullBodyWorkoutScreen extends StatefulWidget {
  @override
  _FullBodyWorkoutScreenState createState() => _FullBodyWorkoutScreenState();
}

class _FullBodyWorkoutScreenState extends State<FullBodyWorkoutScreen> {
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
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            title: _isImageVisible
                ? null
                : const Text(
                    '                Всё тело',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/whole_body.png',
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
                  YourBodyWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
