import 'package:example_app/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../data/asset/asset_keys.dart';
import '../../../translation/strings.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final t = T(context);

    return Scaffold(
      backgroundColor: const Color(0xFF00DF71),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 210),
            SvgPicture.asset(Assets.approveIcon, width: 200, height: 200),
            const SizedBox(height: 10),
            Text(
              t.success,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: Colors.black),
            ),
            const SizedBox(height: 10),
            Text(
              t.success1,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              t.success2,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  onPressed: (){
                    Get.offNamed(AppRoutes.enableLocation);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                  child: Text(t.bntContinue,style: TextStyle(color: Color(0xFF00DF71),fontWeight: FontWeight.bold, fontSize: 16),)
              ),
            )
          ],
        ),
      ),
    );
  }
}
class EnableLocation extends StatelessWidget {
  const EnableLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final t = T(context);

    return Scaffold(
      backgroundColor: const Color(0xFF00DF71),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 110,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                t.enableLocation,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(t.enableLocation1, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
            const SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.locationIcon, width: 220, height: 220),
              ],
            ),
            const SizedBox(height: 160,),
            GestureDetector(
              onTap: (){
                Get.offAllNamed(AppRoutes.service);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(t.skipForNow, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
              child: ElevatedButton(
                  onPressed: (){
                    Get.offNamed(AppRoutes.turnOnNotification);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                  child: Text(t.enableLocationBtn,style: TextStyle(color: Color(0xFF00DF71),fontWeight: FontWeight.bold, fontSize: 16),)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    t.canChangeInSetting,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
class TurnOnNotification extends StatelessWidget {
  const TurnOnNotification({super.key});

  @override
  Widget build(BuildContext context) {
    final t = T(context);

    return Scaffold(
      backgroundColor: const Color(0xFF00DF71),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 110,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                t.turnOnNotification,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(t.turnOnNotification1, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
            const SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 55,),
                SvgPicture.asset(Assets.notificationIcon, width: 220, height: 220),
              ],
            ),
            const SizedBox(height: 160,),
            GestureDetector(
              onTap: (){
                Get.offAllNamed(AppRoutes.service);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(t.skipForNow, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
              child: ElevatedButton(
                  onPressed: (){
                    Get.offAllNamed(AppRoutes.service);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                  child: Text(t.turnOnNotificationBtn,style: TextStyle(color: Color(0xFF00DF71),fontWeight: FontWeight.bold, fontSize: 16),)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    t.canChangeInSetting,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

