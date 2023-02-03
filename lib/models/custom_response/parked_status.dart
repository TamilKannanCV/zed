import 'dart:convert';

class ParkedStatus {
	bool? isParked;
	DateTime? dateTime;
	int? distance;

	ParkedStatus({this.isParked, this.dateTime, this.distance});

	@override
	String toString() {
		return 'ParkedStatus(isParked: $isParked, dateTime: $dateTime, distance: $distance)';
	}

	factory ParkedStatus.fromMap(Map<String, dynamic> data) => ParkedStatus(
				isParked: data['isParked'] as bool?,
				dateTime: data['dateTime'] == null
						? null
						: DateTime.parse(data['dateTime'] as String),
				distance: data['distance'] as int?,
			);

	Map<String, dynamic> toMap() => {
				'isParked': isParked,
				'dateTime': dateTime?.toIso8601String(),
				'distance': distance,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ParkedStatus].
	factory ParkedStatus.fromJson(String data) {
		return ParkedStatus.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [ParkedStatus] to a JSON string.
	String toJson() => json.encode(toMap());
}
