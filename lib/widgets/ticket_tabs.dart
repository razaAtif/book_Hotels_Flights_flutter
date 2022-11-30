import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTabs;
  final String secondTabs;
  const AppTicketTabs(
      {super.key, required this.firstTabs, required this.secondTabs});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          ),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            /*Air line tickets*/
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.white,
              ),
              child: Center(
                child: Text(firstTabs),
              ),
            ),
            /*Hotel Tickets*/
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
              ),
              child: Center(
                child: Text(secondTabs),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
