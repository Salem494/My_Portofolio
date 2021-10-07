import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_protfolio/luncher.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  final UrlLuncher url = UrlLuncher();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.9),
                  shape: BoxShape.rectangle,
                  borderRadius: new BorderRadius.vertical(
                    bottom: new Radius.elliptical(
                        MediaQuery.of(context).size.width, 100.0),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://cdn.mosoah.com/wp-content/uploads/2019/11/27152544/%D8%B5%D9%88%D8%B1-%D8%A8%D8%B1%D9%85%D8%AC%D8%A93.jpg',
                      ),
                      fit: BoxFit.fill),
                ),
                child: ClipRRect(
                  // make sure we apply clip it properly
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 30, left: 60, right: 60),
                                  child: CircleAvatar(
                                    radius: 71,
                                    backgroundColor: Colors.black54,
                                    child: CircleAvatar(
                                      radius: 65,
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage(
                                          'assets/profile2.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 110,
                                  left: 145,
                                  child: RawMaterialButton(
                                    elevation: 10,
                                    fillColor: Colors.white,
                                    child: Icon(Icons.add_a_photo),
                                    padding: EdgeInsets.all(15.0),
                                    shape: CircleBorder(),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Salem El Helw',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Mobile developer',
                              style: TextStyle(
                                color: Colors.black,
                                  fontSize: 24, fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.pin_drop_outlined,color: Colors.white,),
                                Text(
                                  'Cairo,Egypt',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '150',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        'Favorited',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 40),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                        BorderRadius.circular(160),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.orange.shade700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '288',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        'Profile Views',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Software Engineer technology Flutter Developer | Back End Developer ...',
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            url.LuncherWhats(01068984178,'Hey Iam Salem, Mobile Developer');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(160),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Icon(Icons.message,
                                  color: Colors.orange.shade700),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            url.LauncherCall(01068984178);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(160),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Icon(
                                Icons.call,
                                color: Colors.orange.shade700,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            url.sendMail();
                            },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(160),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Icon(Icons.email,
                                  color: Colors.orange.shade700),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Skills'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.teal.shade400,
                              // border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(160),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 5),
                              child: Text(
                                'UI/UX',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.teal.shade400,
                              // border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(160),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 5),
                              child: Text(
                                'Information Architecture',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.teal.shade400,
                              // border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(160),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 5),
                              child: Text(
                                'User Flow Design',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.teal.shade400,
                              // border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(160),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 5),
                              child: Text(
                                'Sketch',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Links'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            const url = 'https://www.linkedin.com/in/salem-mahrous-5505501aa/';
                            if( await canLaunch(url)){
                              await launch(url);
                            }else {
                              throw 'Could not lunch URL';
                            }
                            print('salem[;f');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(160),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/linkedin.png',fit: BoxFit.cover,width: 50,height: 50,),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            const url = 'https://www.facebook.com/ebn.elhelw.7/';
                            if( await canLaunch(url)){
                              await launch(url);
                            }else {
                              throw 'Could not lunch URL';
                            }
                            print('salem[;f');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(160),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/facebook.png',fit: BoxFit.cover,height: 50,width: 50,),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () async {
                            const url = 'https://github.com/Salem494?tab=repositories';
                            if( await canLaunch(url)){
                              await launch(url);
                            }else {
                              throw 'Could not lunch URL';
                            }
                            print('salem[;f');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(160),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/git.png',fit: BoxFit.cover,height: 50,width: 50),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
