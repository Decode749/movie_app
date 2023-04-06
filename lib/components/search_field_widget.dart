import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key, required this.padding});

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
            color: Constants.kGreyColor.withOpacity(0.12),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            // SvgPicture.asset(Constants.kIconSearch),
            Icon(
              Icons.search,
              color: Constants.kWhiteColor.withOpacity(0.6),
              size: 22,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: TextField(
                style: TextStyle(
                  color: Constants.kWhiteColor.withOpacity(0.5),
                  fontSize: 20,
                  letterSpacing: -0.41,
                ),
                decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        color: Constants.kWhiteColor.withOpacity(0.6),
                        fontSize: 17,
                        letterSpacing: -0.41)),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(Constants.kIconMic),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }
}
