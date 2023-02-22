import 'package:flutter/material.dart';
import 'package:intern_assignment/model/results/result.dart';
import 'package:intern_assignment/screen/userDataScreen.dart';
import 'package:intern_assignment/static/app.dart';

class SearchUserData extends StatefulWidget {
  const SearchUserData({Key? key}) : super(key: key);

  @override
  State<SearchUserData> createState() => _SearchUserDataState();
}

class _SearchUserDataState extends State<SearchUserData> {
  List<Results> allData = [];

  List<Results> queryData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allData = Constant.results;
  }

  // TextField Decoration
  final fieldDecoration = InputDecoration(
    hintText: "Search by username",
    contentPadding: const EdgeInsets.all(10),
    enabled: true,
    suffixIcon: const Icon(Icons.search),
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.orange, width: 1),
        borderRadius: BorderRadius.circular(10)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.orange, width: 1),
        borderRadius: BorderRadius.circular(10)),
  );
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.info),
                title: Text("Reults : ${Constant.info!.results}"),
                subtitle: Text(
                    "Page : ${Constant.info!.page} \n Seeds : ${Constant.info!.seed}"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _usernameController,
                onChanged: (value) {
                  setState(() {
                    queryData = allData
                        .where((element) => element.login!.username!
                            .toLowerCase()
                            .contains(value.toLowerCase()))
                        .toList();
                  });
                },
                decoration: fieldDecoration,
              ),
            ),
            Expanded(
              child: _usernameController.text == "" || queryData.isEmpty
                  ? const Text("Query data by username")
                  : ListView.builder(
                      itemCount: queryData.length,
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.orange,
                          margin: const EdgeInsets.all(10),
                          child: ListTile(
                            onTap: () {
                              Navigator.pushNamed(context, DataScreen.route,
                                  arguments: queryData[index]);
                            },
                            leading: const Icon(Icons.person),
                            title: Text(
                              queryData[index].login!.username!,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      }),
            )
          ],
        ),
      ),
    );
  }
}
