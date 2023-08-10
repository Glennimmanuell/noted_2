import 'package:flutter/material.dart';
import 'package:noted_2/widgets/my_horizontal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 20),
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Online', style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mulish',
                ),),
                Text('Master Class', style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Mulish',
                ),),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 349,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index){
                    return MyHorizontalList(
                        startColor: 0xFF9288E4,
                        endColor: 0xFF534EA7,
                        courseHeadline: 'Recommended',
                        courseTitle: 'UI/UX '
                            'DESIGNER\nBEGINNER',
                        courseImage: 'assets/images/);
                  }),
          ],
        ),
      ),
    );
  }
}
