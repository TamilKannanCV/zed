import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTiles extends StatelessWidget {
  const CustomTiles({
    super.key,
    required this.isScheduled,
    this.start,
    this.location,
    this.data,
    required this.height,
    this.unScheduledMsg,
    this.isFirst = false,
    this.isLast = false,
  });
  final bool isScheduled;
  final Widget? start;
  final String? location;
  final bool isFirst;
  final bool isLast;
  final Map<String, String>? data;
  final double height;
  final String? unScheduledMsg;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      afterLineStyle: LineStyle(
        color: isScheduled ? Colors.green : Colors.blue,
      ),
      beforeLineStyle: LineStyle(
        color: isScheduled ? Colors.green : Colors.blue,
      ),
      indicatorStyle: IndicatorStyle(
        iconStyle: IconStyle(
          iconData: isScheduled ? Icons.flight : Icons.coffee,
          color: Colors.white,
        ),
        width: 30.0,
        height: 30.0,
        color: isScheduled ? Colors.green : Colors.blue,
      ),
      alignment: TimelineAlign.center,
      endChild: isScheduled
          ? Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: data?['destination'],
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        WidgetSpan(child: SizedBox(width: 8.0)),
                        WidgetSpan(
                          child: Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.green,
                            ),
                            child: Text(
                              "SCHEDULED",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "${data?["id"]}",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  Text.rich(
                    TextSpan(text: "Conf:", children: [
                      TextSpan(
                        text: " ${data?["Conf"]}",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      )
                    ]),
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text.rich(
                    TextSpan(text: "Seat:", children: [
                      TextSpan(
                        text: " ${data?["Seat"]}",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      )
                    ]),
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text.rich(
                    TextSpan(text: "Arn:", children: [
                      TextSpan(
                        text: " ${data?["Arn"]}",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      )
                    ]),
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$unScheduledMsg",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),
            ),
      startChild: isScheduled
          ? Container(
              padding: const EdgeInsets.all(10.0),
              height: height,
              child: start,
            )
          : SizedBox(
              height: height,
            ),
    );
  }
}
