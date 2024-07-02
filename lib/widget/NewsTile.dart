import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../model/articlemodel.dart';

class newstile extends StatelessWidget {
  final articleModel articlemodell;
  newstile({super.key, required this.articlemodell});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: CachedNetworkImage(
              imageUrl: articlemodell.image.toString(),
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) => Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Image.asset(
                'assets/placeholder.png',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            articlemodell.title.toString(),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 20,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 5),
          Text(
            articlemodell.subtitle.toString(),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              fontSize: 17,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
