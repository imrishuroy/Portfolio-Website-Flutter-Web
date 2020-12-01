import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 864,
      width: 1000,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'I\'m a Mobile App',
                    style: GoogleFonts.montserrat(fontSize: 60.0),
                  ),
                  Text(
                    'Developer  < / >',
                    style: GoogleFonts.montserrat(fontSize: 60.0),
                  ),
                  SizedBox(height: 37.0),
                  Text(
                    ' I have 1 years of experience in flutter app development',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  FlatButton(
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        7.0,
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 14.0,
                      ),
                      child: Text(
                        'Contact Me',
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: FlutterLogo(
                size: 300.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
