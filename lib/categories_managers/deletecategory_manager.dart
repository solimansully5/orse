import 'dart:convert';
import 'package:elearning/categories_models/deletecategory.dart';
import 'package:http/http.dart';

class DeleteCategory{

  deletecategory({
    Function(Data) onSuccess,
    Function() onFail
  })async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMzkyZjRhYjc0ZTM1MTRjYjM5MjIxYjYzYTgyN2IxOTY2YWExYmYzOTUzMzQ2MzAwOTFmZWZjYTJkZTY0NzlhNTAwNmUzNjEzMWU2ZWJhODUiLCJpYXQiOjE2MTg5MjU3MTguNTg5NDc3LCJuYmYiOjE2MTg5MjU3MTguNTg5NDg0LCJleHAiOjE2NTA0NjE3MTguNTcxNDYxLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.c4oPr36UxMSL5JnMVD5GnKffftBCqd5Y8yI0Tv6CIIVfF7zMDGdDt7mfvUj2v32RgRt8lOjFtuHRTeDcODR1oYUCGVlxg7oeqhO58LmsMuetgSCTaYk6wepcO57x7S4SoBnT9Jqzc5n2xDJSZ8oXvaTxBb14fra3rKzIGjUDoRA7icp8hEC8fowxNqDJ5DCN-7R08KmE5y0Wor_LtIwkypWYZW_9eDXy1JujcDCPXFe7AvASZfnNqRLiRBcboctrjL4HwNn7LbpOxGwuANvfOiJ6Q0sVdNOG7crBtw9VAq5m2cPzv2Jq8lOUA_l_V7uzWNuLPtD0vFyVTzY0duaF1fq3-72fiuvBNzhvRy3hXdF953qVUpMjWJg3dyWc83pJFZsejUD-mKRG3oe1HNLRnN6tvnbHknqackR09HcREcnE7VRyWOhtL04t2xZMPl6MqjArVI7E8GDup3lq-7v-_QBE7CxjNJig_5EEobghpS4gOQj8wwRDAtSWyhr4k6hvqU8_VYl94kyRSVPetCJrnLij87tLJzvJMIUG4it8JwtnPEV9qiwh5zQT2Cj7oJV8zzUNQOgEiGNa-Y5wTIMn8sm84IkiSRdZUGk-OamAic7CwSMofYA0bm7iBIkCAU7x4Y4cdesnTQrpfIJsW8VsvIpaKcJ_0y2qt1ONKa2cjb0'
    };
    var request = Request('DELETE', Uri.parse('http://orse.herokuapp.com/api/categories/131'));

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
