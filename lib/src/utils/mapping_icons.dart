import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'assessment_outline': Icons.assessment_outlined,
  'assigment':Icons.assignment,
  'card_giftcard':Icons.card_giftcard,
  'new_releases': Icons.new_releases,
};

Icon getIcon (String nombreIcono){
  return Icon(
    _icons[nombreIcono],
  );
}
