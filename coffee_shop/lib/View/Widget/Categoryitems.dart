import '../../Export/AllExport.dart';

Widget categoryItem(String label, image) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 18.0.w),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(60),
          child: Container(
            height: 55.h,
            width: 55.w,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.scaleDown)),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          label,
          style: ThemeText.Cattitle(13.0.h),
          maxLines: 1,
        ),
      ],
    ),
  );
}
