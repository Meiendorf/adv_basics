import 'package:flutter/material.dart';

class SummaryScrollView extends StatelessWidget {
  final Widget child;

  const SummaryScrollView({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ScrollbarTheme(
        data: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(
            const Color.fromARGB(55, 249, 99, 242),
          ),
          mainAxisMargin: -15,
          crossAxisMargin: -15,
        ),
        child: Scrollbar(
          thickness: 3,
          child: SingleChildScrollView(
            child: child,
          ),
        ),
      ),
    );
  }
}
