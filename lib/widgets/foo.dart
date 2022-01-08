import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
part 'foo.g.dart';

@swidget
Widget foo(BuildContext context, int value) {
  return Text('$value');
}
