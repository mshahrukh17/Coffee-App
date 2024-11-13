import '../Export/AllExport.dart';

class ItemsDetail extends StatefulWidget {
  final items;
  ItemsDetail({super.key, required this.items});

  @override
  State<ItemsDetail> createState() => _ItemsDetailState();
}

class _ItemsDetailState extends State<ItemsDetail> {
  int selectSize = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: ThemeText.Apptitle(22.0.h),
        ),
        centerTitle: true,
        actions: [
          SvgPicture.asset(
            'assets/svg/icon.svg',
            height: 30.h,
            width: 30.w,
            fit: BoxFit.scaleDown,
          ),
           SizedBox(
            width: 15.w,
          )
        ],
      ),
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Stack(
          children: [
            Positioned(
              top: 40.h,
              left: 0.w,
              right: 0.w,
              child:
                  FadeAnimation(
                    delay: 0.6,
                    child: CircleAvatar(radius: 150.h, backgroundColor: Color(0xff4B8F5A))),
            ),
            Positioned(
                top: 20.h,
                left: 0.w,
                right: 0.w,
                child: FadeAnimation(
                  delay: 0.8,
                  child: Container(
                    height: 1.sh * 0.4,
                    width: 1.sw * 0.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            widget.items.image,
                          ),
                          fit: BoxFit.scaleDown),
                    ),
                  ),
                )),
            Positioned(
              bottom: 20.h,
              left: 18.w,
              right: 18.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                    delay: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.items.name,
                          maxLines: 2,
                          style: ThemeText.Apptitle(24.0.h),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$' + widget.items.price.toString(),
                              style: ThemeText.ColorTitle(24.0.h),
                            ),
                            Text(
                              "Best Sales",
                              style: ThemeText.Appsubtitle(12.0.h),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                   SizedBox(
                    height: 10.h,
                  ),
                  FadeAnimation(
                    delay: 1.2,
                    child: Text(
                      "Size options",
                      style: ThemeText.Appsubtitle(18.0.h),
                    ),
                  ),
                   SizedBox(
                    height: 22.h,
                  ),
                  FadeAnimation(
                    delay: 1.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(sizes.length, (index) {
                          return Column(
                            children: [
                              Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(80),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectSize = index;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 32.h,
                                    backgroundColor:selectSize == index ?Color(0xff458353) : Color(0xffEDEDED),
                                    child: Center(
                                      child: Text(
                                        sizes[index].symbol,
                                        style: ThemeText.Apptitle(25.0.h),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                               SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                sizes[index].itemsize,
                                style: ThemeText.Appsubtitle(16.0.h),
                              )
                            ],
                          );
                        })
                      ],
                    ),
                  ),
                   SizedBox(
                    height: 30.h,
                  ),
                  FadeAnimation(
                    delay: 1.6,
                    child: Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                              color: Color(0xff458353), shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                          child: Center(
                              child: Text(
                            "1",
                            style: ThemeText.Apptitle(20.0.h),
                          )),
                        ),
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                              color: Color(0xff458353), shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Spacer(),
                        MaterialButton(onPressed: (){}, child: Text("Order",
                        style: ThemeText.Cattitle(22.0.h),
                        ),
                        color: Color(0xff458353),
                        height: 50,
                        minWidth: 1.sw * 0.4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)
                        ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
