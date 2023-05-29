class Cache<T> {
  final Map<String, T> _cache = {};

  void set(String key, T value) {
    _cache[key] = value;
  }

  T? get(String key) {
    return _cache[key];
  }

  void remove(String key) {
    _cache.remove(key);
  }

  void clear() {
    _cache.clear();
  }

  List<String> getKeys() {
    return _cache.keys.toList();
  }

  bool containsKey(String key) {
    return _cache.containsKey(key);
  }
}
