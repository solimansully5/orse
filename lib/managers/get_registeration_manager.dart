import 'package:http/http.dart';

class GetRegistration{

  postRegistration({
    String email,
    String name,
    String password,
    String confirmation,
    Function() onSuccess,
    Function() onFail
  })async{

    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    var request = MultipartRequest('POST', Uri.parse('http://orse.herokuapp.com/api/register?email=$email&name=$name&password=$password&password_confirmation=$confirmation'));
    request.fields.addAll({
      'email': email,
      'name': name,
      'password': password,
      'password_confirmation': confirmation,
    });

    request.headers.addAll(headers);

    StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      onSuccess();
    }
    else {
      /// to do if condition for each error code and parse it to extract the message and show it to the user
      print(await response.stream.bytesToString());
      onFail();
    }

  }

}
