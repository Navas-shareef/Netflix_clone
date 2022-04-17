part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughState with _$FastlaughState {
  const factory FastlaughState({
    required List<Downloads> vediosList,
    required bool isLoading,
    required bool isError,
  }) = _FastlaughState;
  factory FastlaughState.initial() => FastlaughState(
        vediosList: [],
        isLoading: true,
        isError: false,
      );
}
