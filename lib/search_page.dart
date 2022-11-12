import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isSwitch = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Page"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("actions");
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/anime1.png"),
            const SizedBox(
              height: 10.0,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "This is a text widget",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.blue : Colors.green,
              ),
              onPressed: () {
                debugPrint("Elevated Button");
              },
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined Button");
              },
              child: const Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Button");
              },
              child: const Text("Text Button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("This is the row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Text("A row widget"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isChecked,
              onChanged: (bool? newBool) {
                setState(() {
                  isChecked = newBool;
                });
              },
            ),
            Image.network(
                "https://static.wikia.nocookie.net/ghostintheshell/images/1/1b/Motoko_Kusanagi_SAC.jpg/revision/latest?cb=20200208042427&path-prefix=en"),
          ],
        ),
      ),
    );
  }
}
