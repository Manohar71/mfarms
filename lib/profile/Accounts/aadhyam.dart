import 'package:flutter/material.dart';
import 'package:mfarms/profile/Accounts/aadhayam.dart';
import 'package:mfarms/profile/Accounts/aadhayam_milk.dart';

import '../../ui widgets/blue_txt.dart';
import '../../ui widgets/neobox.dart';

class aashaym extends StatefulWidget {
  const aashaym({super.key});

  @override
  State<aashaym> createState() => _aashaymState();
}

class _aashaymState extends State<aashaym> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  bool normal = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                    backgroundColor: normal ? Colors.blue : Colors.grey,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            normal = true;
                          });
                        },
                        icon:  Icon(
                          Icons.add,
                          color: normal ? Colors.white : Colors.black,
                        ))),
                CircleAvatar(
                    backgroundColor: normal ? Colors.grey : Colors.blue,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            normal = false;
                          });
                        },
                        icon:  Icon(Icons.water_drop_rounded,
                            color: normal ? Colors.black : Colors.white,)))
              ],
            ),
          ),
          normal
              ? neobox(
                  child: aadhayam_child(context),
                  color: Colors.white,
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.9,
                )
              : aadhayam_milk()
        ],
      ),
    );
  }

  Widget aadhayam_child(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                icon: Icon(Icons.calendar_month),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () => _selectDate(context),
                label: Text("${selectedDate.toString()}".split(' ')[0]),
              ),
              ElevatedButton.icon(
                  icon: Icon(Icons.alarm),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  onPressed: () async {
                    TimeOfDay? newtime = await showTimePicker(
                        context: context, initialTime: selectedTime);

                    if (newtime == null) return;
                    setState(() => selectedTime = newtime);
                  },
                  label: Text('${selectedTime.hour} : ${selectedTime.minute}'))
            ],
          ),
        ),
        blue_txtfeild(),
        SizedBox(
          height: 15,
        ),
        blue_txtfeild(),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            "57,000",
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.w700, fontSize: 40),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 10),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.edit,
              size: 25,
              color: Color.fromARGB(127, 0, 0, 0),
            ),
          ),
        )
      ],
    );
  }
}
