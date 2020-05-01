import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.short_text,
                  color: Colors.grey,
                  size: 32,
                ),
                SizedBox(height: 64.0),
                Text(
                  "Amazon \nJungle",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32),
                _buildSearchBar(),
                SizedBox(height: 32),
                _buildHorizontalScrollTabs(),
                SizedBox(height: 32),
                _buildHorizontalScrollCards(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.white,
        ),
        child: _buildBottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: 0,
      onTap: null,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          title: Text("Home"),
          icon: Icon(
            Icons.home,
            size: 32,
            color: Colors.red,
          ),
        ),
        BottomNavigationBarItem(
          title: Text("Favorite"),
          icon: Icon(Icons.star_border),
        ),
        BottomNavigationBarItem(
          title: Text("Location"),
          icon: Icon(Icons.location_on),
        ),
        BottomNavigationBarItem(
          title: Text("Person"),
          icon: Icon(Icons.person),
        ),
      ],
    );
  }

  Container _buildHorizontalScrollCards() {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildCard(AssetImage("assets/parrot.jpg")),
          SizedBox(width: 8),
          _buildCard(AssetImage("assets/lizard.jpg")),
          SizedBox(width: 8),
          _buildCard(AssetImage("assets/flamingo.jpg")),
        ],
      ),
    );
  }

  AspectRatio _buildCard(image) {
    return AspectRatio(
      aspectRatio: 1.8 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Container _buildHorizontalScrollTabs() {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Text(
            "Choose \ntype of tour",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(width: 32),
          FlatButton(
            onPressed: () {},
            child: Text(
              "Hot",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(width: 16),
          FlatButton(
            onPressed: () {},
            child: Text(
              "Group",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            color: Colors.grey[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(width: 16),
          FlatButton(
            onPressed: () {},
            child: Text(
              "Pirority",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            color: Colors.grey[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: Row(
          children: <Widget>[
            SizedBox(height: 8.0, width: 16.0),
            Icon(
              Icons.search,
              color: Colors.black,
              size: 24,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
