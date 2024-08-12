import 'package:flutter/material.dart';

class ScrollPaginationWraper extends StatelessWidget {
  final Widget child;
  final Function()? onScrollEnd;
  final bool hasExpanded;

  const ScrollPaginationWraper({
    super.key,
    required this.child,
    this.onScrollEnd,
    this.hasExpanded = true, // Default to true for backward compatibility
  });

  @override
  Widget build(BuildContext context) {
    Widget wrappedChild = NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (scrollInfo is ScrollEndNotification &&
            scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
          if (onScrollEnd != null) {
            onScrollEnd!();
            // return true;
          }
          // Perform any other actions if needed
        }
        return false;
      },
      child: child,
    );

    if (hasExpanded) {
      return Expanded(child: wrappedChild);
    } else {
      return wrappedChild;
    }
  }
}
