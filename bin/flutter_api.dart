import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main()
{

  var users;
  
  get_users_data() async
  {
    var req = await http.get('https://jsonplaceholder.typicode.com/users');
    
    users = convert.jsonDecode(req.body);

    return users;
  }

  get_users_data().then((onValue){
    for (var user in onValue) {
      print(user['email']);
    }
  });

}