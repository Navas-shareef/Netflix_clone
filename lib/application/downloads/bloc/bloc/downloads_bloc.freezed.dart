// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadEventTearOff {
  const _$DownloadEventTearOff();

  _GetDownloadsImage getDownloadsImage() {
    return const _GetDownloadsImage();
  }
}

/// @nodoc
const $DownloadEvent = _$DownloadEventTearOff();

/// @nodoc
mixin _$DownloadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadEventCopyWith<$Res> {
  factory $DownloadEventCopyWith(
          DownloadEvent value, $Res Function(DownloadEvent) then) =
      _$DownloadEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadEventCopyWithImpl<$Res>
    implements $DownloadEventCopyWith<$Res> {
  _$DownloadEventCopyWithImpl(this._value, this._then);

  final DownloadEvent _value;
  // ignore: unused_field
  final $Res Function(DownloadEvent) _then;
}

/// @nodoc
abstract class _$GetDownloadsImageCopyWith<$Res> {
  factory _$GetDownloadsImageCopyWith(
          _GetDownloadsImage value, $Res Function(_GetDownloadsImage) then) =
      __$GetDownloadsImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDownloadsImageCopyWithImpl<$Res>
    extends _$DownloadEventCopyWithImpl<$Res>
    implements _$GetDownloadsImageCopyWith<$Res> {
  __$GetDownloadsImageCopyWithImpl(
      _GetDownloadsImage _value, $Res Function(_GetDownloadsImage) _then)
      : super(_value, (v) => _then(v as _GetDownloadsImage));

  @override
  _GetDownloadsImage get _value => super._value as _GetDownloadsImage;
}

/// @nodoc

class _$_GetDownloadsImage implements _GetDownloadsImage {
  const _$_GetDownloadsImage();

  @override
  String toString() {
    return 'DownloadEvent.getDownloadsImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetDownloadsImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
  }) {
    return getDownloadsImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
  }) {
    return getDownloadsImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    required TResult orElse(),
  }) {
    if (getDownloadsImage != null) {
      return getDownloadsImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
  }) {
    return getDownloadsImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
  }) {
    return getDownloadsImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    required TResult orElse(),
  }) {
    if (getDownloadsImage != null) {
      return getDownloadsImage(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadsImage implements DownloadEvent {
  const factory _GetDownloadsImage() = _$_GetDownloadsImage;
}

/// @nodoc
class _$DownloadsStateTearOff {
  const _$DownloadsStateTearOff();

  _DownloadsState call(
      {required bool isLoading,
      List<Downloads>? downloads,
      required Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption}) {
    return _DownloadsState(
      isLoading: isLoading,
      downloads: downloads,
      downloadsFailureOrSuccessOption: downloadsFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $DownloadsState = _$DownloadsStateTearOff();

/// @nodoc
mixin _$DownloadsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads>? get downloads => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Downloads>>>
      get downloadsFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Downloads>? downloads,
      Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  final DownloadsState _value;
  // ignore: unused_field
  final $Res Function(DownloadsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloads = freezed,
    Object? downloadsFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
      downloadsFailureOrSuccessOption: downloadsFailureOrSuccessOption ==
              freezed
          ? _value.downloadsFailureOrSuccessOption
          : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
    ));
  }
}

/// @nodoc
abstract class _$DownloadsStateCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$DownloadsStateCopyWith(
          _DownloadsState value, $Res Function(_DownloadsState) then) =
      __$DownloadsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Downloads>? downloads,
      Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption});
}

/// @nodoc
class __$DownloadsStateCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res>
    implements _$DownloadsStateCopyWith<$Res> {
  __$DownloadsStateCopyWithImpl(
      _DownloadsState _value, $Res Function(_DownloadsState) _then)
      : super(_value, (v) => _then(v as _DownloadsState));

  @override
  _DownloadsState get _value => super._value as _DownloadsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloads = freezed,
    Object? downloadsFailureOrSuccessOption = freezed,
  }) {
    return _then(_DownloadsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
      downloadsFailureOrSuccessOption: downloadsFailureOrSuccessOption ==
              freezed
          ? _value.downloadsFailureOrSuccessOption
          : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$_DownloadsState implements _DownloadsState {
  const _$_DownloadsState(
      {required this.isLoading,
      this.downloads,
      required this.downloadsFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<Downloads>? downloads;
  @override
  final Option<Either<MainFailure, List<Downloads>>>
      downloadsFailureOrSuccessOption;

  @override
  String toString() {
    return 'DownloadsState(isLoading: $isLoading, downloads: $downloads, downloadsFailureOrSuccessOption: $downloadsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.downloads, downloads) &&
            const DeepCollectionEquality().equals(
                other.downloadsFailureOrSuccessOption,
                downloadsFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(downloads),
      const DeepCollectionEquality().hash(downloadsFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$DownloadsStateCopyWith<_DownloadsState> get copyWith =>
      __$DownloadsStateCopyWithImpl<_DownloadsState>(this, _$identity);
}

abstract class _DownloadsState implements DownloadsState {
  const factory _DownloadsState(
      {required bool isLoading,
      List<Downloads>? downloads,
      required Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption}) = _$_DownloadsState;

  @override
  bool get isLoading;
  @override
  List<Downloads>? get downloads;
  @override
  Option<Either<MainFailure, List<Downloads>>>
      get downloadsFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$DownloadsStateCopyWith<_DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}
