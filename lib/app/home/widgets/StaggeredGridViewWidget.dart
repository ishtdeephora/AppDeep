import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_try/app/home/widgets/TilesWidget.dart';

class StaggeredGridViewWidget extends StatelessWidget {
  const StaggeredGridViewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(
      crossAxisCount: 4,
      staggeredTiles: _staggeredTiles,
      children: _tiles,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      padding: const EdgeInsets.all(4.0),
    );
  }
}

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(3, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(3, 1)
];

List<Widget> _tiles = <Widget>[
  TilesWidget(Colors.green, Icons.check_circle, 1, 1),
  TilesWidget(Colors.transparent, Icons.touch_app, 2, 2),
  TilesWidget(Colors.amber, Icons.flag, 3, 3),
  TilesWidget(Colors.transparent, Icons.touch_app, 4, 4),
  TilesWidget(Colors.transparent, Icons.touch_app, 5, 5),
  TilesWidget(Colors.transparent, Icons.touch_app, 6, 6),
  TilesWidget(Colors.red, Icons.access_time, 7, 7),
  TilesWidget(Colors.transparent, Icons.touch_app, 8, 8),
  TilesWidget(Colors.transparent, Icons.touch_app, 9, 9),
  TilesWidget(Colors.red, Icons.access_time, 10, 10),
  TilesWidget(Colors.transparent, Icons.touch_app, 11, 11)
];
