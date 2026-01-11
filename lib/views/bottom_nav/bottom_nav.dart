import 'package:flutter/material.dart';
import 'package:revin_krishi/core/theme/app_colors.dart';

class ScreenBottomNav extends StatelessWidget {
  const ScreenBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: const Text("Dashboard"), elevation: 5),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          SizedBox(height: 15),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.red),
              Text("  Your Location, Kerala"),
            ],
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(15),
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/sky back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Today's Weather",
                      style: TextStyle(color: AppColors.cardWhite),
                    ),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "32°C Sunny",
                          style: TextStyle(
                            color: AppColors.textDark,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Text(
                        //   "Sunny",
                        //   style: TextStyle(
                        //     color: AppColors.textDark,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      ],
                    ),

                    Text(
                      "Humidity: 78%",
                      style: TextStyle(color: AppColors.textDark),
                    ),
                    // Text(
                    //   "Palakkad, Kerala",
                    //   style: TextStyle(color: AppColors.textDark),
                    // ),
                  ],
                ),
                Column(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Image.asset('assets/images/sun.png', height: 80, width: 80),
                    Text(
                      "Rainfall: 0%",
                      style: TextStyle(color: AppColors.textDark),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 217, 255, 129),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Container(
                      height: 35,
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: AppColors.primaryGreen,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Recommended Crop",
                        style: TextStyle(
                          color: AppColors.cardWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: .spaceEvenly,
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              "Paddy",
                              style: TextStyle(
                                color: AppColors.textDark,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Best for current season",
                              style: TextStyle(color: AppColors.greyText),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: AppColors.lightGreen,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: -15,
                  left: 15,
                  child: Image.asset(
                    'assets/images/nell.png',
                    height: 80,
                    width: 80,
                    fit: BoxFit.contain,
                    alignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/land.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 35,
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                        color: AppColors.cardWhite,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Irrigation Tip",
                        style: TextStyle(
                          color: AppColors.textDark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Water your crops early in the morning to reduce evaporation.",
                        style: TextStyle(color: AppColors.textDark),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child: Image.asset(
                    'assets/images/water-drop.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                    alignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Agri tips of the day",
            style: TextStyle(
              color: AppColors.textDark,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.cardWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                spacing: 15,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/tomato.webp'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          "Protect your tomato plants from pests using organic insecticides.",
                        ),
                        Align(
                          alignment: AlignmentGeometry.bottomRight,
                          child: Text(
                            "Read more >",
                            style: TextStyle(color: AppColors.primaryGreen),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            separatorBuilder: (context, index) => SizedBox(height: 15),
            itemCount: 5,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
