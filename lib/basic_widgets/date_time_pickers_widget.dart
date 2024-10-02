import 'package:flutter/material.dart';

class MyDateTimePickers extends StatefulWidget {
  const MyDateTimePickers({super.key});

  @override
  _MyDateTimePickersState createState() => _MyDateTimePickersState();
}

class _MyDateTimePickersState extends State<MyDateTimePickers> {
  DateTime selectedDate =
      DateTime.now(); // State untuk menyimpan tanggal yang dipilih

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("${selectedDate.toLocal()}"
              .split(' ')[0]), // Menampilkan tanggal yang dipilih
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              _selectDate(context);
            },
            child: const Text('Pilih Tanggal'),
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked; // Memperbarui state dengan tanggal yang dipilih
      });
    }
  }
}