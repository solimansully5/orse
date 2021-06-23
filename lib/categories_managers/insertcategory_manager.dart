import 'package:elearning/categories_models/insertcategory.dart';
import 'package:http/http.dart';

class InsertAllCategories {

  InsertCategories({
    String name,
    String description,
    Function(Data) onSuccess,
    Function() onFail
  }) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI1IiwianRpIjoiZmI5ZDU2NDNhNTczYzBhYTJkYmEzMDRhNDQ2NTFmMzcxN2M3ODZlOGVkOWNlOTQ3ODNjYTJkZDkxZGJmZTUyYjc3YmI5Y2RhOWY2MWIzNTkiLCJpYXQiOjE2MjI2NDU1MzkuMzkwNTk3LCJuYmYiOjE2MjI2NDU1MzkuMzkwNjA5LCJleHAiOjE2NTQxODE1MzkuMzQ5MDU4LCJzdWIiOiI1Iiwic2NvcGVzIjpbXX0.KpGfwKIbqgkLW4zF_RKmV-jgTfGnY2e9b1REvnX6DPk6IOIeV1cLxiXFI-FKiG3vZi8nyUbjI_ot_6oCi68LDOzibQCNUeREF4Lw0UKEkL67sbJO8jAWgKGtGUHa61S0F84tydbjmJDIjhV7JEyAcxWxDYdcHuuzw1rfgBQGNwczZk5K7QIwYovqk4jxYXp1U9phv-SbGoLEgcgEoxEC_c8DEAqukRVq0jHWFcRul2wLbLTRlLW-TdKc5PK27dGKDyXUZM971to_URDagZDDdRPWxSIYwATYyWw1Wlzh7zF0oq7rBz__X1xgcYBWYBREDfB-Jy1ZdskgJB0icsiTr3bGW_dUmDxQGf3lGxZu8G-xQR8g52drsbRR-fR3p5cQe7Xck6_lymyfBi6hP3dbPlWnnZtm_UvCFV0245GPOhA5O76NUWrZ5eazIa2Ag24EBly1SH9flSDstl-OPdTNCDn4hLZ8hn6nhlvdWTQcQD6YjykAPXhf-rFEq1GLE64_kZJLseVi4kdIbs-twfxIRnXa6Tp4u96uKMgQEKsbNquY1pnktb04F1DBMnTrTudaFo7bB-qmLJAWmHKQT_GHOxqVfy8PJeQQhO3xjwMejT6BsTjWjaOs4rfgV-aeKQgSuNFNsMkw4TOyPZtEZMUU6BLffNy9oSsukT7U6fDy8eQ'
    };
    var request = MultipartRequest('POST', Uri.parse(
        'http://orse.herokuapp.com/api/categories?name=spanish&description=test'));
    request.fields.addAll({
      'name': 'spanish',
      'description': 'spanish'
    });

    request.headers.addAll(headers);

    StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  }
}
