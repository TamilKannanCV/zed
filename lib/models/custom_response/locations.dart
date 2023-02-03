import 'dart:convert';

class Locations {
	String? source;
	String? destination;

	Locations({this.source, this.destination});

	@override
	String toString() {
		return 'Locations(source: $source, destination: $destination)';
	}

	factory Locations.fromMap(Map<String, dynamic> data) => Locations(
				source: data['source'] as String?,
				destination: data['destination'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'source': source,
				'destination': destination,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Locations].
	factory Locations.fromJson(String data) {
		return Locations.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Locations] to a JSON string.
	String toJson() => json.encode(toMap());
}
