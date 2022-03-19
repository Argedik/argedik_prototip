import 'package:argedik_prototip/feature/onboard/on_board_model.dart';
import 'package:argedik_prototip/feature/onboard/tab_indicator.dart';
import 'package:argedik_prototip/product/widget/on_board_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';

/*class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  _OnBoardViewState createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  int _selectedIndex = 0;
  // bool get _isLastPage => OnBoardItems.onBoardItems.length-1 ==_selectedIndex;

*/ /*  void incrementAndChange() {
    if(_isLastPage){
      return;
    }
    _incrementSelectedPage();
  }


  void _incrementSelectedPage() {
    setState(() {
      _selectedIndex++;
    });
  }*/ /*

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: _pageViewItems(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabIndicator(selectedIndex: _selectedIndex,),
            ],
          ),
        ],
      ),
    );
  }

  PageView _pageViewItems() {
    return PageView.builder(
      itemCount: OnBoardItems.onBoardItems.length,
      itemBuilder: (context, index) {
        return OnBoardCard(
          model: OnBoardItems.onBoardItems[index],
          index: index,
        );
      },
    );
  }
}*/


class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {

  int _selectedIndex = 0;

  bool get _isLastPage => OnBoardItems.onBoardItems.length - 1 == _selectedIndex;
  // bool get _isFirstPage => _selectedIndex == 0;

  ValueNotifier<bool> isBackEnable = ValueNotifier(false);

  void _incrementAndChange([int? value]) {

    print("$value sadfaadsfadf");
    if (_isLastPage && value == null) {
      // _changeBackEnable(true);
      return;
    }
    // _changeBackEnable(false);
    _incrementSelectedPage(value);
  }

  // void _changeBackEnable(bool value) {
  //   if (value == isBackEnable.value) return;
  //   isBackEnable.value = value;
  // }

  void _incrementSelectedPage([int? value]) {
    setState(() {
      if (value != null) {
        _selectedIndex = value;
      } else {
        _selectedIndex++;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: _pageViewItems(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabIndicator(index: _selectedIndex,),
              FloatingActionButton(onPressed: () {},),
            ],
          ),

        ],
      ),
    );
  }

  PageView _pageViewItems() {
    return PageView.builder(
      itemCount: OnBoardItems.onBoardItems.length,
      onPageChanged: (index) {
        _incrementAndChange(index);
      },
      itemBuilder: (context, index) {
        return OnBoardCard(
          model: OnBoardItems.onBoardItems[index],
          index: index,
          onPressed: (){
            _incrementAndChange();
          },
        );
      },
    );
  }
}
