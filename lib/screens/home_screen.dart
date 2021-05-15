import 'package:flutter/material.dart';
import 'package:test_tasks/widgets/category_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       begin: Alignment.topCenter,
      //       end: Alignment.bottomCenter,
      //       stops: [.1, .4, .7, .9],
      //       colors: [
      //         Colors.pink[400],
      //         Colors.pink[400],
      //         Colors.purple[700],
      //         Colors.purple[700],
      //       ],
      //     ),
      //   ),
      //   child: Padding(
      //     padding:
      //         const EdgeInsets.only(top: 45, left: 15, right: 15, bottom: 15),
      //     child: SingleChildScrollView(
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: [
      //           Text(
      //             "Главная",
      //             style: TextStyle(
      //               fontWeight: FontWeight.w600,
      //               color: Colors.white,
      //               fontSize: 20,
      //             ),
      //           ),
      //           SizedBox(height: 20),
      //           _adsCard(),
      //           SizedBox(height: 10),
      //           _controllers(),
      //           SizedBox(height: 10),
      //           _groupContainer(),
      //         ],
      //       ),
      //     ),
      //   ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .75,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [.1, .4, .7, .9],
                colors: [
                  Colors.pink[400],
                  Colors.pink[400],
                  Colors.purple[700],
                  Colors.purple[700],
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(
              top: 50,
              bottom: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Главная",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                _adsCard(),
                SizedBox(height: 10),
                _controllers(),
                SizedBox(height: 10),
                _groupContainer(),
                SizedBox(height: 10),
                _categories()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _categories() {
    return Container(
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                "Категории",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            CategoryWidget(),
          ],
        ),
      ),
    );
  }

  Widget _groupContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Image.asset(
                    'images/image/vector.png',
                    fit: BoxFit.cover,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Начните зарабатывать!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Приобретите тариф Вthype-PRO",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "и начните свою карьеру!",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _controllers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
        ),
        SizedBox(width: 5),
        Container(
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[600],
          ),
        ),
        SizedBox(width: 5),
        Container(
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  Widget _adsCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [.4, .9],
                        colors: [
                          Colors.purple[700],
                          Colors.pink[400],
                        ],
                      ),
                    ),
                    child: Image.asset(
                      'images/image/hands.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 35,
                    bottom: 10,
                    child: Text(
                      "СОВСЕМ СКОРО",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Рекламные кампания",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Новое обновление!",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          child: Image.asset(
                            'images/image/ads.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
