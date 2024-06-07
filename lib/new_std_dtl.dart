import 'package:flutter/material.dart';

class NewStudentDetails extends StatelessWidget {
  const NewStudentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "New Student Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: buildTextField("Name")),
                  SizedBox(width: 15),
                  Expanded(child: buildTextField("Father's Name")),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: buildTextField("Age")),
                  SizedBox(width: 15),
                  Expanded(child: buildTextField("DOB (dd/mm/yyyy)")),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: buildTextField("Address")),
                  SizedBox(width: 15),
                  Expanded(child: buildTextField("Phone")),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: buildTextField("Email Id")),
                  SizedBox(width: 15),
                  Expanded(child: buildTextField("Class X(%)")),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: buildTextField("Class XII(%)")),
                  SizedBox(width: 15),
                  Expanded(child: buildTextField("Village Address")),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: buildTextField("ID")),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Course"),
                        SizedBox(height: 5),
                        DropdownButtonFormField<String>(
                          items: ['Bsc', 'Msc', 'PhD']
                              .map((String value) => DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  ))
                              .toList(),
                          onChanged: (_) {},
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Branch"),
                        SizedBox(height: 5),
                        DropdownButtonFormField<String>(
                          items: ['CSE', 'ECE', 'ME']
                              .map((String value) => DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  ))
                              .toList(),
                          onChanged: (_) {},
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(child: Container()), // Empty space to balance the row
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.black, // Updated
                    ),
                    child: Text('Submit', style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.black, // Updated
                    ),
                    child: Text('Cancel', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
