import 'package:phone_form_field/src/flags/flags.dart';
import 'package:flutter/material.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';

import 'country_selector/country.dart';

class CountryCodeChip extends StatelessWidget {
  final Country country;
  final bool showFlag;

  final TextStyle textStyle;
  final EdgeInsets padding;
  final double flagSize;
  final bool isFlagCircle;
  final TextDirection? textDirection;

  CountryCodeChip({
    Key? key,
    required IsoCode isoCode,
    this.textStyle = const TextStyle(),
    this.showFlag = true,
    this.padding = const EdgeInsets.all(20),
    this.flagSize = 20,
    this.isFlagCircle = true,
    this.textDirection,
  })  : country = Country(isoCode, ''),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showFlag) ...[
          Flag(
            country.isoCode.name,
            size: flagSize,
            isFlagCircle: isFlagCircle,
          ),
          const SizedBox(width: 8),
        ],
        Text(
          country.displayCountryCode,
          style: textStyle,
          textDirection: textDirection,
        ),
      ],
    );
  }
}
