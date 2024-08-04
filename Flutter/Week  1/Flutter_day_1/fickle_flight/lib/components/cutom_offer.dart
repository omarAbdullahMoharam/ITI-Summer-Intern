// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOffer extends StatefulWidget {
  CustomOffer(
      {super.key,
      required this.offerBanner,
      required this.offerTitle,
      required this.offerCridetImage});
  final String offerBanner, offerTitle;
  final Image offerCridetImage;
  bool _isFav = false;
  Icon iconFired() {
    return Icon(
      _isFav ? Icons.favorite : Icons.favorite_border_outlined,
      size: 31,
    );
  }

  @override
  State<CustomOffer> createState() => _CustomOfferState();
}

class _CustomOfferState extends State<CustomOffer> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0xFF32D4AD),
                      ),
                      child: Center(
                        child: Text(
                          'LIMITED OFFER!',
                          style: GoogleFonts.roboto(
                              color: const Color(0xFFFFFFFF)),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    IconButton(
                      icon: widget.iconFired(),
                      color: const Color(0xFF1262AE),
                      onPressed: () {
                        setState(() {
                          widget._isFav = !widget._isFav;
                        });
                      },
                    ),
                  ],
                ),
                Text(
                  widget.offerBanner,
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF191919),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        widget.offerCridetImage,
                        SizedBox(
                          width: 170,
                          child: Text(
                            widget.offerTitle,
                            style: GoogleFonts.roboto(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF7E8B97),
                            ),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF7E8B97),
                          size: 30.0,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
