import 'package:fast_app_base/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TtossAppBar extends StatefulWidget {
  static const double appBarHeight = 60;

  const TtossAppBar({Key? key}) : super(key: key);

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {
  bool _showRedDet = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.appBarBackground,
      height: TtossAppBar.appBarHeight,
      child: Row(
        children: [
          width10,
          Image.asset(
            "assets/image/icon/toss.png",
            height: 30,
          ),
          width10,
          emptyExpanded,
          Image.asset(
            "assets/image/icon/map_point.png",
            height: 30,
          ),
          width10,
          Tap(
            onTap: () => setState(() => _showRedDet = !_showRedDet),
            child: Stack(
              children: [
                Image.asset(
                  "assets/image/icon/notification.png",
                  height: 30,
                ),
                if(_showRedDet)Positioned.fill(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ),
          width10,
        ],
      ),
    );
  }
}
