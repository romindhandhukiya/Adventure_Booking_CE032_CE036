import 'package:flutter/material.dart';
import 'package:cardone1/form/empty_state.dart';
import 'package:cardone1/form/form.dart';
import 'package:cardone1/form/user.dart';

import '../thank_you/thanku_page.dart';

class MultiForm extends StatefulWidget {
  @override
  _MultiFormState createState() => _MultiFormState();
}

class _MultiFormState extends State<MultiForm> {
  List<UserForm> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .0,
        leading: Icon(
          Icons.wb_cloudy,
        ),
        title: Text('Book Ride'),
        actions: <Widget>[
         TextButton(
            child: Text('BOOK'),
            //textColor: Colors.white,
            onPressed: onSave,
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF30C1FF),
              Color(0xFF2AA7DC),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: users.length <= 0
            ? Center(
          child: EmptyState(
            title: 'Book',
            message: 'Add field to press below button',
          ),
        )
            : ListView.builder(
          addAutomaticKeepAlives: true,
          itemCount: users.length,
          itemBuilder: (_, i) => users[i],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: MaterialButton(
              child: Text('Submit',style: TextStyle(color: Colors.white),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ThankYouPage(title: 'Booking')),
                );
              },
              // foregroundColor: Colors.white,
            ),
          ),
          SizedBox(
            width: 40,
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: onAddForm,
            foregroundColor: Colors.white,
          ),
        ],
      )
    );
  }

  ///on form user deleted
  void onDelete(User _user) {
    setState(() {
      var find = users.firstWhere(
            (it) => it.user == _user,
      );
      if (find != null) users.removeAt(users.indexOf(find));
    });
  }

  ///on add form
  void onAddForm() {
    setState(() {
      var _user = User();
      users.add(UserForm(
        user: _user,
        onDelete: () => onDelete(_user), key: Key('abc'),
      ));
    });
  }

  ///on save forms
  void onSave() {
    if (users.length > 0) {
      var allValid = true;
      users.forEach((form) => allValid = allValid && form.isValid());
      if (allValid) {
        var data = users.map((it) => it.user).toList();
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('List of Users'),
              ),
              body: ListView.builder(
                itemCount: data.length,
                itemBuilder: (_, i) => ListTile(
                  leading: CircleAvatar(
                    child: Text(data[i].fullName.substring(0, 1)),
                  ),
                  title: Text(data[i].fullName),
                  subtitle: Text(data[i].age),
                ),
              ),
            ),
          ),
        );
      }
    }
  }
}