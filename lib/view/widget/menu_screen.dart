import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/view/utils/utils.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: blueShade7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight20,
          buildHeader(context),
          Divider(endIndent: 50, color: grey, thickness: 2),
          buildMenuItems(context),
          logOutBtn(context),
        ],
      ),
    );
  }
}

Widget logOutBtn(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 28.0, top: 10),
    child: SizedBox(
      height: 50,
      width: 160,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(221, 248, 248, 1),
        ),
        onPressed: () {},
        icon: Icon(
          Icons.logout_sharp,
          color: blueShade7,
        ),
        label: Text('LOGOUT',
            style: TextStyle(
              fontSize: 16,
              color: blueShade7,
              fontWeight: FontWeight.bold,
            )),
      ),
    ),
  );
}

// Widget bg() {
//   return Container(
//     height: 140,
//     decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage('assets/anglecircle-removebg-preview.png'))),
//   );
// }

Widget buildHeader(BuildContext context) => Container(
      color: blueShade7,
      width: MediaQuery.of(context).size.width,
      padding:
          EdgeInsets.only(top: MediaQuery.of(context).padding.top, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/dp.jpg'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight,
              Text(
                'Welcome',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: white,
                  ),
                ),
              ),
              Text(
                'M. Alwan',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: white,
                  ),
                ),
              ),
              Text(
                'ID No: 1234567',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget buildMenuItems(BuildContext context) {
  final List<Map<String, dynamic>> menuItems = [
    {
      'icon': Icons.inbox,
      'title': 'Dashboard',
    },
    {
      'icon': Icons.list_alt,
      'title': 'Orders',
    },
    {
      'icon': Icons.download_for_offline,
      'title': 'Downloads',
    },
    {
      'icon': Icons.location_on,
      'title': 'Addresses',
    },
    {
      'icon': Icons.account_balance_wallet,
      'title': 'Payment Methods',
    },
    {
      'icon': Icons.person,
      'title': 'Account Details',
    },
    {
      'icon': Icons.receipt_long_rounded,
      'title': 'Transaction History',
    },
    {
      'icon': Icons.paid,
      'title': 'Add Money',
    },
  ];

  return Container(
    color: blueShade7,
    padding: const EdgeInsets.only(left: 20),
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final item = menuItems[index];
        return ListTile(
          leading: Icon(
            item['icon'],
            color: white,
          ),
          title: Text(
            item['title'],
            style: TextStyle(color: white),
          ),
        );
      },
    ),
  );
}
