import 'package:flutter/material.dart';
import 'package:test_tasks/screens/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var _maxLines = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [.1, .4, .7, .9],
              colors: [
                Colors.purple[900],
                Colors.purple[900],
                Colors.purple[700],
                Colors.purple[700],
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 45, left: 30, right: 30, bottom: 125),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Профиль",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 30),
                  _profilePic(),
                  SizedBox(height: 30),
                  _profileDetails(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Row(
          children: [
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red[100],
                ),
                child: Center(
                  child: IconButton(
                      icon: Icon(Icons.exit_to_app_outlined, color: Colors.red),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                            (route) => false);
                      }),
                ),
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                    (route) => false);
              },
              child: Text(
                "Выйти",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileDetails() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 17,
                  child: Image.asset(
                    'images/image/vector.png',
                    fit: BoxFit.cover,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  "Luisa Alow",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Insta-",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[400],
                    fontSize: 10,
                  ),
                ),
                Text(
                  "блогер",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[400],
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            _subDetails(),
            SizedBox(height: 10),
            _profileData(),
            SizedBox(height: 15),
            _buttons(),
            SizedBox(height: 15),
            Text(
              "Редактировать",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 23,
          width: 65,
          decoration: BoxDecoration(
            color: Colors.purple[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "Мода",
              style: TextStyle(
                color: Colors.purple[900],
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ),
        ),
        Container(
          height: 23,
          width: 75,
          decoration: BoxDecoration(
            color: Colors.purple[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "Красота",
              style: TextStyle(
                color: Colors.purple[900],
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ),
        ),
        Container(
          height: 23,
          width: 79,
          decoration: BoxDecoration(
            color: Colors.purple[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "Здоровье",
              style: TextStyle(
                color: Colors.purple[900],
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _profileData() {
    return Column(
      children: [
        Center(
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            maxLines: _maxLines,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(height: 5),
        Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (_maxLines == 4) {
                  _maxLines = 100;
                } else {
                  _maxLines = 4;
                }
              });
            },
            child: Text(
              _maxLines == 4 ? "больше" : "меньше",
              style: TextStyle(
                color: Colors.purple[900],
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _subDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Almaty',
          style: TextStyle(
            color: Colors.purple[900],
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
        ),
        Container(
          width: 1.0,
          height: 23.0,
          color: Colors.black45,
        ),
        Row(
          children: [
            Text(
              '4.6',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Icon(Icons.star, color: Colors.yellow, size: 17),
          ],
        ),
        Container(
          width: 1.0,
          height: 23.0,
          color: Colors.black45,
        ),
        Text(
          '25 лет',
          style: TextStyle(
            color: Colors.purple[900],
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _profilePic() {
    return Container(
      height: 170,
      width: 170,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.purple[700], width: 7.0),
      ),
      child: Container(
        height: 150.0,
        width: 150.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/image/profile.jpg"),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 5.0),
        ),
      ),
    );
  }
}
