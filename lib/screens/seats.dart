import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Seats extends StatefulWidget {
  const Seats({Key? key}) : super(key: key);

  @override
  State<Seats> createState() => _SeatsState();
}

class _SeatsState extends State<Seats> {
String dropdownValue= 'Lagos';
String dropdownValue1= 'Ogun';
String dropdownValue2= '₦1000';
String dropdownValue5= '01';

final TextEditingController _date = TextEditingController();
final TextEditingController _locationTextController = TextEditingController();
final TextEditingController _price = TextEditingController();
final TextEditingController _time = TextEditingController();
final TextEditingController _bookseat  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final format = DateFormat('h:mma');
    return SafeArea(
        child:Scaffold(
          backgroundColor:Color(0xFFeeedf2),
          body: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height:15),
                  Text('Location'),
                  SizedBox(height: 13),
                  TextFormField(
                    controller: _locationTextController,
                    readOnly: true,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),

                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>['Lagos', 'Kano', 'Ogun', 'Kaduna','Ibadan']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )
                    ),
                  ),
                  SizedBox(height: 10),
                  Icon(Icons.arrow_downward),
                  SizedBox(height: 13),
                  TextFormField(
                    controller: _locationTextController,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: DropdownButton<String>(
                          value: dropdownValue1,
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),

                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue1 = newValue!;
                            });
                          },
                          items: <String>['Ogun', 'Kano', 'Lagos', 'Kaduna','Ibadan']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Price'),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: DropdownButton<String>(
                          value: dropdownValue2,
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),

                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue2 = newValue!;
                            });
                          },
                          items: <String>['₦1000','₦2000','₦3000','₦6000','₦7000','₦8000','₦9000','₦10,000','15000','₦12,000','₦5000']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Date'),
                  TextFormField(
                    controller:_date,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_today_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Select Date',
                    ),
                    onTap: () async{
                      DateTime? pickeddate= await showDatePicker(
                          context: context,
                          initialDate:DateTime.now(), firstDate: DateTime(2000),
                          lastDate: DateTime(2101));

                      if(pickeddate !=null){
                        setState((){
                          _date.text=DateFormat('yyyy-MM-dd').format(pickeddate);
                        });
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  Text('Time'),
                  Container(
                    padding: EdgeInsets.all(16),
                    child:
                    DateTimeField(format: format,
                        decoration: InputDecoration(
                            hintText: 'Choose Time'
                        ),
                        onShowPicker: (context,currentValue) async{
                          final time = await showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(currentValue?? DateTime.now()));
                          return DateTimeField.convert(time);

                        }
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Book Seat'),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: DropdownButton<String>(
                          value: dropdownValue5,
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),

                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue5 = newValue!;
                            });
                          },
                          items: <String>['01','02','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
           ],

           ),
            ),
          ),
    )
    );
  }
}
