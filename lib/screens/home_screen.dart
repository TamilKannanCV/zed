import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
            child: Container(
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
                            const Text.rich(
                              TextSpan(
                                text: "CIAZ",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  WidgetSpan(
                                    child: SizedBox(
                                      width: 10.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "12:00 AM",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 20.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "11:59 PM",
                                    style: TextStyle(
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
                                  const TextSpan(
                                    text: "Satyamangaiam. Erode district. Tamil Nacio. 035401.",
                                    style: TextStyle(
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
                                text: "",
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
                                  const TextSpan(
                                    text: "1.2 Kms from Gobichettipalayam, Erode district, Tamil Nadu, 638476, India",
                                    style: TextStyle(
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
                                    text: DateFormat("hh:mm a, MMM dd").format(DateTime.now()),
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
                                  const TextSpan(
                                    text: "0.0 Km",
                                    style: TextStyle(
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
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Divider(thickness: 1.2),
                              CustomTiles(
                                isScheduled: true,
                                unScheduledMsg: "1 hr 15 mins",
                                height: 150.0,
                                isFirst: true,
                                data: const {
                                  "destination": "SFO -LAX",
                                  "id": "AS 1930",
                                  "Conf": "DL1234",
                                  "Seat": "19B",
                                  "Arn": "9:26 PM PDT",
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
                              const CustomTiles(
                                isScheduled: false,
                                height: 50.0,
                                unScheduledMsg: "1 hr 5 mins",
                              ),
                              CustomTiles(
                                isScheduled: true,
                                unScheduledMsg: "1 hr 15 mins",
                                height: 150.0,
                                isFirst: false,
                                data: const {
                                  "destination": "SFO -LAX",
                                  "id": "AS 1930",
                                  "Conf": "DL1234",
                                  "Seat": "19B",
                                  "Arn": "9:26 PM PDT",
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
                              const CustomTiles(
                                isScheduled: false,
                                height: 50.0,
                                unScheduledMsg: "1 hr 5 mins",
                              ),
                              CustomTiles(
                                isScheduled: true,
                                unScheduledMsg: "1 hr 15 mins",
                                height: 150.0,
                                isFirst: false,
                                data: const {
                                  "destination": "SFO -LAX",
                                  "id": "AS 1930",
                                  "Conf": "DL1234",
                                  "Seat": "19B",
                                  "Arn": "9:26 PM PDT",
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
                              const CustomTiles(
                                isScheduled: false,
                                height: 50.0,
                                unScheduledMsg: "1 hr 5 mins",
                              ),
                              const CustomTiles(
                                isScheduled: false,
                                height: 50.0,
                                unScheduledMsg: "1 hr 5 mins",
                              ),
                              CustomTiles(
                                isScheduled: true,
                                unScheduledMsg: "1 hr 15 mins",
                                height: 150.0,
                                isFirst: false,
                                data: const {
                                  "destination": "SFO -LAX",
                                  "id": "AS 1930",
                                  "Conf": "DL1234",
                                  "Seat": "19B",
                                  "Arn": "9:26 PM PDT",
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
                              CustomTiles(
                                isScheduled: true,
                                unScheduledMsg: "1 hr 15 mins",
                                height: 150.0,
                                isFirst: false,
                                data: const {
                                  "destination": "SFO -LAX",
                                  "id": "AS 1930",
                                  "Conf": "DL1234",
                                  "Seat": "19B",
                                  "Arn": "9:26 PM PDT",
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
                              const CustomTiles(
                                isScheduled: false,
                                height: 50.0,
                                isLast: true,
                                unScheduledMsg: "1 hr 5 mins",
                              ),
                            ],
                          ),
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
            ),
          ),
        ],
      ),
    );
  }
}
