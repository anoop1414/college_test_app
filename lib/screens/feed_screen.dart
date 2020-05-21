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
      body: FeedDetails(),
    );
  }
}

class FeedDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7.0),
      child: Column(
        children: <Widget>[
          Card(
            elevation: 0,
            child: Column(
              children: <Widget>[
                FeedTopBar(),
                MiddleFeed(),
                FeedReactionBar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FeedTopBar extends StatelessWidget {
  const FeedTopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
//      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
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
                    'Name Here',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Semester Here',
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
              Text('Date Here'),
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
}

class MiddleFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Container(
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(width: 0),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(
                  'assets/icons/hello.jpg',
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}

class FeedReactionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
