/**
 * @Author: Your name
 * @Date:   2023-02-16 01:21:44
 * @Last Modified by:   Your name
 * @Last Modified time: 2023-02-16 13:45:29
 */
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class monthlist extends StatefulWidget {
  const monthlist({super.key});

  @override
  State<monthlist> createState() => _monthlistState();
}

class _monthlistState extends State<monthlist> {
  // List<String> dataList = [
  //   "Januari",
  //   "Februari",
  //   "Maret",
  //   "April",
  //   "Mei",
  //   "Juni",
  //   "Juli",
  //   "Agustus",
  //   "September",
  //   "Oktober",
  //   "November",
  //   "Desember"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(child: Text('Januari')),
            PopupMenuItem(child: Text('Februari')),
            PopupMenuItem(child: Text('Maret'))
          ],
        )
      ]),
    );
  }

//     Scaffold(
//       body: Column(
//         children: [
//           listDataView(),
//         ],
//       ),
//     );
//   }

//   Widget listDataView() {
//     return Flexible(
//         child: ListView.builder(
//             itemCount: dataList.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text('${dataList[index]}'),
//               );
//             }));
//   }
// }
}
