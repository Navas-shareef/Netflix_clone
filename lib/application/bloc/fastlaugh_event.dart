part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughEvent with _$FastlaughEvent {
  factory FastlaughEvent.initial() = Initial;
  factory FastlaughEvent.likedVideo({required int id}) = LikedVideo;
  factory FastlaughEvent.unlikedVideo({required int id}) = UnlikedVideo;
}
