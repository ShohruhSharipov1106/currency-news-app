import 'package:currency_news_app/constants/exports.dart';
import 'package:flutter/cupertino.dart';

class PortfolioSearch extends StatelessWidget {
  const PortfolioSearch({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20.0,
        bottom: 27.0,
        top: 48.0,
      ),
      decoration: BoxDecoration(
          color: kGreyColor, borderRadius: BorderRadius.circular(10.0)),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: kHintTextColor,
            size: 18.0,
          ),
          // edit text
          hintText: "Название, тикер, ISIN",
          hintStyle: Theme.of(context).textTheme.labelMedium,
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
        ),
        cursorColor: kBlackColor,
      ),
    );
  }
}
