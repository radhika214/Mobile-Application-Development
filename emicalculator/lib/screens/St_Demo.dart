import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StateDemo extends StatefulWidget {
  const StateDemo({Key? key}) : super(key: key);

  @override
  _StateDemoState createState() => _StateDemoState();
}

class _StateDemoState extends State<StateDemo> {
  late int _count = 0;
  String val = "";
  TextEditingController tc = TextEditingController();
  _plus() {
    _count++;

    print("Count Value is $_count");
    setState(() {});
  }

  void initState() {
// TODO: implement initState

    super.initState();

    _count = 0;

    print("State Init ....");
  }

  @override
  void didChangeDependencies() {
// TODO: implement didChangeDependencies

    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant StateDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("State Clean");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Http Call Stream close ...");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _plus();
        },
        child: const Text(
          '+',
          style: TextStyle(fontSize: 20),
        ),
      ), // FloatingActionButton

      // body: Center(
      //   child: Text(
      //     'Count is $_count',
      //     style: GoogleFonts.pacifico(fontSize: 30),
      //   ),
      // ), // Text // Center

      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                val = tc.text;
                setState(() {});
              },
              child: Text('Get Name')),
          Text(
            'Count is $_count and $val',
            style: GoogleFonts.pacifico(fontSize: 30),
          ), // Text

          TextField(
            controller: tc,
            // onChanged: (String value) {
            //   val = value;
            //   setState(() {});
            // },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.camera),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.redAccent,
              ),
              helperText: 'Name Must be A-Z',
              hintText: 'Name here',
              label: Text('Type Name HERE'),
            ), // Input Decoration
          ), // TextField
        ],
      ),
      appBar: AppBar(
        title: const Text('StateFul Demo'),
      ),
    );
  }
} // Scaffold