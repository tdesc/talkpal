// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// Generator: BuiltReduxGenerator
// **************************************************************************

class _$NewsActions extends NewsActions {
  factory _$NewsActions() => new _$NewsActions._();
  _$NewsActions._() : super._();

  final ActionDispatcher<Article> update =
      new ActionDispatcher<Article>('NewsActions-update');
  final ActionDispatcher<Null> load =
      new ActionDispatcher<Null>('NewsActions-load');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    update.setDispatcher(dispatcher);
    load.setDispatcher(dispatcher);
  }
}

class NewsActionsNames {
  static final ActionName<Article> update =
      new ActionName<Article>('NewsActions-update');
  static final ActionName<Null> load = new ActionName<Null>('NewsActions-load');
}

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

class _$News extends News {
  @override
  final BuiltMap<String, Article> map;

  factory _$News([void updates(NewsBuilder b)]) =>
      (new NewsBuilder()..update(updates)).build();

  _$News._({this.map}) : super._() {
    if (map == null) throw new BuiltValueNullFieldError('News', 'map');
  }

  @override
  News rebuild(void updates(NewsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsBuilder toBuilder() => new NewsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! News) return false;
    return map == other.map;
  }

  @override
  int get hashCode {
    return $jf($jc(0, map.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('News')..add('map', map)).toString();
  }
}

class NewsBuilder implements Builder<News, NewsBuilder> {
  _$News _$v;

  MapBuilder<String, Article> _map;
  MapBuilder<String, Article> get map =>
      _$this._map ??= new MapBuilder<String, Article>();
  set map(MapBuilder<String, Article> map) => _$this._map = map;

  NewsBuilder();

  NewsBuilder get _$this {
    if (_$v != null) {
      _map = _$v.map?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(News other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$News;
  }

  @override
  void update(void updates(NewsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$News build() {
    _$News _$result;
    try {
      _$result = _$v ?? new _$News._(map: map.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'News', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
