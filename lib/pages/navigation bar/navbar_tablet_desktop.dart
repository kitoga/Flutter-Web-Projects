import 'package:barafiri_admin/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class NavbarTabletDesktop extends StatelessWidget {
  const NavbarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          width: 1.5,
          color: Colors.black54.withOpacity(0.1),
        ),
      )),
      height: 70,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 180,
              decoration: BoxDecoration(
                  //color: Colors.amber,
                  image: DecorationImage(
                image: AssetImage("assets/images/Group3.png"),
              )),
            ),
            Expanded(child: Container()),
            Icon(
              FeatherIcons.refreshCw,
              color: darkMain,
              size: 28,
            ),
            SizedBox(width: 10),
            Container(
              width: 50,
              child: Stack(
                children: [
                  Icon(
                    FeatherIcons.bell,
                    color: darkMain,
                    size: 28,
                  ),
                  Positioned(
                    left: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 20,
                        width: 20,
                        color: active,
                        child: Center(child: Text('1')),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Perry',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: darkMain,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Admin',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: active,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            CircleAvatar(
              maxRadius: 25,
              backgroundImage: AssetImage('assets/images/admin.jpeg'),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: darkMain,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
