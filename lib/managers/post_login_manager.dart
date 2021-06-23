import 'dart:convert';

import 'package:elearning/models/registration.dart';
import 'package:http/http.dart';

class PostLogin{

  postlogin({
    String email,
    String password,
    Function() onSuccess,
    Function() onFail
  })async{

    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    var request = MultipartRequest('POST', Uri.parse('http://orse.herokuapp.com/api/login?email=$email&password=$password'));
    request.fields.addAll({
      'email': email,
      'password': password,
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
