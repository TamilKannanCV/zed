import 'dart:convert';

class Scheduled {
	DateTime? time;
	String? as;
	String? conf;
	String? id;
	String? seat;
	DateTime? arn;

	Scheduled({this.time, this.as, this.conf, this.id, this.seat, this.arn});

	@override
	String toString() {
		return 'Scheduled(time: $time, as: $as, conf: $conf, id: $id, seat: $seat, arn: $arn)';
	}

	factory Scheduled.fromMap(Map<String, dynamic> data) => Scheduled(
				time: data['time'] == null
						? null
						: DateTime.parse(data['time'] as String),
				as: data['as'] as String?,
				conf: data['conf'] as String?,
				id: data['id'] as String?,
				seat: data['seat'] as String?,
				arn: data['arn'] == null
						? null
						: DateTime.parse(data['arn'] as String),
			);

	Map<String, dynamic> toMap() => {
				'time': time?.toIso8601String(),
				'as': as,
				'conf': conf,
				'id': id,
				'seat': seat,
				'arn': arn?.toIso8601String(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Scheduled].
	factory Scheduled.fromJson(String data) {
		return Scheduled.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Scheduled] to a JSON string.
	String toJson() => json.encode(toMap());
}
