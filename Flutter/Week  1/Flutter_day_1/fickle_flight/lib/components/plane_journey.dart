import 'package:fickle_flight/components/custom_text.dart';
import 'package:fickle_flight/components/plane_path.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaneJourney extends StatelessWidget {
  PlaneJourney(
      {super.key,
      required this.titleFrom,
      required this.titleTo,
      required this.subtitleFrom,
      required this.subtitleTo,
      required this.height,
      // ignore: non_constant_identifier_names
      this.Details,
      this.padding,
      this.border});
  final String titleFrom, titleTo, subtitleFrom, subtitleTo;
  final double height;
  // ignore: non_constant_identifier_names
  final Widget? Details;
  final bool? padding;
  bool? border = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: height,
        // padding: const EdgeInsets.only(right: 8),
        margin: padding == true
            ? const EdgeInsets.only(right: 0)
            : const EdgeInsets.only(right: 8, left: 10),
        width: 393,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: border == true
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                )
              : const BorderRadius.all(Radius.circular(8)),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(title: titleFrom, subtitle: subtitleFrom),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: PlanePath(),
                  ),
                  CustomText(title: titleTo, subtitle: subtitleTo),
                ],
              ),
            ),
            const SizedBox(height: 4),
            if (Details != null) Details!,
          ],
        ),
      ),
    );
  }
}
