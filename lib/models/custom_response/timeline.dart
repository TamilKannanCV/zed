import 'dart:convert';

import 'scheduled.dart';

class Timeline {
	bool? isScheduled;
	Scheduled? scheduled;
	String? unScheduledMsg;

	Timeline({this.isScheduled, this.scheduled, this.unScheduledMsg});

	@override
	String toString() {
		return 'Timeline(isScheduled: $isScheduled, scheduled: $scheduled, unScheduledMsg: $unScheduledMsg)';
	}

	factory Timeline.fromMap(Map<String, dynamic> data) => Timeline(
				isScheduled: data['isScheduled'] as bool?,
				scheduled: data['scheduled'] == null
						? null
						: Scheduled.fromMap(data['scheduled'] as Map<String, dynamic>),
				unScheduledMsg: data['unScheduledMsg'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'isScheduled': isScheduled,
				'scheduled': scheduled?.toMap(),
				'unScheduledMsg': unScheduledMsg,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Timeline].
	factory Timeline.fromJson(String data) {
		return Timeline.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Timeline] to a JSON string.
	String toJson() => json.encode(toMap());
}
