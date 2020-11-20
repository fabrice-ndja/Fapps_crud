import 'package:Fapps_crud/helpers/FirestoreHelper.dart';
import 'package:Fapps_crud/models/user.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CRUDScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => GetUserScreen()));
              },
              child: Text('Récupérer un user par id')),
          FlatButton(onPressed: () {}, child: Text('Update email')),
          FlatButton(onPressed: () {}, child: Text('Supprimer un user')),
          FlatButton(onPressed: () {}, child: Text('Créer un user')),
        ],
      ),
    );
  }
}

class GetUserScreen extends StatefulWidget {
  @override
  _GetUserScreenState createState() => _GetUserScreenState();
}

class _GetUserScreenState extends State<GetUserScreen> {
  String result = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Récupérer utilisateur'),
      ),
      body: Column(
        children: [
          TextField(
            controller: this.textEditingController,
          ),
          RaisedButton(
              child: Text('GET'),
              onPressed: () async {
                UserModel user = await FirestoreHelper.instance
                    .getUserById(this.textEditingController.text);

                setState(() {
                  this.result = user.name;
                });
              }),
          Text(this.result),
        ],
      ),
    );
  }
}
