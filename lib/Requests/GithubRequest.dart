import 'package:http/http.dart' as http;

class Github {
  final String userName;
  static const api = 'https://api.github.com/';
  static const token = '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';

  final String query = "?token=${token}";

  Github(this.userName);

  Future<http.Response> fetchUser() {
    return http.get(api + 'users/' + userName + query);
  }

  Future<http.Response> fetchFollowing() {
    return http.get(api + 'users/' + userName + '/following' + query);
  }
}