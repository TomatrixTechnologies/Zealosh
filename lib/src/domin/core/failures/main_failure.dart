import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientFailure({
    required String detail,
  }) = _ClientFailure;
  const factory MainFailure.serverFailure({
    required String detail,
  }) = _ServerFailure;
}
