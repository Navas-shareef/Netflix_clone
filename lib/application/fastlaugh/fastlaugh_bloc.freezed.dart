// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fastlaugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FastlaughEventTearOff {
  const _$FastlaughEventTearOff();

  Initial initial() {
    return Initial();
  }

  LikedVideo likedVideo({required int id}) {
    return LikedVideo(
      id: id,
    );
  }

  UnlikedVideo unlikedVideo({required int id}) {
    return UnlikedVideo(
      id: id,
    );
  }
}

/// @nodoc
const $FastlaughEvent = _$FastlaughEventTearOff();

/// @nodoc
mixin _$FastlaughEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) likedVideo,
    required TResult Function(int id) unlikedVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? likedVideo,
    TResult Function(int id)? unlikedVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? likedVideo,
    TResult Function(int id)? unlikedVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LikedVideo value) likedVideo,
    required TResult Function(UnlikedVideo value) unlikedVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LikedVideo value)? likedVideo,
    TResult Function(UnlikedVideo value)? unlikedVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LikedVideo value)? likedVideo,
    TResult Function(UnlikedVideo value)? unlikedVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastlaughEventCopyWith<$Res> {
  factory $FastlaughEventCopyWith(
          FastlaughEvent value, $Res Function(FastlaughEvent) then) =
      _$FastlaughEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FastlaughEventCopyWithImpl<$Res>
    implements $FastlaughEventCopyWith<$Res> {
  _$FastlaughEventCopyWithImpl(this._value, this._then);

  final FastlaughEvent _value;
  // ignore: unused_field
  final $Res Function(FastlaughEvent) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$FastlaughEventCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  _$Initial();

  @override
  String toString() {
    return 'FastlaughEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) likedVideo,
    required TResult Function(int id) unlikedVideo,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? likedVideo,
    TResult Function(int id)? unlikedVideo,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? likedVideo,
    TResult Function(int id)? unlikedVideo,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LikedVideo value) likedVideo,
    required TResult Function(UnlikedVideo value) unlikedVideo,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LikedVideo value)? likedVideo,
    TResult Function(UnlikedVideo value)? unlikedVideo,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LikedVideo value)? likedVideo,
    TResult Function(UnlikedVideo value)? unlikedVideo,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FastlaughEvent {
  factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LikedVideoCopyWith<$Res> {
  factory $LikedVideoCopyWith(
          LikedVideo value, $Res Function(LikedVideo) then) =
      _$LikedVideoCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$LikedVideoCopyWithImpl<$Res> extends _$FastlaughEventCopyWithImpl<$Res>
    implements $LikedVideoCopyWith<$Res> {
  _$LikedVideoCopyWithImpl(LikedVideo _value, $Res Function(LikedVideo) _then)
      : super(_value, (v) => _then(v as LikedVideo));

  @override
  LikedVideo get _value => super._value as LikedVideo;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(LikedVideo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LikedVideo implements LikedVideo {
  _$LikedVideo({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FastlaughEvent.likedVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikedVideo &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $LikedVideoCopyWith<LikedVideo> get copyWith =>
      _$LikedVideoCopyWithImpl<LikedVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) likedVideo,
    required TResult Function(int id) unlikedVideo,
  }) {
    return likedVideo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? likedVideo,
    TResult Function(int id)? unlikedVideo,
  }) {
    return likedVideo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? likedVideo,
    TResult Function(int id)? unlikedVideo,
    required TResult orElse(),
  }) {
    if (likedVideo != null) {
      return likedVideo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LikedVideo value) likedVideo,
    required TResult Function(UnlikedVideo value) unlikedVideo,
  }) {
    return likedVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LikedVideo value)? likedVideo,
    TResult Function(UnlikedVideo value)? unlikedVideo,
  }) {
    return likedVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LikedVideo value)? likedVideo,
    TResult Function(UnlikedVideo value)? unlikedVideo,
    required TResult orElse(),
  }) {
    if (likedVideo != null) {
      return likedVideo(this);
    }
    return orElse();
  }
}

abstract class LikedVideo implements FastlaughEvent {
  factory LikedVideo({required int id}) = _$LikedVideo;

