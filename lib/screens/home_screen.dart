import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:zed/models/custom_response/custom_response.dart';
import 'package:zed/widgets/tiles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Consumer<CustomResponse?>(builder: (context, data, _) {
              if (data == null) {
                return const Center(child: CircularProgressIndicator());
              }
              return Container(
                constraints: const BoxConstraints(maxHeight: 500.0),
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ExpandablePanel(
                        header: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: "${data.title}",
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    const WidgetSpan(
                                      child: SizedBox(
                                        width: 10.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: DateFormat("hh:mm a").format(data.startTime!),
                                      style: const TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    const WidgetSpan(
                                      child: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 20.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: DateFormat("hh:mm a").format(data.endTime!),
                                      style: const TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              const SizedBox(height: 10.0),
                              Text.rich(
                                TextSpan(
                                  text: "",
                                  style: const TextStyle(overflow: TextOverflow.ellipsis),
                                  children: [
                                    WidgetSpan(
                                      child: Container(
                                        height: 15.0,
                                        width: 15.0,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF39a02b),
                                          borderRadius: BorderRadius.circular(100.0),
                                        ),
                                      ),
                                    ),
                                    const WidgetSpan(
                                      child: SizedBox(
                                        width: 5.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "${data.locations?.source}",
                                      style: const TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.grey,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              const SizedBox(height: 10.0),
                              Text.rich(
                                TextSpan(
                                  style: const TextStyle(overflow: TextOverflow.ellipsis),
                                  children: [
                                    WidgetSpan(
                                      child: Container(
                                        height: 15.0,
                                        width: 15.0,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFcf4226),
                                          borderRadius: BorderRadius.circular(100.0),
                                        ),
                                      ),
                                    ),
                                    const WidgetSpan(
                                      child: SizedBox(
                                        width: 5.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "${data.locations?.destination}",
                                      style: const TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.grey,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              const SizedBox(height: 10.0),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    const WidgetSpan(
                                      child: Icon(
                                        Icons.key,
                                        color: Color(0xFFa5a3a8),
                                      ),
                                    ),
                                    const WidgetSpan(
                                      child: SizedBox(width: 8.0),
                                    ),
                                    const TextSpan(
                                      text: "Parked ",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: " • ",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: DateFormat("hh:mm a, MMM dd").format(data.parkedStatus!.dateTime!),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF6382c2),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: " • ",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "${data.parkedStatus?.distance?.toDouble()} Km",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF6382c2),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        collapsed: const SizedBox.shrink(),
                        expanded: SizedBox(
                          height: 200.0,
                          child: ListView(
                            children: data.timeline
                                    ?.map(
                                      (e) => CustomTiles(
                                        isScheduled: e.isScheduled ?? false,
                                        unScheduledMsg: "${e.unScheduledMsg}",
                                        height: 150.0,
                                        isFirst: data.timeline?.indexOf(e) == 0,
                                        isLast: data.timeline?.indexOf(e) == (data.timeline?.length ?? 1) - 1,
                                        data: {
                                          "destination": "${e.scheduled?.as}",
                                          "id": "${e.scheduled?.id}",
                                          "Conf": "${e.scheduled?.conf}",
                                          "Seat": "${e.scheduled?.seat}",
                                          "Arn": "${DateFormat("hh:mm a").format(e.scheduled!.arn!)} PDT",
                                        },
                                        start: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Text(
                                              "8:00 ",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                text: "PDT",
                                                style: const TextStyle(color: Colors.grey, fontSize: 13.0),
                                                children: [
                                                  const WidgetSpan(child: SizedBox(width: 10.0)),
                                                  TextSpan(
                                                    text: "AM",
                                                    style: TextStyle(
                                                      color: Colors.grey.shade700,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                    .toList() ??
                                [],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.play_arrow),
                              color: const Color(0xFFa42617),
                            ),
                            Expanded(
                              child: Theme(
                                data: ThemeData(
                                  colorSchemeSeed: const Color(0xFFa42617),
                                ),
                                child: Slider.adaptive(
                                  value: 0,
                                  onChanged: (value) {},
                                ),
                              ),
                            ),
                            const Text("1.0x"),
                            const SizedBox(width: 10.0),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
