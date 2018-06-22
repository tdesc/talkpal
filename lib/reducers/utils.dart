import 'package:built_collection/built_collection.dart';

bool containsKey<K,V>(BuiltMap<K, V> map, V key, Function getter, V innerKey)
{
    if( map.containsKey(key))
    {
        BuiltMap<K, V> inner = getter(map[key]);
        return inner.containsKey(innerKey);
    }
  return false;
}