import 'package:flutter/material.dart';
import 'pages/EventList.dart';
import 'pages/EventFocus.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final appTitle = 'SEATSTIR';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: LoginPage(),
      ),
    );
  }
}

// Create a Form Widget
class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

// Create a corresponding State class. This class will hold the data related to
// the form.
class LoginPageState extends State<LoginPage> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();
  String _email, _password;
  final String _testJstr = "{\"login\":\"success\",\"user_id\":\"39293\",\"event\":[{\"eid\":\"4589\",\"pid\":\"14124\",\"display_date_start\":\"2015-07-18\",\"display_time_start\":\"00:00:00\",\"display_date_end\":\"2015-07-22\",\"display_time_end\":\"16:00:00\",\"isActive\":\"1\",\"city_id\":\"2\",\"image\":\"images\\/events\\/X-at-Music-Box--Cleveland--July-22-o7wvc0cXgt.jpg\",\"shortDesc\":\"X at Music Box (Cleveland) July 22\",\"eventid\":\"4589\",\"qtysum\":\"12\",\"qty\":\"2\",\"allocated\":\"20\",\"qtyalloc\":\"120\"},{\"eid\":\"4583\",\"pid\":\"14112\",\"display_date_start\":\"2015-07-15\",\"display_time_start\":\"00:00:00\",\"display_date_end\":\"2015-07-20\",\"display_time_end\":\"16:00:00\",\"isActive\":\"1\",\"city_id\":\"2\",\"image\":\"images\\/events\\/Waxahatchee-at-Beachland-Ballroom---July-20--Cleveland--DH4FXri0K3.jpg\",\"shortDesc\":\"Waxahatchee at Beachland Ballroom - July 20 (Cleveland)\",\"eventid\":\"4583\",\"qtysum\":null,\"qty\":null,\"allocated\":\"10\",\"qtyalloc\":\"10\"},{\"eid\":\"4532\",\"pid\":\"14022\",\"display_date_start\":\"2015-07-09\",\"display_time_start\":\"00:00:00\",\"display_date_end\":\"2015-08-07\",\"display_time_end\":\"11:00:00\",\"isActive\":\"1\",\"city_id\":\"2\",\"image\":\"images\\/events\\/cellar-door-rendezvous-ft---seafair-and-the-querencia-orchestra-sxbcum8iiv.jpg\",\"shortDesc\":\"Cellar Door Rendezvous ft.. Seafair and the Querencia Orchestra\",\"eventid\":\"4532\",\"qtysum\":\"26\",\"qty\":\"2\",\"allocated\":\"50\",\"qtyalloc\":\"650\"},{\"eid\":\"4531\",\"pid\":\"14021\",\"display_date_start\":\"2015-07-09\",\"display_time_start\":\"00:00:00\",\"display_date_end\":\"2015-07-30\",\"display_time_end\":\"11:00:00\",\"isActive\":\"1\",\"city_id\":\"2\",\"image\":\"images\\/events\\/blues-traveler-vvcnozapze.jpg\",\"shortDesc\":\"Blues Traveler\",\"eventid\":\"4531\",\"qtysum\":\"24\",\"qty\":\"2\",\"allocated\":\"20\",\"qtyalloc\":\"240\"},{\"eid\":\"4512\",\"pid\":\"13983\",\"display_date_start\":\"2015-07-07\",\"display_time_start\":\"00:00:00\",\"display_date_end\":\"2015-07-22\",\"display_time_end\":\"16:00:00\",\"isActive\":\"1\",\"city_id\":\"2\",\"image\":\"images\\/events\\/Chris-Knight-Full-Band-Show----Radio-Birds-6MKdYVtJ7G.jpg\",\"shortDesc\":\"Chris Knight - Full Band Show! (Cleveland)\",\"eventid\":\"4512\",\"qtysum\":\"11\",\"qty\":\"2\",\"allocated\":\"10\",\"qtyalloc\":\"60\"},{\"eid\":\"4510\",\"pid\":\"13976\",\"display_date_start\":\"2015-07-06\",\"display_time_start\":\"00:00:00\",\"display_date_end\":\"2015-07-26\",\"display_time_end\":\"11:00:00\",\"isActive\":\"1\",\"city_id\":\"2\",\"image\":\"images\\/events\\/sleeping-beauty---swan-lake--olmsted-falls--ypxp4ibejf.jpg\",\"shortDesc\":\"Sleeping Beauty \\/ Swan Lake (Olmsted Falls)\",\"eventid\":\"4510\",\"qtysum\":\"22\",\"qty\":\"2\",\"allocated\":\"50\",\"qtyalloc\":\"550\"},{\"eid\":\"4507\",\"pid\":\"14085\",\"display_date_start\":\"2015-07-15\",\"display_time_start\":\"00:00:00\",\"display_date_end\":\"2015-07-23\",\"display_time_end\":\"16:00:00\",\"isActive\":\"1\",\"city_id\":\"2\",\"image\":\"images\\/events\\/camelot-at-mercury-theatre-company--s--euclid--acapyiviao.jpg\",\"shortDesc\":\"Camelot  (S. Euclid)\",\"eventid\":\"4507\",\"qtysum\":\"22\",\"qty\":\"2\",\"allocated\":\"30\",\"qtyalloc\":\"270\"},{\"eid\":\"4220\",\"pid\":\"13322\",\"display_date_start\":\"2015-06-29\",\"display_time_start\":\"00:00:00\",\"display_date_end\":\"2015-07-21\",\"display_time_end\":\"12:00:00\",\"isActive\":\"1\",\"city_id\":\"2\",\"image\":\"images\\/events\\/baseball---lake-county-captains-vs-fort-wayne---july-21--eastlake--kycbitiau3.jpg\",\"shortDesc\":\"Baseball - Lake County Captains vs Fort Wayne - July 21 (Eastlake)\",\"eventid\":\"4220\",\"qtysum\":\"56\",\"qty\":\"2\",\"allocated\":\"200\",\"qtyalloc\":\"5200\"}]}";


  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Email'
            ),
            validator: (String value) {
              if (value.isEmpty)
                return 'Please enter some text';
              else
                return null;
            },
            onSaved: (String value) {
              _email = value;
            },
            //    onSaved: (value) => _email = value,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Password'
            ),
            onSaved: (String value) {
              _password = value;
            },
            validator: (String value) {
              if (value.isEmpty)
                return 'Please enter more text';
              else
                return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  print (_email);
                  print (_password);
                  print ('hello');
                  // Within the `FirstScreen` Widget

                  Navigator.push(
                    context,
                    //   MaterialPageRoute(builder: (context) => EventFocus()),
                    MaterialPageRoute(builder: (context) => EventList(data: _testJstr)),
                  );

                  // If the form is valid, we want to show a Snackbar
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}