import 'package:flutter/material.dart';
import 'main.dart';

String typeValue, startDateValue, endDateValue, isDeliveredValue;

class searchDebits extends StatefulWidget {
  const searchDebits({Key key}) : super(key: key);

  @override
  _searchDebitsState createState() => _searchDebitsState();
}

class _searchDebitsState extends State<searchDebits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () =>
              Navigator.popUntil(context, ModalRoute.withName("/homepage")),
        ),
        title: Text("SEARCH DEBITS"),
        backgroundColor: Color(0xff67acb0),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff518199),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    color: Color(0xfff0e8ca),
                    width: 280,
                    height: 30,
                    child: TextFormField()),
                Container(
                  width: 100.0,
                  height: 30.0,
                  color: Color(0xff4e9b2b),
                  child: MaterialButton(
                    textColor: Colors.white,
                    child: Text("Search"),
                    onPressed: () => {},
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 75.0,
                  height: 30.0,
                  color: Color(0xfff0e8ca),
                  child: DropdownButton<String>(
                    value: typeValue,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor: Colors.black,
                    items: <String>[
                      'Fiziksel',
                      'Dijital',
                      'İnsan Kaynağı',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      );
                    }).toList(),
                    hint: Text(
                      "Type",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    onChanged: (String value) {
                      setState(() {
                        typeValue = value;
                      });
                    },
                  ),
                ),
                Container(
                  width: 90.0,
                  height: 30.0,
                  color: Color(0xfff0e8ca),
                  child: DropdownButton<String>(
                    value: startDateValue,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor: Colors.black,
                    items: <String>[
                      'Eskiden Yeniye',
                      'Yeniden Eskiye',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      );
                    }).toList(),
                    hint: Text(
                      "Start Date",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    onChanged: (String value) {
                      setState(() {
                        startDateValue = value;
                      });
                    },
                  ),
                ),
                Container(
                  width: 85.0,
                  height: 30.0,
                  color: Color(0xfff0e8ca),
                  child: DropdownButton<String>(
                    value: endDateValue,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor: Colors.black,
                    items: <String>[
                      'Eskiden Yeniye',
                      'Yeniden Eskiye',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      );
                    }).toList(),
                    hint: Text(
                      "End Date",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    onChanged: (String value) {
                      setState(() {
                        endDateValue = value;
                      });
                    },
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 30.0,
                  color: Color(0xfff0e8ca),
                  child: DropdownButton<String>(
                    value: isDeliveredValue,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor: Colors.black,
                    items: <String>[
                      'True',
                      'False',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      );
                    }).toList(),
                    hint: Text(
                      "isDelivered",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    onChanged: (String value) {
                      setState(() {
                        isDeliveredValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: kart()),
                Container(child: kart()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: kart()),
                Container(child: kart()),
              ],
            ),
          ]),
    );
  }
}

class kart extends StatefulWidget {
  @override
  kartWidget createState() => kartWidget();
}

class kartWidget extends State {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [
            Container(
                width: 90,
                height: 20,
                color: Color(0xff4e9b2b),
                child: Text("Assigner")),
            Container(
                width: 100,
                height: 20,
                color: Color(0xfff0e8ca),
                child: TextFormField())
          ],
        ),

        Row(
          children: [
            Container(
                width: 90,
                height: 20,
                color: Color(0xff4e9b2b),
                child: Text("User")),
            Container(
                width: 100,
                height: 20,
                color: Color(0xfff0e8ca),
                child: TextFormField())
          ],
        ),

        Row(
          children: [
            Container(
                width: 90,
                height: 20,
                color: Color(0xff4e9b2b),
                child: Text("Asset Type")),
            Container(
                width: 100,
                height: 20,
                color: Color(0xfff0e8ca),
                child: TextFormField())
          ],
        ),

        Row(
          children: [
            Container(
                width: 90,
                height: 20,
                color: Color(0xff4e9b2b),
                child: Text("Asset Name")),
            Container(
                width: 100,
                height: 20,
                color: Color(0xfff0e8ca),
                child: TextFormField())
          ],
        ),

        Row(
          children: [
            Container(
                width: 90,
                height: 20,
                color: Color(0xff4e9b2b),
                child: Text("Asset Desc.")),
            Container(
                width: 100,
                height: 20,
                color: Color(0xfff0e8ca),
                child: TextFormField())
          ],
        ),

        Row(
          children: [
            Container(
                width: 90,
                height: 20,
                color: Color(0xff4e9b2b),
                child: Text("Start Date")),
            Container(
                width: 100,
                height: 20,
                color: Color(0xfff0e8ca),
                child: TextFormField())
          ],
        ),

        Row(
          children: [
            Container(
                width: 90,
                height: 20,
                color: Color(0xff4e9b2b),
                child: Text("End Date")),
            Container(
                width: 100,
                height: 20,
                color: Color(0xfff0e8ca),
                child: TextFormField())
          ],
        ),

        Row(
          children: [
            Container(
                width: 90,
                height: 20,
                color: Color(0xff4e9b2b),
                child: Text("Created Date")),
            Container(
                width: 100,
                height: 20,
                color: Color(0xfff0e8ca),
                child: TextFormField())
          ],
        ),

        Row(
          children: [
            Container(
                width: 90,
                height: 20,
                color: Color(0xff4e9b2b),
                child: Text("Edited Date")),
            Container(
                width: 100,
                height: 20,
                color: Color(0xfff0e8ca),
                child: TextFormField())
          ],
        ),

        Row(
          children: [
            Container(
                width: 90,
                height: 20,
                color: Color(0xff4e9b2b),
                child: Text("isDelivered")),
            Container(
                width: 100,
                height: 20,
                color: Color(0xfff0e8ca),
                child: TextFormField())
          ],
        ),

        Row(
          children: [
            Container(
                width: 90,
                height: 20,
                color: Color(0xff4e9b2b),
                child: Text("Cause")),
            Container(
                width: 100,
                height: 20,
                color: Color(0xfff0e8ca),
                child: TextFormField())
          ],
        ),

        //3
      ],
    ));
  }
}
