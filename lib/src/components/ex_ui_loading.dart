import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../_lib/loading_animation/loading_animation_widget.dart';

///   created               : Aditya Pratama
///   originalFilename      : ex_ui_loading
///   date                  : 24 Jun 2021
///   —————————————————————————————————————————————————————————————————————————————
///   screenshot            : https://prnt.sc/16xw78i

class ExUiLoading extends StatelessWidget {
  const ExUiLoading({
    Key? key,
    this.message,
    this.pbColor,
    this.pbSize,
  }) : super(key: key);

  final String? message;
  final Color? pbColor;
  final double? pbSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: context.mq.size.height,
      width: context.mq.size.width,
      child: Center(
        child: VStack(
          [
            LoadingAnimationWidget.discreteCircle(
              color: Theme.of(context).primaryColor,
              size: 32,
              // rightDotColor: Theme.of(context).primaryColor,
              // leftDotColor: Theme.of(context).errorColor,
            ).centered(),
            30.heightBox,
            (message ?? 'Sedang mengambil data...').text.size(11).black.makeCentered(),
          ],
        ),
      ),
    );
  }
}
