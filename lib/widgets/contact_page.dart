import 'package:bitm24restuarent/home_sreen.dart';
import 'package:bitm24restuarent/widgets/restaurent_details.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 191, 243, 182),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Color.fromARGB(255, 191, 243, 182),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                  decoration: InputDecoration(
                label: Text("Name"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              )),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                label: Text("Email"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              )),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                label: Text("Comment"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              )),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Alart"),
                          content: Text("Your Text Submited"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("OK"))
                          ],
                        );
                      });
                },
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.green),
                  child: Center(child: Text("Submite")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
