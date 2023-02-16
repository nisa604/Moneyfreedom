/**
 * @Author: Your name
 * @Date:   2023-02-12 14:00:35
 * @Last Modified by:   Your name
 * @Last Modified time: 2023-02-16 14:10:02
 */
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneyfreedom/list/MonthList.dart';
import 'package:filter_list/filter_list.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final List<Widget> _children = [
    monthlist(),
  ]; // untuk pemanggilan button dibawah
  int currentIndex = 0;

  void ontap(int index) {
    //untuk memanggil isi buttonnya
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //button pasif income
          Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Icon(Icons.download, color: Colors.green),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pemasukan"),
                            //style: GoogleFonts.montserrat(Color: colors.white, fontsize: 12 ),
                            SizedBox(height: 10),
                            Text("Rp. 2.000.000"),
                            //style: GoogleFonts.montserrat(Color: colors.white, fontsize: 12 ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Icon(Icons.upload, color: Colors.red),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pengeluaran"),
                            //style: GoogleFonts.montserrat(Color: colors.white, fontsize: 12 ),
                            SizedBox(height: 10),
                            Text("Rp. 2.000.000"),
                            //style: GoogleFonts.montserrat(Color: colors.white, fontsize: 12 ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 192, 192, 192),
                  borderRadius: BorderRadius.circular(16),
                ),
              )),
          // text transaksi
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Card(
                elevation: 8,
                child: ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          // alignment: AlignmentDirectional.centerStart,
                          onPressed: () {
                            ontap(0);
                          },
                          icon: Icon(Icons.list)),
                      // SizedBox(width: 5)
                    ],
                  ),
                  title: Text(
                    "Februari",
                    style: GoogleFonts.montserrat(),
                  ),
                )),
          ),

          //list transaksi
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                  ],
                ),
                title: Text("Rp 2.000.000"),
                subtitle: Text("Bayar kos"),
                leading: Container(
                  child: Icon(Icons.upload, color: Colors.red),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
          ),
          //list uang masuk
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                  ],
                ),
                title: Text("Rp 5.000.000"),
                subtitle: Text("Uang jajan"),
                leading: Container(
                  child: Icon(Icons.download, color: Colors.green),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
