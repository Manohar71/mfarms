import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mfarms/ui%20widgets/blue_box.dart';
import 'package:mfarms/ui%20widgets/r_bluebox.dart';

class info_add extends StatefulWidget {
  const info_add({super.key});

  @override
  State<info_add> createState() => _info_addState();
}

class _info_addState extends State<info_add> {
  TextEditingController nameController = TextEditingController();
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 40, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/logo.png')),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back)),
                SizedBox(height: 10,),
            r_bluebox(
                color: Colors.blue, height: 50, width: 350, child: add_child()),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                r_bluebox(
                    color: Colors.blue,
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Center(child: Text('Pregnancy Status'))),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CupertinoSwitch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                r_bluebox(
                    color: Colors.blue,
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Center(child: Text('Pregnancy start'))),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 50,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                          ))),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            r_bluebox(
                color: Colors.blue,
                height: 50,
                width: 350,
                child: No_of_preg()),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  r_bluebox(
                      color: Colors.blue,
                      height: 50,
                      width: 200,
                      child: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Babies"),
                          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined))
                        ],
                      ))),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 50,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ))),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  r_bluebox(
                      color: Colors.blue,
                      height: 50,
                      width: 200,
                      child: Center(child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Diseases"),
                           IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined))
                        ],
                      ))),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 50,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Center(
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Add'))),
            )
          ],
        ),
      ),
    );
  }

  Widget add_child() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 45,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15)),
            child: const Center(
                child: Text(
              'Name',
              style: TextStyle(
                  color: Colors.blue, fontFamily: 'Poppins', fontSize: 15),
            )),
          ),
        ),
        SizedBox(
          height: 45,
          width: 200,
          child: TextField(
            controller: nameController,
            decoration: const InputDecoration(hintText: "enter the name"),
          ),
        )
      ],
    );
  }

  Widget No_of_preg() {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(15.0, 0, 0, 0),
          child: Center(child: Text("No of Pregnancies")),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
          child: Container(
            height: 45,
            width: 110,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30)),
            child: Center(
                child: Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                const Text(
                  '0',
                  style: TextStyle(
                      color: Colors.blue, fontFamily: 'Poppins', fontSize: 15),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.minimize))
              ],
            )),
          ),
        ),
      ],
    );
  }
}
