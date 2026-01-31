/// Interface for encoding/decoding a specific type.
abstract class ExtraCodec<T> {
  const ExtraCodec();

  String get typeId;

  bool canEncode(Object? input);

  /// Encodes the input to a JSON-serializable format.
  Object? encode(T input);

  /// Decodes the input to the original type.
  T decode(Object? input);
}
