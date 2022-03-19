import 'dart:developer';

import 'package:argedik_prototip/feature/onboard/on_board_model.dart';
import 'package:argedik_prototip/feature/onboard/tab_indicator.dart';
import 'package:argedik_prototip/utils/colors.dart';
import 'package:flutter/material.dart';

/*class OnBoardCard extends StatefulWidget {
  const OnBoardCard({Key? key, required this.model, required this.index, this.onPressed}) : super(key: key);
  final OnBoardModel model;
  final int index;
  final VoidCallback? onPressed;

  @override
  State<OnBoardCard> createState() => _OnBoardCardState();
}

class _OnBoardCardState extends State<OnBoardCard> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 30,
          child: Image.asset(widget.model.imageWithPath,
              width: MediaQuery.of(context).size.width * 0.65),
        ),
        Expanded(
          flex: 5,
          child: Center(
              child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          )),
        ),
        Expanded(
          flex: 10,
          child: Center(
            child: Text(
              widget.model.title,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Center(
            child: Text(widget.model.description),
          ),
        ),
        Expanded(
          flex: 10,
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: onBoardBtnColor,
              ),
              onPressed: () {
                print("ses");
                widget.onPressed;
              },
              child: Text(widget.model.btnNextText),
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Center(
            child: widget.index ==2 ? null :TextButton(
              style: TextButton.styleFrom(
                primary: onBoardBtnColor,
              ),
              onPressed: () {
                widget.onPressed;
              },
              child: Text("asdasdasd"),
            ),
          ),
        ),
      ],
    );
  }
}*/

class OnBoardCard extends StatelessWidget {
  const OnBoardCard({Key? key, required this.model, required this.index, this.onPressed}) : super(key: key);
  final OnBoardModel model;
  final int index;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 30,
          child: Image.asset(model.imageWithPath,
              width: MediaQuery.of(context).size.width * 0.65),
        ),
        Expanded(
          flex: 5,
          child: Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              )),
        ),
        Expanded(
          flex: 10,
          child: Center(
            child: Text(
              model.title,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Center(
            child: Text(model.description),
          ),
        ),
        Expanded(
          flex: 10,
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: onBoardBtnColor,
              ),
              onPressed: () {
                inspect(this);
                print("ses");
                print("dedede $onPressed");
                print("dedede $index");
                print("dedede ${model.btnNextText}");
                onPressed;
              },
              child: Text(model.btnNextText),
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Center(
            child: index ==2 ? null :TextButton(
              style: TextButton.styleFrom(
                primary: onBoardBtnColor,
              ),
              onPressed: () {
                onPressed;
              },
              child: Text("asdasdasd"),
            ),
          ),
        ),
      ],
    );
  }
}

