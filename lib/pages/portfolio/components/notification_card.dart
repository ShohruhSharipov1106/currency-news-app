import 'package:currency_news_app/constants/exports.dart';
import 'package:flutter/cupertino.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key? key,
    required this.readPro,
    required this.size,
  }) : super(key: key);

  final StoriesProvider readPro;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StoryViews(
                  "С чего начать?",
                  "assets/images/medium-rocket.png",
                  kMainColor,
                  !context.read<StoriesProvider>().isClosed,
                ),
              ),
            );
          },
          child: SizedBox(
            child: Container(
              height: 91,
              padding: EdgeInsets.only(
                  right: 10.0, top: 10.0, left: 17.0, bottom: 19.0),
              margin: EdgeInsets.only(bottom: 19.0, right: 20.0, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kMainColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "С чего начать?",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        "С чего начать С чего\nначать С чего начать ",
                        style: GoogleFonts.montserrat(
                          color: kWhiteColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => readPro.deleteNotification(),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: kWhiteColor.withOpacity(0.3),
                      child: const Icon(
                        CupertinoIcons.clear,
                        color: kWhiteColor,
                        size: 12.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -20,
          right: size.width * 0.15,
          child: Image.asset(
            "assets/images/medium-rocket.png",
            fit: BoxFit.cover,
            height: 150,
            width: 150,
          ),
        ),
      ],
    );
  }
}
