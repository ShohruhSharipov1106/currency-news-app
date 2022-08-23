import 'package:currency_news_app/constants/exports.dart';
import 'package:currency_news_app/mock_datas.dart';
import 'package:currency_news_app/pages/portfolio/components/notification_card.dart';
import 'package:currency_news_app/pages/portfolio/components/portfolio_inform_card.dart';
import 'package:currency_news_app/pages/portfolio/components/portfolio_search.dart';
import 'package:currency_news_app/pages/portfolio/components/story_cards.dart';


class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final watchPro = context.watch<StoriesProvider>();
    final readPro = context.watch<StoriesProvider>();
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: kWhiteGreyGradient,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 0.5, 1]),
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                PortfolioSearch(searchController: searchController),
                const PortfolioInformCard(),
                SizedBox(height: 22),
                Container(
                  width: size.width,
                  padding: EdgeInsets.only(left: 20.0, top: 25.0),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15.0)),
                    color: kWhiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      watchPro.isClosed
                          ? const SizedBox()
                          : NotificationCard(readPro: readPro, size: size),
                      StoryCards(size: size),
                      SizedBox(height: 25),
                      //edit text
                      Text("Акции",
                          style: Theme.of(context).textTheme.displayMedium),
                      SizedBox(height: 5),
                      for (int i = 0; i < 6; i++)
                        ListTile(
                          enabled: false,
                          minLeadingWidth: 40.0,
                          dense: true,
                          leading: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: BanksMockDatas.colors[i],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                BanksMockDatas.icons[i],
                              ),
                            ),
                          ),
                          title: Text(
                            "Hamkorbank",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: kBlackColor),
                          ),
                          subtitle: Text(BanksMockDatas.subtitles[i],
                              style: Theme.of(context).textTheme.displaySmall),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                BanksMockDatas.trailingTitles[i],
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: kBlackColor),
                              ),
                              Text(
                                BanksMockDatas.trailingSubtitles[i],
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      color: BanksMockDatas.trailingSubtitles[i]
                                              .startsWith("+")
                                          ? kIncreaseColor
                                          : kDecreaseColor,
                                    ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: kMainColor,
        unselectedItemColor: kUnselectedItemColor,
        backgroundColor: kWhiteColor,
        showUnselectedLabels: true,
        selectedLabelStyle: Theme.of(context).textTheme.labelSmall,
        unselectedLabelStyle: Theme.of(context).textTheme.labelSmall,
        items: [
          BottomNavigationBarItem(
              backgroundColor: kWhiteColor,
              icon: SvgPicture.asset("assets/icons/portfolio.svg"),
              // edit text
              label: "Портфель"),
          BottomNavigationBarItem(
              backgroundColor: kWhiteColor,
              icon: SvgPicture.asset("assets/icons/helpful.svg"),
              // edit text
              label: "Полезное"),
          BottomNavigationBarItem(
              backgroundColor: kWhiteColor,
              icon: SvgPicture.asset("assets/icons/market.svg"),
              // edit text
              label: "Маркет"),
          BottomNavigationBarItem(
              backgroundColor: kWhiteColor,
              icon: SvgPicture.asset("assets/icons/assistent.svg"),
              // edit text
              label: "Помощник"),
          BottomNavigationBarItem(
              backgroundColor: kWhiteColor,
              icon: SvgPicture.asset("assets/icons/more.svg"),
              // edit text
              label: "Прочее"),
        ],
      ),
    );
  }
}
