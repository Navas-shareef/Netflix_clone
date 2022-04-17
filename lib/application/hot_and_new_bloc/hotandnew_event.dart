part of 'hotandnew_bloc.dart';

@freezed
class HotandnewEvent with _$HotandnewEvent {
  const factory HotandnewEvent.loadDataComingSoon() = LoadDataComingSoon;
  const factory HotandnewEvent.loadDataEveryoneIsWatching() =
      LoadDataEveryoneIsWatching;
}
