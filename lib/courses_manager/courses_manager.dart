import 'dart:convert';
import 'package:elearning/courses_model/courses_model.dart';
import 'package:http/http.dart';

class GetAllCourses {

  getallcourses({
    String id,
    Function(CoursessWithLesson) onSuccess,
    Function() onFail
  }) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI1IiwianRpIjoiNzJlMjFmYzUzNjc0MzQ2NWIzMWUwYWI5MWIzZWE0ZGYzZDQ3ZjU2ODE1OTAxMjY5YTBhZDE2ZmU0MzMxZWI3Njk1YWU3OTBhMjA3M2E4ZjEiLCJpYXQiOjE2MjQxODgxODguOTM4NjE0LCJuYmYiOjE2MjQxODgxODguOTM4NjIyLCJleHAiOjE2NTU3MjQxODguOTIyNTg2LCJzdWIiOiI1Iiwic2NvcGVzIjpbXX0.xzUPV03k_X1RpLhPNkS2zT5_a5gTNFcpB4nXmTc1PKWLnjvds7lr6yqpCsCXrZm_kPoh4O2lvF1XK783tSl75XbaEP3E_lUhBC6r4ulOLdwCeilxutQ3z6fiaZqjH-eNBXEW-1DfmfBbNDmjO41xaHmWqX7VhBs-V9wrOc_zbQOyhP2_fZgpJFHqq1iayGa13HPVCAzqwBMrNpBw_U0mb1zL6ufkUsX1i3rbRkSNJfqdVnIo6J1_RAjkYf4TWmuhO8KdveaU3E9_eLdj0XBQ74jPgnEReX8hefYagcHnF-K6cWl2j9bqqyna2pA8oPnGyGIhsBAKFvBzMVksgw47VTIh7Fyaw_4lfyCGYaAcWSOsVUbGgoOEBaFm8_myB0TSgwiIJHsLXtiPXe2_8DHj4IbWxp7R1lMOg455_PU-wcjc5X0qG6egPA_qLCfsx-3Tfe2MxKYuN3P4pzx7iy6eG-7CCdDcuTM6z_Z_qdGmhFwhJo9fX07ErAWGEypP1yB9dOYWutRiuMl-3Un8j6LPcIzUxnN_2WSzT3NxfJ5ooCgSkUYmLIukuidZQZMOrgNPZ_9AK-v2Al5B0xhlud_rfpWwP6-RH9_Ezyi_R1ABghB41OLizA8fDU9j2l5B9dLmUWejG_u2b5ih1QUvwysvG8zvc2WqdtJRFDOf4yulICc',
      // 'Cookie': 'XSRF-TOKEN=eyJpdiI6ImZCcXo2VkFtUTNZZ09GNkhuV1ZWc3c9PSIsInZhbHVlIjoidEVib1ZEM1VDMjBidVltUnFmM2xOTERFOGliclRCQTIxRWF0V29CdVA1YlNJS3gvVkpNTkl4Qm9yeXZxYmZKenBtc0tRQVN6NVJHZ3FZK01USEVxQ0ZjR0JMbExlT2hkSHkrZE4yaW54RVZsNS90MWtLRENFYWtPYXB1ZVRGVDgiLCJtYWMiOiJhODkyYmNkYzU3Y2ZhMjlmYzk1MzdmNmZjMGM2YjM1ODQ1ZWY3NGQyNmEwMzljOTQyN2FmMTM4MTY3MGE3YjdmIn0%3D; orse_session=eyJpdiI6ImVERHNvYkF1ZU5SM2xjU0VwTWVNdEE9PSIsInZhbHVlIjoiYUJpV3BtbDkyUFFYSSthYVNFT2VlMG9CdE9taSs1LzRrRFhpelV3cW9NNWpYSG45cDFKT3N2NUhwMzd3Z0xqSW02OUJ4Tk1tbTRTOTcvNTVjN0wrR09tbU1wYVRLVGRpU1oxTnpHdHllOWJwam1rdEtRMGFlMy9Pa3RTQzRLNGIiLCJtYWMiOiI4ODczZGY5MjVkNjliOWZhZjFlNTQxZjkwNmExYjE5MjgzYzNjOGMzZjNhOWU5ZTEzNzZmMzEyZjMxZTA4YzA1In0%3D'
    };
    var request = Request(
        'GET', Uri.parse('https://orse.herokuapp.com/api/courses/' + id));

    request.headers.addAll(headers);

    StreamedResponse streamResponse = await request.send();
    var response = await Response.fromStream(streamResponse);

    if (response.statusCode == 200) {
      print(response.body);
      Map<String, dynamic> coursesJson = jsonDecode(response.body);
      print(coursesJson);
      CoursessWithLesson corse = CoursessWithLesson.fromJson(coursesJson);
      onSuccess(corse);
    }
    else {
      print(response.reasonPhrase);
    }
  }

}