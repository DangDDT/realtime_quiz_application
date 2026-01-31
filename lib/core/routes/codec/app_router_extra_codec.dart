import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:realtime_quiz_app/core/routes/codec/extra_codec.dart';

/// Codec for serializing/deserializing complex objects as GoRouter extras.
class AppRouterExtraCodec extends Codec<Object?, Object?> {
  const AppRouterExtraCodec();

  @override
  Converter<Object?, Object?> get decoder => const AppRouterExtraDecoder();

  @override
  Converter<Object?, Object?> get encoder => const AppRouterExtraEncoder();
}

/// Registry of codecs for supported types.
class ExtraCodecRegistry {
  static final Set<ExtraCodec<dynamic>> _codecs = {};

  static ExtraCodec<dynamic>? getCodec(String typeId) =>
      _codecs.firstWhere((codec) => codec.typeId == typeId);
}

/// Decoder for router extras.
class AppRouterExtraDecoder extends Converter<Object?, Object?> {
  const AppRouterExtraDecoder();

  @override
  Object? convert(Object? input) {
    if (input == null) return null;

    if (input is! List<Object?>) {
      throw FormatException('Expected a list, got ${input.runtimeType}');
    }

    final typeId = input[0] as String?;
    final data = input[1];

    if (typeId == null) {
      throw FormatException('Missing type identifier in input: $input');
    }

    final codec = ExtraCodecRegistry.getCodec(typeId);

    if (codec == null) {
      debugPrint('No codec found for typeId: $typeId');
      return data;
    }

    return codec.decode(data);
  }
}

/// Encoder for router extras.
class AppRouterExtraEncoder extends Converter<Object?, Object?> {
  const AppRouterExtraEncoder();

  @override
  Object? convert(Object? input) {
    if (input == null) return null;

    for (final codec in ExtraCodecRegistry._codecs) {
      if (codec.canEncode(input)) {
        return [codec.typeId, codec.encode(input)];
      }
    }

    debugPrint('No codec found for type: ${input.runtimeType}');
    return input;
  }
}
