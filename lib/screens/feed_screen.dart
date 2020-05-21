import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
      ),
      body: FeedCard(),
    );
  }
}

class FeedCard extends StatefulWidget {
  @override
  _FeedCardState createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {
  final List postList = [
    [
      'Anup Raj Rijal',
      'First Year',
      'May 10',
      [
        'https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2014/11/8/1415445010984/Mark-Zuckerberg-012.jpg?width=620&quality=85&auto=format&fit=max&s=053c9d9f9020b3ec4521cc6b5a26e16a',
        null
      ]
    ],
    [
      'Sujan Pradhan',
      'Second Year',
      'Jan 10',
      [
        null,
        'Hami Ta testo hoina ni bro,Hami Ta testo hoina ni bro,Hami Ta testo hoina ni bro,Hudai hoina ni bro testo ta hune kurai bhae na ni'
      ]
    ],
    [
      'Bishal Magar',
      'Third Year',
      'OCt 1',
      [
        'https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2014/11/8/1415445010984/Mark-Zuckerberg-012.jpg?width=620&quality=85&auto=format&fit=max&s=053c9d9f9020b3ec4521cc6b5a26e16a',
        'Hami Yestai ta honi bro.Hami Yestai ta honi bro.Hami Yestai ta honi bro.Hami Yestai ta honi bro.'
      ]
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            child: Column(
              children: <Widget>[
                feedTopBar(index),
                feedContent(index),
                feedBottomBar(index),
              ],
            ),
          );
        },
        itemCount: postList.length,
      ),
    );
  }

  Widget feedTopBar(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 4, top: 8, bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/icons/anup.JPG',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${postList[index][0]}',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${postList[index][1]}',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('${postList[index][2]}'),
              SizedBox(
                width: 20,
              ),
              InkWell(
                child: Container(
                  child: SvgPicture.asset(
                    'assets/icons/more-vertical.svg',
                    width: 30,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget feedContent(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Column(
        children: <Widget>[
          if (postList[index][3][1] != null)
            Container(
              child: Text(
                '${postList[index][3][1]}',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          if (postList[index][3][1] != null && postList[index][3][0] != null)
            SizedBox(
              height: 8.0,
            ),
          if (postList[index][3][0] != null)
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(width: 0),
                  borderRadius: BorderRadius.circular(10),
                  image: (postList[index][3][0] == null)
                      ? null
                      : DecorationImage(
                          image: NetworkImage('${postList[index][3][0]}'),
                          fit: BoxFit.cover)),
            ),
        ],
      ),
    );
  }

  Widget feedBottomBar(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              InkWell(
                child: SvgPicture.asset(
                  'assets/icons/heart-outline.svg',
                  width: 30,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              InkWell(
                child: SvgPicture.asset(
                  'assets/icons/message-square-outline.svg',
                  width: 30,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              InkWell(
                child: SvgPicture.asset(
                  'assets/icons/share.svg',
                  width: 30,
                ),
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              InkWell(
                child: SvgPicture.asset(
                  'assets/icons/bookmark-outline.svg',
                  width: 30,
                ),
              ),
              SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}
