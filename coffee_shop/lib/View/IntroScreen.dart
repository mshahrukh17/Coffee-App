import '../Export/AllExport.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.3,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'), fit: BoxFit.scaleDown)),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Good Vibes & Great Coffee Await! ☕ Start your day with us!",
              style: ThemeText.Apptitle(24.0),
              textAlign: TextAlign.center,
              maxLines: null,
              ),
            ),
            const SizedBox(height: 80,),
            Center(
              child: ActionSlider.standard(
                sliderBehavior: SliderBehavior.stretch,
                width: size.width * 0.8,
                backgroundColor: Color(0xff56A568),
                toggleColor: Color(0xffEDB471),
                // 0xff56A568
                // 0xffEDB471
                action: (controller)async  {
                  controller.loading(); 
                  await Future.delayed(const Duration(seconds: 1));
                  controller.success(); 
                  await Future.delayed(const Duration(milliseconds: 900));
                  await Navigator.push(context, PageTransition(child: HomeScreen(), type: PageTransitionType.fade));
                  controller.reset(); 
                },
                child: Text('Slide to Start',
                style: ThemeText.Apptitle(20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
