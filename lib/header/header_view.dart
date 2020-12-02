import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeaderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) return HeaderMobileView();
        return Container(
          height: 864,
          width: 1005,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: HeaderBody(),
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
      },
    );
  }
}

class HeaderBody extends StatelessWidget {
  final isMobile;

  const HeaderBody({Key key, this.isMobile = true}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'I\'m a App',
          style: GoogleFonts.montserrat(fontSize: 60.0),
          maxLines: 1,
        ),
        AutoSizeText(
          'Developer  < / >',
          style: GoogleFonts.montserrat(fontSize: 60.0),
          maxLines: 1,
        ),
        SizedBox(height: isMobile ?? false ? 20 : 37.0),
        AutoSizeText(
          'I have 1 years of experience in flutter app development',
          style: TextStyle(
            fontSize: 24.0,
          ),
          maxLines: 3,
        ),
        SizedBox(
          height: isMobile ?? false ? 20 : 40,
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
              horizontal: isMobile ?? false ? 8 : 15,
              vertical: isMobile ?? false ? 10 : 17,
            ),
            child: Text(
              'Contact Me',
              style: TextStyle(
                fontSize: isMobile ?? false ? 20 : 22.0,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HeaderMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.9,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 40.0),
      child: Column(
        children: [
          FlutterLogo(size: height * 0.3),
          Spacer(),
          HeaderBody(
            isMobile: true,
          ),
        ],
      ),
    );
  }
}