  int get id;
  @JsonKey(ignore: true)
  $LikedVideoCopyWith<LikedVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnlikedVideoCopyWith<$Res> {
  factory $UnlikedVideoCopyWith(
          UnlikedVideo value, $Res Function(UnlikedVideo) then) =
      _$UnlikedVideoCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$UnlikedVideoCopyWithImpl<$Res>
    extends _$FastlaughEventCopyWithImpl<$Res>
    implements $UnlikedVideoCopyWith<$Res> {
  _$UnlikedVideoCopyWithImpl(
      UnlikedVideo _value, $Res Function(UnlikedVideo) _then)
      : super(_value, (v) => _then(v as UnlikedVideo));

  @override
  UnlikedVideo get _value => super._value as UnlikedVideo;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(UnlikedVideo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnlikedVideo implements UnlikedVideo {
  _$UnlikedVideo({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FastlaughEvent.unlikedVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnlikedVideo &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $UnlikedVideoCopyWith<UnlikedVideo> get copyWith =>
      _$UnlikedVideoCopyWithImpl<UnlikedVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) likedVideo,
    required TResult Function(int id) unlikedVideo,
  }) {
    return unlikedVideo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? likedVideo,
    TResult Function(int id)? unlikedVideo,
  }) {
    return unlikedVideo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? likedVideo,
    TResult Function(int id)? unlikedVideo,
    required TResult orElse(),
  }) {
    if (unlikedVideo != null) {
      return unlikedVideo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LikedVideo value) likedVideo,
    required TResult Function(UnlikedVideo value) unlikedVideo,
  }) {
    return unlikedVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LikedVideo value)? likedVideo,
    TResult Function(UnlikedVideo value)? unlikedVideo,
  }) {
    return unlikedVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LikedVideo value)? likedVideo,
    TResult Function(UnlikedVideo value)? unlikedVideo,
    required TResult orElse(),
  }) {
    if (unlikedVideo != null) {
      return unlikedVideo(this);
    }
    return orElse();
  }
}

abstract class UnlikedVideo implements FastlaughEvent {
  factory UnlikedVideo({required int id}) = _$UnlikedVideo;

  int get id;
  @JsonKey(ignore: true)
  $UnlikedVideoCopyWith<UnlikedVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FastlaughStateTearOff {
  const _$FastlaughStateTearOff();

  _FastlaughState call(
      {required List<Downloads> vediosList,
      required bool isLoading,
      required bool isError}) {
    return _FastlaughState(
      vediosList: vediosList,
      isLoading: isLoading,
      isError: isError,
    );
  }
}

/// @nodoc
const $FastlaughState = _$FastlaughStateTearOff();

/// @nodoc
mixin _$FastlaughState {
  List<Downloads> get vediosList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastlaughStateCopyWith<FastlaughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastlaughStateCopyWith<$Res> {
  factory $FastlaughStateCopyWith(
          FastlaughState value, $Res Function(FastlaughState) then) =
      _$FastlaughStateCopyWithImpl<$Res>;
  $Res call({List<Downloads> vediosList, bool isLoading, bool isError});
}

/// @nodoc
class _$FastlaughStateCopyWithImpl<$Res>
    implements $FastlaughStateCopyWith<$Res> {
  _$FastlaughStateCopyWithImpl(this._value, this._then);

  final FastlaughState _value;
  // ignore: unused_field
  final $Res Function(FastlaughState) _then;

  @override
  $Res call({
    Object? vediosList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      vediosList: vediosList == freezed
          ? _value.vediosList
          : vediosList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FastlaughStateCopyWith<$Res>
    implements $FastlaughStateCopyWith<$Res> {
  factory _$FastlaughStateCopyWith(
          _FastlaughState value, $Res Function(_FastlaughState) then) =
      __$FastlaughStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Downloads> vediosList, bool isLoading, bool isError});
}

/// @nodoc
class __$FastlaughStateCopyWithImpl<$Res>
    extends _$FastlaughStateCopyWithImpl<$Res>
    implements _$FastlaughStateCopyWith<$Res> {
  __$FastlaughStateCopyWithImpl(
      _FastlaughState _value, $Res Function(_FastlaughState) _then)
      : super(_value, (v) => _then(v as _FastlaughState));

  @override
  _FastlaughState get _value => super._value as _FastlaughState;

  @override
  $Res call({
    Object? vediosList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_FastlaughState(
      vediosList: vediosList == freezed
          ? _value.vediosList
          : vediosList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FastlaughState implements _FastlaughState {
  const _$_FastlaughState(
      {required this.vediosList,
      required this.isLoading,
      required this.isError});

  @override
  final List<Downloads> vediosList;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'FastlaughState(vediosList: $vediosList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FastlaughState &&
            const DeepCollectionEquality()
                .equals(other.vediosList, vediosList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vediosList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$FastlaughStateCopyWith<_FastlaughState> get copyWith =>
      __$FastlaughStateCopyWithImpl<_FastlaughState>(this, _$identity);
}

abstract class _FastlaughState implements FastlaughState {
  const factory _FastlaughState(
      {required List<Downloads> vediosList,
      required bool isLoading,
      required bool isError}) = _$_FastlaughState;

  @override
  List<Downloads> get vediosList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$FastlaughStateCopyWith<_FastlaughState> get copyWith =>
      throw _privateConstructorUsedError;
}
