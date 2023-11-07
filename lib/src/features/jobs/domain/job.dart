import 'package:freezed_annotation/freezed_annotation.dart';
part 'job.freezed.dart';

typedef JobID = String;

@freezed
class Job with _$Job {
  const factory Job({
    required JobID id,
    required String name,
    required int ratePerHour,
  }) = _Job;

  factory Job.fromMap(Map<String, dynamic> data, String id) {
    final name = data['name'] as String;
    final ratePerHour = data['ratePerHour'] as int;
    return Job(
      id: id,
      name: name,
      ratePerHour: ratePerHour,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'ratePerHour': ratePerHour,
    };
  }
}
