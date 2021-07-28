import 'package:flutter/material.dart';
import 'package:katsuu/models/dog.dart';

class DogTile extends StatelessWidget {
  final Dog dog;
  const DogTile(this.dog);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                InkWell(
                  child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Image.network(
                        dog.image,
                        fit: BoxFit.cover,
                      )),
                  onTap: () {},
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Text(
              dog.name,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'avenir',
                  fontWeight: FontWeight.w800,
                  backgroundColor: Colors.white),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}