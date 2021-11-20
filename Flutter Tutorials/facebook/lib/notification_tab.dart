import 'package:flutter/material.dart';

class NotificationTab extends StatelessWidget {
  const NotificationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.person_pin, size: 90,),
            title: const Text('Usama Sarwar', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17
            ),),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('10 mutual friends'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(Colors.blue[700]),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                      ),
                        onPressed: () {}, child: const Text('Add friend'),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(Colors.grey[300]),
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                      ),
                        onPressed: () {}, child: const Text('Remove'))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
