import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/math_details/presentation/manager/get_match_data_notifier.dart';

class Highlights extends StatefulWidget {
  const Highlights({Key? key}) : super(key: key);

  @override
  State<Highlights> createState() => _HighlightsState();
}

class _HighlightsState extends State<Highlights> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<GetMatchDataNotifier>(
      builder: (context,  matchDataNotifier, child) {
        return Container(
          height: size.height,
        );
      }
    );
  }
}
