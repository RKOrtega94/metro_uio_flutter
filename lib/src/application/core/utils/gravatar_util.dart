/* class GravatarUtil {
  static const String _baseUrl =
      'https://www.gravatar.com/avatar/{md5_hash}?s={size}&d={default}';

  static String getGravatarUrl({
    required String email,
    int size = 80,
    String defaultImage = 'identicon',
  }) {
    final hash = _generateMd5(email);
    return _baseUrl
        .replaceFirst('{md5_hash}', hash)
        .replaceFirst('{size}', size.toString())
        .replaceFirst('{default}', defaultImage);
  }
}
 */