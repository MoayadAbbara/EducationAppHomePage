import 'package:flutter/material.dart';

class TopCourse extends StatelessWidget {
  final String image;
  final String title;
  final int studentNumber;
  final double rating;

  const TopCourse({
    super.key,
    required this.image,
    required this.title,
    required this.studentNumber,
    required this.rating,
  });

  Widget ratingList(starnum) {
    final stars = <Widget>[];
    for (var i = 0; i < starnum.toInt(); i++) {
      stars.add(
        const Icon(
          Icons.star,
          color: Colors.orange,
          size: 22,
        ),
      );
    }
    for (var i = 0; i < 5 - starnum; i++) {
      stars.add(
        const Icon(
          Icons.star,
          color: Colors.grey,
          size: 22,
        ),
      );
    }
    return Row(
      children: stars,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.4,
          color: const Color.fromARGB(156, 212, 212, 212),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(2)),
              color: const Color.fromARGB(255, 0, 0, 0),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 63, 81, 181).withOpacity(0.7),
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Top Picks',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 285,
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  '$studentNumber Students',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    ratingList(rating),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      rating.toStringAsFixed(1),
                      style: const TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
