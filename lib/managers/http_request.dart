import 'package:http/http.dart' as http;

class HTTPRequest{
  getRequest({String url, Function(http.Response) onSuccess, Function(int) onFail}) async{
    var response = await http.get(url);
    if(response.statusCode == 200){
      onSuccess(response);
    }else{
      onFail(response.statusCode);
    }
  }

  postRequest({String url, Map headers, Map body, Function(http.Response) onSuccess, Function(int) onFail}) async{
    var response = await http.post(url, headers: headers, body: body);
    if(response.statusCode == 200){
      onSuccess(response);
    }else{
      onFail(response.statusCode);
    }
  }
}
