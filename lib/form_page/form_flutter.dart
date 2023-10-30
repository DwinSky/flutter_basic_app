import 'package:flutter/material.dart';

class FormFlutter extends StatefulWidget {
  const FormFlutter({super.key});

  @override
  State<FormFlutter> createState() => _FormFlutterState();
}

List<DropdownMenuItem<String>> dropdownList = [
  const DropdownMenuItem(
    value: 'Steam',
    child: Text(
      'Steam',
    ),
  ),
  const DropdownMenuItem(
    value: 'Epic Games',
    child: Text('Epic Games'),
  ),
  const DropdownMenuItem(
    value: 'Ubisoft Store',
    child: Text('Ubisoft Store'),
  )
];

class _FormFlutterState extends State<FormFlutter> {
  String selected = 'Steam';
  bool isOn = false;
  String sex = '';
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Form Flutter',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              maxLength: 20,
              // controller: textController,
              decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.blueGrey,
                  )),
                  helperText: 'Siapa namamu bro?'),
              onChanged: (value) {},
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Platform game favoritmu :'),
                const SizedBox(
                  width: 8,
                ),
                DropdownButton(
                    value: selected,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 20,
                    style: TextStyle(
                      color: Colors.blue[600],
                    ),
                    underline: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: Colors.grey,
                        width: 3,
                      ))),
                    ),
                    items: dropdownList,
                    onChanged: (String? val) {
                      setState(() {
                        if (val != null) selected = val;
                      });
                    }),
              ],
            ),
            Row(
              children: [
                const Text('Connect Instagram'),
                const SizedBox(
                  width: 8,
                ),
                Switch(
                    value: isOn,
                    onChanged: (bool? val) {
                      if (val != null) {
                        setState(() {
                          isOn = val;
                        });
                      }
                    })
              ],
            ),
            Row(
              children: [
                const Text('Gender :'),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                        value: 'male',
                        groupValue: sex,
                        onChanged: (String? val) {
                          setState(() {
                            if (val != null) {
                              sex = val;
                            }
                          });
                        }),
                    const Text('Male'),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                        value: 'female',
                        groupValue: sex,
                        onChanged: (String? val) {
                          setState(() {
                            if (val != null) {
                              sex = val;
                            }
                          });
                        }),
                    const Text('Female')
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    activeColor: Colors.blue,
                    onChanged: (val) {
                      setState(() {
                        if (val != null) {
                          isChecked = val;
                        }
                      });
                    }),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  'Setuju gak?',
                  style: TextStyle(decoration: TextDecoration.underline),
                )
              ],
            ),
            InkWell(
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100));
                debugPrint('pickedDate : $pickedDate');
              },
              child: TextFormField(
                initialValue: '2023-10-29',
                maxLength: 20,
                enabled: false,
                decoration: const InputDecoration(
                  labelText: 'Birth Date',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey)),
                  suffixIcon: Icon(Icons.date_range),
                  helperText: 'Kapan ulang tahun bro?',
                ),
                onChanged: (value) {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
