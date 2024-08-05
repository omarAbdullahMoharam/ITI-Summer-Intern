import 'package:fickle_flight/components/cutom_offer.dart';
import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Offers'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Card(
        child: Column(
          children: [
            CustomOffer(
              offerBanner: 'Get 20% discount with your Master credit cards',
              offerTitle:
                  'Use your mastercard with any transaction and get 20% discount instantly! ',
              offerCridetImage: Image.asset('assets/offers/MasterCard.png'),
            ),
            CustomOffer(
              offerBanner: '25% discount with your VISA credit or debit cards',
              offerTitle:
                  'Use your VISA credit or debit card with any transaction and get 25% discount instantly! ',
              offerCridetImage: Image.asset('assets/offers/Visa.png'),
            ),
          ],
        ),
      ),
    );
  }
}
