import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'components/location_list_tile.dart';
import 'constants.dart';

class SearchLocationScreen extends StatefulWidget {
  const SearchLocationScreen({Key? key}) : super(key: key);

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: CircleAvatar(
            backgroundColor: secondaryColor10LightTheme,
            child: Image.asset(
              "assets/icons/location_icon.png",
              height: 25.h,
              width: 25.w,
              color: secondaryColor40LightTheme,
            ),
          ),
        ),
        title: const Text(
          "Set Location",
          style: TextStyle(color: textColorLightTheme),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: secondaryColor10LightTheme,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.close, color: Colors.black),
            ),
          ),
          SizedBox(width: defaultPadding.w)
        ],
      ),
      body: Column(
        children: [
          Form(
            child: Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: TextFormField(
                onChanged: (value) {},
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: "Search your location",
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    child: Image.asset(
                      "assets/icons/location_pin_image.png",
                      color: secondaryColor40LightTheme,
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            height: 4.h,
            thickness: 4,
            color: secondaryColor5LightTheme,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/location_icon.png",
                height: 16.h,
              ),
              label: const Text("Use my Current Location"),
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor10LightTheme,
                foregroundColor: textColorLightTheme,
                elevation: 0,
                fixedSize: const Size(double.infinity, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
              ),
            ),
          ),
          Divider(
            height: 4.h,
            thickness: 4,
            color: secondaryColor5LightTheme,
          ),
          LocationListTile(
            press: () {},
            location: "Banasree, Dhaka, Bangladesh",
          ),
        ],
      ),
    );
  }
}
