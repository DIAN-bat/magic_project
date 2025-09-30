import 'dart:async';
import 'dart:math';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:magic_project/models/models.dart';
import 'package:magic_project/provider/cards_provider.dart';
import 'package:magic_project/search/search_delegate.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardsProvider = Provider.of<CardsProvider>(context);

    return Scaffold(
      //appbar
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          child: AnimatedWidget(),
        ),
        backgroundColor: Color.fromARGB(20, 0, 0, 0),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () => showSearch(context: context, delegate: CardSearchDelegate()),
              icon: Icon(Icons.search_rounded),
            ),
          ),
        ],
        centerTitle: true,
        title: Text('Magic'),
      ),

      //body
      body: Container(
        width: double.infinity,
        height: 500,
        child: Swiper(
          itemHeight: 390,
          itemWidth: 270,
          itemCount: cardsProvider.lastCards.length,
          layout: SwiperLayout.STACK,
          itemBuilder: (context, i) =>
              _CardPoster(card: cardsProvider.lastCards[i]),
        ),
      ),
    );
  }
}

class _CardPoster extends StatelessWidget {
  final CardData card;

  const _CardPoster({required this.card});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(8),
      child: FadeInImage(
        placeholder: AssetImage('assets/no-image.jpg'),
        image: NetworkImage(card.imageUris?.normal ?? 'https://shop.tiendamulligan.com/wp-content/uploads/2025/04/61AGZ37D7eL_11zon.webp'),
        fit: BoxFit.cover,
      ),
    );
  }
}

class AnimatedWidget extends StatefulWidget {
  const AnimatedWidget({super.key});

  @override
  State<AnimatedWidget> createState() => _AnimatedWidgetState();
}

class _AnimatedWidgetState extends State<AnimatedWidget> {
  Random random = Random();
  double _size = 50;
  BorderRadius _borderRadius = BorderRadius.circular(25);
  Color _color = Colors.blue;

  void _animation() {
    setState(() {
      _color = Color.fromARGB(
        255,
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
      );
      _size = _size == 50 ? 100 : 50;
      _borderRadius = _size == 50
          ? BorderRadius.circular(25)
          : BorderRadius.vertical(
              top: Radius.circular(00),
              bottom: Radius.circular(50),
            );
    });
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (_) => _animation());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        width: _size,
        height: _size * 1.5,
        decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        duration: Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      ),
    );
  }
}
