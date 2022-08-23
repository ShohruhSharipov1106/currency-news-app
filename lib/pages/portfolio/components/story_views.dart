import 'package:currency_news_app/constants/exports.dart';
import 'package:currency_news_app/pages/portfolio/portfolio_page.dart';
import 'package:currency_news_app/provider/stories_provider.dart';
import 'package:flutter/cupertino.dart';

class StoryViews extends StatefulWidget {
  String image;
  String text;
  Color color;
  bool watched;
  StoryViews(this.text, this.image, this.color, this.watched, {Key? key})
      : super(key: key);

  @override
  State<StoryViews> createState() => _StoryViewsState();
}

class _StoryViewsState extends State<StoryViews> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: widget.color,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            Stack(
              children: [
                SizedBox(
                  height: size.height *0.9,
                  width: size.width,
                  child: Story(
                    onFlashForward: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => PortfolioPage())),
                    onFlashBack: () => Navigator.pop(context),
                    momentCount: 5,
                    fullscreen: false,
                    momentDurationGetter: (idx) => Duration(seconds: 5),
                    momentBuilder: (context, idx) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 42, vertical: 84),
                          child: Image.asset(
                            "assets/images/big-rocket.png",
                            height: size.height * 0.4,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 42.0, bottom: 15.0),
                          child: Text(
                            widget.text,
                            style: GoogleFonts.montserrat(
                              fontSize: 36.0,
                              fontWeight: FontWeight.w700,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 42.0),
                          child: Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: kBeginButtonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  elevation: 0,
                                ),
                                onPressed: () {},
                                //edit text
                                child: Text(
                                  "Начать курс",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10.0,
                                    color: kWhiteColor,
                                  ),
                                ),
                              ),
                              SizedBox(width: 6.0),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: kWhiteColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  elevation: 0,
                                ),
                                onPressed: () {},
                                //edit text
                                child: Text(
                                  "Для начинающих",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10.0,
                                    color: kBlackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: kWhiteColor.withOpacity(0.3),
                      child: const Icon(
                        CupertinoIcons.clear,
                        color: kWhiteColor,
                        size: 14.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
