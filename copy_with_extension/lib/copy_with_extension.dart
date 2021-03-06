/// Provides annotation class to use with
/// [copy_with_extension_gen](https://pub.dev/packages/copy_with_extension_gen).
library copy_with_extension;

/// Annotation used to indicate that the `copyWith` extension should be generated.
class CopyWith {
  /// Creates a new [CopyWith] instance.
  /// Set `generateCopyWithNull` to `true` for generating an extra `copyWithNull` function that allows you to nullify the properties.
  /// Set `generateCopyWithOptional` to `true` for generating an extra `copyWithOptional` function that allows you to pass quiver Optionals.
  const CopyWith({
    this.generateCopyWithNull = false,
    this.generateCopyWithOptional = false,
  })  : assert(generateCopyWithNull is bool),
        assert(generateCopyWithOptional is bool);

  final bool generateCopyWithNull;
  final bool generateCopyWithOptional;
}
