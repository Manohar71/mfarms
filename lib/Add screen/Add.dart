import 'package:flutter/material.dart';
import 'package:mfarms/ui%20widgets/day_selection.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final controller = TextEditingController();
  final controller1 = TextEditingController();
  DateTime selectedDate = DateTime.now();

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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Image.asset('assets/logo.png'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              GradientText(
                'Add milk Data',
                style: const TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
                gradientType: GradientType.linear,
                gradientDirection: GradientDirection.ttb,
                colors: const [
                  Colors.blue,
                 Colors.pink
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.08,
                    30,
                    MediaQuery.of(context).size.width * 0.08,
                    0),
                child: TextFormField(
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Text is empty';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  controller: controller,
                  onChanged: (Text) {
                    setState(() {});
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 4.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.blue,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.blue,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.blue,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.blue,
                        ),
                      ),
                      hintText: 'Enter Milk Data',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(80, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 16)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.08,
                    30,
                    MediaQuery.of(context).size.width * 0.08,
                    0),
                child: TextFormField(
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Text is empty';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  controller: controller1,
                  onChanged: (Text) {
                    setState(() {});
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 4.0),
                      ),
                      //labelText: 'Enter Name',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.blue,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.blue,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.blue,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.blue,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.blue,
                        ),
                      ),
                      hintText: 'Enter Fat Data',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(80, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 16)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.08, 30, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () => _selectDate(context),
                      child: Text("${selectedDate.toLocal()}".split(' ')[0]),
                    ),
                    day_selection()
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(
                  height: 50,
                  width: 120,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 38, 151, 255),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: const Text(
                        'Add',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 22),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
