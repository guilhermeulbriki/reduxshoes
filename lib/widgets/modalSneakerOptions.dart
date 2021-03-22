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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 748,
      decoration: BoxDecoration(
        color: Color.fromRGBO(25, 26, 35, 1),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        image: DecorationImage(
          image: AssetImage(widget.sneaker.backImage),
          alignment: Alignment(-1, -1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage(widget.sneaker.images[selectedImage]),
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
                      widget.sneaker.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(217, 218, 223, 1),
                        height: 1.5,
                      ),
                    ),
                    Text(
                      '\$' + widget.sneaker.price,
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
                  widget.sneaker.description,
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
        ],
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
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: selectedImage == index
                ? Color.fromRGBO(255, 35, 69, 1)
                : Colors.transparent,
          ),
        ),
        child: Image.asset(widget.sneaker.images[index]),
      ),
    );
  }
}
