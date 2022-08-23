import 'package:currency_news_app/constants/exports.dart';
import 'package:currency_news_app/mock_datas.dart';

class StoryCards extends StatelessWidget {
  const StoryCards({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: size.width,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, mainAxisSpacing: 10),
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StoryViews(
                  StoryMockDatas.titles[index],
                  StoryMockDatas.images[index],
                  StoryMockDatas.colors[index],
                  context.read<StoriesProvider>().hasWatched,
                ),
              ),
            ),
            child: context.read<StoriesProvider>().hasWatched
                ? Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: StoryMockDatas.colors[index],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // edit text
                        Expanded(
                          child: Center(
                            child: Text(
                              StoryMockDatas.titles[index],
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Image.asset(
                          StoryMockDatas.images[index],
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  )
                : Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21.0),
                    border: Border.all(
                      color: kMainColor.withOpacity(0.5),
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: StoryMockDatas.colors[index],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // edit text
                        Expanded(
                          child: Center(
                            child: Text(
                              StoryMockDatas.titles[index],
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Image.asset(
                          StoryMockDatas.images[index],
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
          );
        },
      ),
    );
  }
}
