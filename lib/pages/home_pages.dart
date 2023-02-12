/**
 * @Author: Your name
 * @Date:   2023-02-12 14:00:35
 * @Last Modified by:   Your name
 * @Last Modified time: 2023-02-12 15:19:23
 */
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                      child: Icon(Icons.download, color: Colors.red),
                      decoration: BoxDecoration(color: Colors.lightBlue),
                    )
                  ],
                )
              ],
            ),
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.deepPurple[800],
              borderRadius: BorderRadius.circular(16),
            ),
          )
        ],
      )),
    );
  }
}
