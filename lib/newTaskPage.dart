import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create new task"),
        backgroundColor: Colors.teal,
      ),
      body: const NewTaskForm(),
    );
  }
}

class NewTaskForm extends StatefulWidget {
  const NewTaskForm({Key? key}) : super(key: key);

  @override
  NewTaskFormState createState() {
    return NewTaskFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class NewTaskFormState extends State<NewTaskForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<NewTaskFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Container(
      padding: const EdgeInsets.fromLTRB(15.0, 75.0, 15.0, 0.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Task name',
                    isDense: true,
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))))),
            const Padding(padding: EdgeInsets.only(top: 20)),
            TextFormField(
              // minLines: 1,
              maxLines: 5, // allow user to enter 5 line in textfield
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                hintText: 'Description',
                isDense: true,
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                prefixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 80.0),
                  // add padding to adjust icon
                  child: Icon(Icons.view_headline),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            InputDecorator(
              decoration: const InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Icon(Icons.category),
                  ),
                  hintText: 'Please select expense',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: const Text("Category"),
                  isDense: true,
                  onChanged: (String? value) {},
                  items: ["aa", "bb", "cc"].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Due date',
                isDense: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                prefixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  // add padding to adjust icon
                  child: Icon(Icons.date_range),
                ),
              ),
              onTap: () {
                showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        initialDate: DateTime.now(),
                        lastDate: DateTime(2222))
                    .then((date) {
                  // setState(() => value = date!);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
