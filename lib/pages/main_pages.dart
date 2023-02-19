/**
 * @Author: Your name
 * @Date:   2023-02-12 07:56:48
 * @Last Modified by:   Your name
 * @Last Modified time: 2023-02-19 22:30:44
 */
import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneyfreedom/pages/category_pages.dart';
import 'package:moneyfreedom/pages/home_pages.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => MainPagesState();
}

class MainPagesState extends State<MainPages> {
  final List<Widget> _children = [
    HomePages(),
    CategoryPages()
  ]; // untuk pemanggilan button dibawah
  int currentIndex = 0;

  void ontaptapped(int index) {
    //untuk memanggil isi buttonnya
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false, // simple as that!
          toolbarHeight: 75, // default is 56
          toolbarOpacity: 0.5,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          // title: Text('Page title'),
          actions: [
            //  Icon(Icons.favorite),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ),
            //   Icon(Icons.more_vert),
          ],
          backgroundColor: Colors.blue,
        ),

        // appBar: AppBar(
        //   title: const Text('MoneyFreedom'),
        // ),

        // appBar: (currentIndex == 0)
        //     ? CalendarAppBar(
        //         backButton: false, //menghilangkan back button
        //         locale: 'id', //bahasa indonesia ata bisa bahasa lain
        //         onDateChanged: (value) => print(value),
        //         firstDate: DateTime.now().subtract(Duration(days: 140)),
        //         lastDate: DateTime.now(),
        //       )
        //     : PreferredSize(
        //         //untuk membatasi ada dimana, klo di home ada sedangkan di categori ga ada
        //         child: Padding(
        //           padding:
        //               const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
        //           child: Container(
        //             child: Text(
        //               'Category',
        //               style: GoogleFonts.montserrat(fontSize: 18),
        //             ),
        //           ),
        //         ),
        //         preferredSize: Size.fromHeight(100)),
        floatingActionButton: Visibility(
          visible: (currentIndex == 0) ? true : false,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blueAccent,
            child: Icon(Icons.add),
          ),
        ),
        body: _children[currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(
                onPressed: () {
                  ontaptapped(0);
                },
                icon: Icon(Icons.home)),
            SizedBox(
              width: 20,
            ),
            IconButton(
                onPressed: () {
                  ontaptapped(1);
                },
                icon: Icon(Icons.bar_chart))
          ]),
        ));
  }
}
