import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 5),
            height: 50,
            width: 300,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Search Here",
                hintStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Spacer(),
          Icon(
            Icons.camera_alt,
            size: 27,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
