import 'dart:convert';

import 'locations.dart';
import 'parked_status.dart';
import 'timeline.dart';

class CustomResponse {
	String? title;
	DateTime? startTime;
	DateTime? endTime;
	Locations? locations;
	ParkedStatus? parkedStatus;
	List<Timeline>? timeline;

	CustomResponse({
		this.title, 
		this.startTime, 
		this.endTime, 
		this.locations, 
		this.parkedStatus, 
		this.timeline, 
	});

	@override
	String toString() {
		return 'CustomResponse(title: $title, startTime: $startTime, endTime: $endTime, locations: $locations, parkedStatus: $parkedStatus, timeline: $timeline)';
	}

	factory CustomResponse.fromMap(Map<String, dynamic> data) {
		return CustomResponse(
			title: data['title'] as String?,
			startTime: data['startTime'] == null
						? null
						: DateTime.parse(data['startTime'] as String),
			endTime: data['endTime'] == null
						? null
						: DateTime.parse(data['endTime'] as String),
			locations: data['locations'] == null
						? null
						: Locations.fromMap(data['locations'] as Map<String, dynamic>),
			parkedStatus: data['parked_status'] == null
						? null
						: ParkedStatus.fromMap(data['parked_status'] as Map<String, dynamic>),
			timeline: (data['timeline'] as List<dynamic>?)
						?.map((e) => Timeline.fromMap(e as Map<String, dynamic>))
						.toList(),
		);
	}



	Map<String, dynamic> toMap() => {
				'title': title,
				'startTime': startTime?.toIso8601String(),
				'endTime': endTime?.toIso8601String(),
				'locations': locations?.toMap(),
				'parked_status': parkedStatus?.toMap(),
				'timeline': timeline?.map((e) => e.toMap()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CustomResponse].
	factory CustomResponse.fromJson(String data) {
		return CustomResponse.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [CustomResponse] to a JSON string.
	String toJson() => json.encode(toMap());
}
