import '../Export/AllExport.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategory = 0;
  int currentItem = 0;

  final List<List<dynamic>> categoriesItem = [
    [
      CoffeeModel(image: "assets/images/coffe.png", name: "Hot Coffee", price: 30),
      CoffeeModel(image: "assets/images/coffe.png", name: "Hot Coffee", price: 35),
      CoffeeModel(image: "assets/images/coffe.png", name: "Hot Coffee", price: 40),
       CoffeeModel(image: "assets/images/coffe.png", name: "Hot Coffee", price: 35),
      CoffeeModel(image: "assets/images/coffe.png", name: "Hot Coffee", price: 40),
    ],
    [
      DrinksModel(
          image: "assets/images/Starbucks-Cup-Transparent 1.png",
          name: "Caramel \nFrappuccino",
          price: 30),
      DrinksModel(
          image: "assets/images/starbucks1.png",
          name: "Caramel \nFrappuccino",
          price: 35),
      DrinksModel(
          image: "assets/images/starbucks2.png",
          name: "Caramel \nFrappuccino",
          price: 40),
            DrinksModel(
          image: "assets/images/starbucks1.png",
          name: "Caramel \nFrappuccino",
          price: 35),
      DrinksModel(
          image: "assets/images/starbucks2.png",
          name: "Caramel \nFrappuccino",
          price: 40),
    ],
    [
      TeasModel(image: "assets/images/tea1.png", name: "Hot Tea", price: 30),
      TeasModel(image: "assets/images/tea1.png", name: "Black Tea", price: 35),
      TeasModel(image: "assets/images/tea1.png", name: "Hot Tea", price: 40),
       TeasModel(image: "assets/images/tea1.png", name: "Black Tea", price: 35),
      TeasModel(image: "assets/images/tea1.png", name: "Hot Tea", price: 40),
    ],
    [
      BakeryModel(
          image: "assets/images/cupcake.png", name: "Cup Cake", price: 30),
      BakeryModel(
          image: "assets/images/cupcake.png", name: "Cup Cake", price: 35),
      BakeryModel(
          image: "assets/images/cupcake.png", name: "Cup Cake", price: 40),
           BakeryModel(
          image: "assets/images/cupcake.png", name: "Cup Cake", price: 35),
      BakeryModel(
          image: "assets/images/cupcake.png", name: "Cup Cake", price: 40),
    ],
  ];
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        height: 1.sh,
        width: 1.sw,
        child: FadeAnimation(
          delay: 1,
          child: Stack(
            children: [
               SizedBox(
                height: 30.h,
              ),
              Positioned(
                top: 45.h,
                right: 20.w,
                left: 20.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/coffee icon.svg",
                       height: 25.h,
                      width: 25.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("CoffeeMan", style: ThemeText.Apptitle(16.0.h)),
                        Text(
                          "space",
                          style: ThemeText.Appsubtitle(14.0.h),
                        )
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/svg/icon.svg",
                      height: 25.h,
                      width: 25.w,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 120.h,
                left: 25.w,
                child: FadeAnimation(
                  delay: 1,
                  child: Row(
                    children: [
                      Text(
                        "Enjoy coffee \nany time",
                        style: ThemeText.Apptitle(30.0.h),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 0.h,
                  left: 0.w,
                  right: 0.w,
                  child: ClipPath(
                    clipper: TopCurveClipper(),
                    child: Container(
                      height: 1.sh * 0.76,
                      decoration: BoxDecoration(
                        color: Color(0xff458353),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: -210.h,
                            left: 0.w,
                            right: 0.w,
                            child: SizedBox(
                              height: 1.sh,
                              child: ListView.builder(
                                itemCount: catogries.length,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  final CategoriesModel cat = catogries[index];
                                  bool isFirstOrLast = (index == 0 ||
                                      index == catogries.length - 1);
                                  return Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 1.0,
                                        ),
                                        child: Container(
                                          height: double.infinity,
                                          width:1.sw/ 4,
                                          decoration: BoxDecoration(
                                          color:selectedCategory == index ?  Color(0xffEDB471) : null,
                                          ),
                                          child:  Transform.translate(
                                      offset: Offset(0, isFirstOrLast ? 80.h : 50.h),
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              selectedCategory = index;
                                            });
                                          },child: categoryItem(cat.name, cat.image),),)
                                        ),
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 0.h,
                  left: 0.w,
                  right: 0.w,
                  child: ClipPath(
                    clipper: TopCurveClipper(),
                    child: Container(
                      height: 1.sh * 0.6,
                      color: Color(0xff4B8F5A),
                      child: CarouselSlider.builder(
                          itemCount: categoriesItem[selectedCategory].length,
                          options: CarouselOptions(
                            height: 1.sh,
                            aspectRatio: 12,
                            viewportFraction: 0.55,
                            enableInfiniteScroll: false,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.55,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentItem = index;
                              });
                            },
                          ),
                          itemBuilder: (BuildContext context, index, realIndex) {
                            final item = categoriesItem[selectedCategory][index];
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.bottomToTop,
                                        child: ItemsDetail(items: item)));
                              },
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 55.h,
                                    left: 0.w,
                                    right: 0.w,
                                    child: Column(
                                      children: [
                                        FadeAnimation(
                                          delay: 1,
                                          child: CircleAvatar(
                                            radius: 90.h,
                                            backgroundColor: Color(0xff55A166),
                                          ),
                                        ),
                                         SizedBox(
                                          height: 20.h,
                                        ),
                                        FadeAnimation(
                                          delay: 1,
                                          child: Text(
                                            item.name,
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            style: ThemeText.Cattitle(22.0.h),
                                          ),
                                        ),
                                         SizedBox(
                                          height: 10.h,
                                        ),
                                        FadeAnimation(
                                          delay: 1.5,
                                          child: Text(
                                            "\$" + item.price.toString(),
                                            textAlign: TextAlign.center,
                                            style: ThemeText.Cattitle(20.0.h),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 140.h,
                                      left: 0.w,
                                      right: 0.w,
                                      child: Image.asset(
                                        item.image,
                                        fit: BoxFit.scaleDown,
                                      )),
                                ],
                              ),
                            );
                          }),
                    ),
                  )),
              Positioned(
                bottom: 10.h,
                left: 0.w,
                right: 0.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: categoriesItem[selectedCategory]
                      .asMap()
                      .entries
                      .map((entry) {
                    return GestureDetector(
                      onTap: () => setState(() => currentItem = entry.key),
                      child: Container(
                        width: currentItem == entry.key ? 16.0 : 8.0,
                        height: currentItem == entry.key ? 16.0 : 8.0,
                        margin:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffEDB471)),
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}