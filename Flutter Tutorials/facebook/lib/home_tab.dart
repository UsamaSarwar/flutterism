import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ListTile(
              /// Network Image
              // leading: Image.network(
              //   'https://www.usama.dev/favicon.png',
              //   height: 45,
              //   width: 45,
              // ),
              leading: Image.asset(
                'assets/favicon.png',
                height: 45,
                width: 45,
              ),
              title: SizedBox(
                height: 40.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45.0),
                    ),
                    hintText: 'What\'s on your mind?',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      height: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            height: 1.0,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    SizedBox(width: 4),
                    Text('Live')
                  ],
                ),
                Container(
                  width: 1.0,
                  height: 17.0,
                  color: Colors.grey,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.photo,
                      color: Colors.green,
                    ),
                    SizedBox(width: 4),
                    Text('Photo')
                  ],
                ),
                Container(
                  width: 1.0,
                  height: 17.0,
                  color: Colors.grey,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.video_call,
                      color: Colors.purple,
                    ),
                    SizedBox(width: 4),
                    Text('Room')
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 7,
            thickness: 10,
            color: Colors.grey.shade300,
          ),
          facebookPost(),
          facebookPost(),
          facebookPost(),
          facebookPost(),
        ],
      ),
    );
  }
}

Column facebookPost() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/favicon.png',
                  height: 45,
                  width: 45,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Usama Sarwar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Row(
                    children: [
                      const Text('35 m '),
                      Icon(
                        Icons.public,
                        color: Colors.grey[600],
                        size: 18,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.more_horiz, color: Colors.grey),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(Icons.close, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
      const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('Hi Guys! How are you doing?'),
      ),
      Image.asset(
        'assets/usama.jpg',
        fit: BoxFit.contain,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.thumb_up_alt_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.favorite_rounded,
                    color: Colors.red,
                  ),
                  SizedBox(width: 4),
                  Text('45')
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text('9 comments'),
            ),
          ],
        ),
      ),
      const Divider(
        height: 1.0,
        color: Colors.grey,
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.grey,
                ),
                SizedBox(width: 4),
                Text('Like')
              ],
            ),
            Row(
              children: const [
                Icon(
                  Icons.comment,
                  color: Colors.grey,
                ),
                SizedBox(width: 4),
                Text('Comment')
              ],
            ),
            Row(
              children: const [
                Icon(
                  Icons.share,
                  color: Colors.grey,
                ),
                SizedBox(width: 4),
                Text('Share')
              ],
            )
          ],
        ),
      ),
    ],
  );
}
