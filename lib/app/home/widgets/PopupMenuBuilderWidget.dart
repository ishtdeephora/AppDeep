import 'package:flutter/material.dart';
import 'package:flutter_try/app/utils/constants.dart';

class PopupMenuBuilder extends StatefulWidget {
  @override
  _PopupMenuBuilderState createState() => _PopupMenuBuilderState();
}

class _PopupMenuBuilderState extends State<PopupMenuBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 176.0),
        child: PopupMenuButton<WhyFarther>(
          onSelected: (WhyFarther result) {
            setState(() {});
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.harder,
              child: Text('Working a lot harder'),
            ),
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.smarter,
              child: Text('Being a lot smarter'),
            ),
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.selfStarter,
              child: Text('Being a self-starter'),
            ),
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.tradingCharter,
              child: Text('Placed in charge of trading charter'),
            ),
          ],
        ),
      ),
    );
  }
}
