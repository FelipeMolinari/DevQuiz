import 'package:flutter/material.dart';
import 'package:flutter_quiz/challenge/widget/next_button/next_button_widget.dart';

class ButtonsFooterWidget extends StatelessWidget {
  final VoidCallback primaryButtonOnTap;
  final VoidCallback secondaryButtonOnTap;

  const ButtonsFooterWidget(
      {Key? key,
      required this.primaryButtonOnTap,
      required this.secondaryButtonOnTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: NextButtonWidget.secondary(
                      label: 'Pular', onPressed: secondaryButtonOnTap)),
              SizedBox(
                width: 7,
              ),
              Expanded(
                  child: NextButtonWidget.primary(
                label: 'Confirmar',
                onPressed: primaryButtonOnTap,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
