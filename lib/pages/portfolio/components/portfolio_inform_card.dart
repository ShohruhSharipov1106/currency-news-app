import 'package:currency_news_app/constants/exports.dart';
import 'package:flutter/cupertino.dart';

class PortfolioInformCard extends StatelessWidget {
  const PortfolioInformCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, top: 16.0, bottom: 20.0),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // edit text
          Text(
            "Брокерский счёт",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text.rich(
            TextSpan(
              children: [
                // edit text
                TextSpan(
                  text: "17 321 580 ",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextSpan(
                  // edit text
                  text: "сум",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 22.0),
                ),
              ],
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                // edit text
                TextSpan(
                  text: "+ 1 321 931 сум ",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      CupertinoIcons.arrowtriangle_up_fill,
                      color: kMainColor,
                      size: 9.0,
                    ),
                  ),
                ),
                // edit text
                TextSpan(
                    text: "5,14 %",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: kMainColor)),
              ],
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    // edit text
                    text: "Свободные средства ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                  // edit text
                  text: "10 321 580 ",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                TextSpan(
                  // edit text
                  text: "сум",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontWeight: FontWeight.w600, fontSize: 9.0),
                ),
              ],
            ),
          ),
          SizedBox(height: 11),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kGreyColor,
                  onPrimary: kMainColor,
                  padding: EdgeInsets.only(right: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  elevation: 0,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.add,
                        size: 21,
                      ),
                    ),
                    // edit text
                    Text(
                      "Пополнить",
                      style: GoogleFonts.questrial(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kGreyColor,
                  onPrimary: kMainColor,
                  padding: EdgeInsets.only(right: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  elevation: 0,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.bar_chart,
                        size: 21,
                      ),
                    ),
                    // edit text
                    Text(
                      "Анализ",
                      style: GoogleFonts.questrial(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 14),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kGreyColor,
                  onPrimary: kMainColor,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  elevation: 0,
                ),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.more_horiz,
                    size: 21,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
