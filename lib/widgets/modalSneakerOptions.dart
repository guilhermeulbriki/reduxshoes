import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile/models/Sneaker.dart';

void showModalSneakerOptions(context, sneaker) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return (Content(sneaker: sneaker));
    },
  );
}

class Content extends StatefulWidget {
  final Sneaker sneaker;

  const Content({@required this.sneaker});

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  int selectedImage = 0;
  int selectedSize;
  Sneaker selectedSneaker;

  @override
  void initState() {
    selectedSneaker = widget.sneaker;
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(25, 26, 35, 1),
        image: DecorationImage(
          image: AssetImage(selectedSneaker.backImage),
          alignment: Alignment(-1, -1),
        ),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_outline),
                  iconSize: 32,
                  color: Color.fromRGBO(217, 218, 223, 1),
                  onPressed: () {
                    print('Favorite icons tapped');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  iconSize: 32,
                  color: Color.fromRGBO(222, 35, 69, 1),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 232,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage(selectedSneaker.images[selectedImage]),
                ),
                Column(
                  children: [
                    ...List.generate(
                      widget.sneaker.images.length,
                      (index) => buildImageCard(index),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 32),
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      selectedSneaker.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(217, 218, 223, 1),
                        height: 1.5,
                      ),
                    ),
                    Text(
                      '\$' + selectedSneaker.price,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(217, 218, 223, 1),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(48, 48, 65, 1),
                  ),
                ),
                Text(
                  'Nada mais estiloso, nada tão confortável, nada tão comprovado. O Nike Air Max 90 permanece fiel às suas raízes.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(177, 178, 190, 1),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  child: Text(
                    'Colors',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(217, 218, 223, 1),
                    ),
                  ),
                ),
                Container(
                  height: 64,
                  margin: EdgeInsets.only(top: 8),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.fromLTRB(36, 0, 20, 0),
                    children: [
                      ...List.generate(
                        demoSneakers.length,
                        (index) => demoSneakers[index].isPromoted
                            ? buildColorPromoteSneakerCard(demoSneakers[index])
                            : buildColorSneakerCard(demoSneakers[index]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  child: Text(
                    'Sizes',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(217, 218, 223, 1),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.only(top: 8),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.fromLTRB(36, 0, 28, 0),
                    children: [
                      ...List.generate(
                        selectedSneaker.sizes.length,
                        (index) =>
                            buildSizeSneakerCard(selectedSneaker.sizes[index]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 32),
            padding: EdgeInsets.symmetric(horizontal: 36),
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(222, 35, 69, 0.51),
                    offset: Offset(0.0, 4),
                    blurRadius: 16,
                    spreadRadius: 0.2,
                  ),
                ],
              ),
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minWidth: double.infinity, minHeight: 48),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Add to bag'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    primary: Color.fromRGBO(222, 35, 69, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildSizeSneakerCard(Size size) {
    return GestureDetector(
      onTap: () {
        if (size.isAvailable) {
          setState(() {
            selectedSize = size.number;
          });
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: 40,
        height: 40,
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: size.isAvailable
              ? Color.fromRGBO(38, 40, 54, 1)
              : Color.fromRGBO(38, 40, 54, 0.3),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selectedSize == size.number
                ? Color.fromRGBO(222, 35, 69, 1)
                : Colors.transparent,
          ),
        ),
        child: Text(
          size.number.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: size.isAvailable
                ? Color.fromRGBO(228, 229, 236, 1)
                : Color.fromRGBO(228, 229, 236, 0.3),
          ),
        ),
      ),
    );
  }

  GestureDetector buildColorSneakerCard(Sneaker sneaker) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSneaker = sneaker;
          selectedSize = null;
        });
      },
      child: Container(
        width: 64,
        height: 64,
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: Color.fromRGBO(38, 40, 54, 1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selectedSneaker.id == sneaker.id
                ? Color.fromRGBO(222, 35, 69, 1)
                : Colors.transparent,
          ),
        ),
        child: Transform.rotate(
          angle: 6.2,
          child: Image(
            image: AssetImage(sneaker.thumbnail),
          ),
        ),
      ),
    );
  }

  GestureDetector buildColorPromoteSneakerCard(Sneaker sneaker) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSneaker = sneaker;
          selectedSize = null;
        });
      },
      child: Container(
        width: 64,
        height: 64,
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromRGBO(178, 26, 54, 1),
              Color.fromRGBO(24, 35, 48, 1)
            ],
          ),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selectedSneaker.id == sneaker.id
                ? Color.fromRGBO(222, 35, 69, 1)
                : Colors.transparent,
          ),
        ),
        child: Transform.rotate(
          angle: 6.2,
          child: Image(
            image: AssetImage(sneaker.thumbnail),
          ),
        ),
      ),
    );
  }

  GestureDetector buildImageCard(index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 16, 36, 0),
        padding: EdgeInsets.all(4),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Color.fromRGBO(38, 40, 54, 0.4),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selectedImage == index
                ? Color.fromRGBO(221, 221, 224, 1)
                : Colors.transparent,
          ),
        ),
        child: Image.asset(selectedSneaker.images[index]),
      ),
    );
  }
}
