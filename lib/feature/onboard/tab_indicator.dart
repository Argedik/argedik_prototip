
import 'package:argedik_prototip/feature/onboard/on_board_model.dart';
import 'package:flutter/material.dart';

class TabIndicator extends StatefulWidget {
  const TabIndicator({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  _TabIndicatorState createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator>
    with SingleTickerProviderStateMixin{
  late final TabController _tabController;

  @override
  void didUpdateWidget(covariant TabIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("absürt osman");
    if(oldWidget.index !=widget.index){
      _tabController.animateTo(widget.index);
    }
  }



  @override
  void initState() {
    super.initState();
    print("${widget.index} deneme");
    _tabController =
        TabController(length: OnBoardItems.onBoardItems.length, vsync: this);
    _tabController.animateTo(widget.index);
  }

  void incrementSelectedPage() {
    if (widget.index != null){
      print("hey");
      // _tabController.animateTo(widget.index!);
      _tabController.animateTo(widget.index);
      setState(() {
      });
    }else{
    }

  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 20, child: TabPageSelector(controller: _tabController));
  }
}

