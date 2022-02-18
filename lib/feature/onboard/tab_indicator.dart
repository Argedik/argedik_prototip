
import 'package:argedik_prototip/feature/onboard/on_board_model.dart';
import 'package:flutter/material.dart';

class TabIndicator extends StatefulWidget {
  const TabIndicator({Key? key, required this.selectedIndex}) : super(key: key);
  final int selectedIndex;

  @override
  _TabIndicatorState createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator>
    with SingleTickerProviderStateMixin{
  late final TabController _tabController;

  @override
  void didUpdateWidget(covariant TabIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(oldWidget.selectedIndex !=widget.selectedIndex){
      _tabController.animateTo(widget.selectedIndex);
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: OnBoardItems.onBoardItems.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 20, child: TabPageSelector(controller: _tabController));
  }
}
