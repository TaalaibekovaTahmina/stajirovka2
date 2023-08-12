import 'package:flutter/material.dart';
import 'package:stajirovka2/body_scrool/card_body.dart';
import 'package:stajirovka2/body_scrool/exchangeable.dart';
import 'package:stajirovka2/constands/app_colors.dart';
import 'package:stajirovka2/constands/app_image.dart';
import 'package:stajirovka2/constands/app_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: AppColors.violet,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Builder(
              builder: (BuildContext context) {
                return InkWell(
                  child: const Icon(
                    Icons.menu,
                    color: AppColors.white,
                    size: 60,
                  ),
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            const Text(
              AppText.appBarText,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 55,
              height: 55,
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  AppImage.appBarImage,
                ),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.violet,
        child: SingleChildScrollView(
          child: Container(
            width: 100,
            decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(45.0),
                  topLeft: Radius.circular(45.0),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppText.popularServicer,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        AppText.seeAll,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CardBody(
                              image: Image.asset(AppImage.card1),
                              text: AppText.mensHairCut,
                            ),
                            CardBody(
                              image: Image.asset(AppImage.card2),
                              text: AppText.hairColor,
                            ),
                            CardBody(
                              image: Image.asset(AppImage.card3),
                              text: AppText.womensHairCut,
                            ),
                            CardBody(
                              image: Image.asset(AppImage.card4),
                              text: AppText.oilTreatment,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppText.popularServicer,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        AppText.seeAll,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Container(
                    height: 500,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Exchangeable(
                            image: Image.asset(AppImage.scroll1),
                            color: AppColors.scroll1,
                            text: AppText.dianaMcminn,
                            text1: AppText.hairCastle,
                            text2: AppText.san,
                          ),
                          Exchangeable(
                            image: Image.asset(AppImage.scroll2),
                            color: AppColors.scroll2,
                            text: AppText.richardWatts,
                            text1: AppText.cuttingLineStudio,
                            text2: AppText.san2,
                          ),
                          Exchangeable(
                            image: Image.asset(AppImage.scroll1),
                            color: AppColors.white,
                            text: AppText.dianaMcminn,
                            text1: AppText.hairCastle,
                            text2: AppText.san,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: 460,
        height: 80,
        child: Card(
          color: AppColors.violet,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home_outlined,
                color: AppColors.white,
                size: 50,
              ),
              Icon(
                Icons.notifications_outlined,
                color: AppColors.white,
                size: 50,
              ),
              Icon(
                Icons.calendar_month_outlined,
                color: AppColors.white,
                size: 50,
              ),
              Icon(
                Icons.settings_outlined,
                color: AppColors.white,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
