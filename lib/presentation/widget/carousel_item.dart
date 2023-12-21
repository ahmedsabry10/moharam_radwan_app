import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OurWorkItem extends StatefulWidget {
  String imageUrl;
  OurWorkItem({super.key, required this.imageUrl});

  @override
  State<OurWorkItem> createState() => _OurWorkItemState();
}

class _OurWorkItemState extends State<OurWorkItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
          ),

          child: CachedNetworkImage(
            imageUrl:widget.imageUrl,
            fit: BoxFit.fill,
            height: 120,
            width: 120,
            placeholder: (context, url) => const Center(
              child: Text(
                'Loading ...',
                style: TextStyle(
                    color: Colors.green, fontSize: 15.0),
              ),
            ),
            errorWidget: (context, url, error) =>
            const Icon(Icons.error),
          ),

          //Image.network(widget.product.imageUrl)
        ),
      ),
    );
  }
}
