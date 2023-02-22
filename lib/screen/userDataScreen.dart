import 'package:flutter/material.dart';
import 'package:intern_assignment/model/results/result.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({Key? key}) : super(key: key);
  static const route = "/dataScreen";

  @override
  Widget build(BuildContext context) {
    Results results = ModalRoute.of(context)!.settings.arguments as Results;
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Card(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 70,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    alignment: Alignment.center,
                    child: const Text(
                      "Results",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  // Gender
                  Text("Gender: ${results.gender}"),
                  // Name
                  Text(
                      "Name: ${results.name!.title} ${results.name!.first} ${results.name!.last}"),
                  // Location
                  const Text("Location:"),
                  const Text("   Street:"),
                  Text("      Number:${results.location!.street!.number}"),
                  Text(
                      "      Name: Street :  ${results.location!.street!.name}"),
                  Text("   City: ${results.location!.city}"),
                  Text("   State: ${results.location!.state}"),
                  Text("   Country: ${results.location!.country}"),
                  Text("   PostCode: ${results.location!.postcode}"),
                  const Text("   Cordinate:"),
                  Text(
                      "      Latitude:  ${results.location!.coordinates!.latitude}"),
                  Text(
                      "      Longitude:  ${results.location!.coordinates!.longitude}"),
                  const Text("   Timezone:"),
                  Text("      offset:  ${results.location!.timezone!.offset}"),
                  Text(
                      "      Description:  ${results.location!.timezone!.description}"),
                  // Email
                  Text("Email:  ${results.email}"),
                  // Login
                  const Text("Login:"),
                  Text("   uuid:  ${results.login!.uuid}"),
                  Text("   Username:  ${results.login!.username}"),
                  Text("   Password:  ${results.login!.password}"),
                  Text("   Salt:  ${results.login!.salt}"),
                  Text("   Md5:  ${results.login!.md5}"),
                  Text("   Sha1:  ${results.login!.sha1}"),
                  Text("   Sha256:  ${results.login!.sha256}"),
                  // DOB
                  const Text("DOB:"),
                  Text("   Date:  ${results.dob!.date}"),
                  Text("   Age:  ${results.dob!.age}"),
                  // Register
                  const Text("Registered:"),
                  Text("   Date:  ${results.registered!.date}"),
                  Text("   Age:  ${results.registered!.age}"),
                  // Phone
                  Text("Phone:  ${results.phone}"),
                  // Cell
                  Text("Cell:  ${results.cell}"),
                  // ID
                  const Text("Id:"),
                  Text("   Name:  ${results.id!.name}"),
                  Text("   Value:  ${results.id!.value}"),
                  // Pictures
                  const Text("Picture:"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage("${results.picture!.large}"),
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            NetworkImage("${results.picture!.large}"),
                      ),
                      CircleAvatar(
                        radius: 80,
                        backgroundImage:
                            NetworkImage("${results.picture!.large}"),
                      ),
                    ],
                  ),
                  // Nat
                  Text("NAT: ${results.nat}"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
