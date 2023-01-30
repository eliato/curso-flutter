import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';


class CardScreen
    extends StatelessWidget {
  const CardScreen(
      {Key? key})
      : super(key: key);

  @override
  Widget
      build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Card Wiget'),
      ),
      body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: const [
        CustomCardType1(),
        SizedBox(height: 10,),
        CustomCardType2(name: 'Landscape', imageUrl: 'https://zurich.swissphotoclub.com/wp-content/uploads/2019/06/Matterhorn-Stellisee-I-1.jpg',),
        SizedBox(height: 20,),
        CustomCardType2(imageUrl: 'https://cdn.theatlantic.com/thumbor/mvtHD75sa06Zb-kxvn95Vzk-nXc=/900x600/media/img/photo/2021/11/winners-2021-natural-landscape-phot/a02_proy_539__5138/original.jpg',),
        SizedBox(height: 20,),
        CustomCardType2(imageUrl: 'https://cdn.theatlantic.com/thumbor/EqUD8mTtEq_FaZHGxslm4cOR3Kc=/900x600/media/img/photo/2021/11/winners-2021-natural-landscape-phot/a12_prjoyr_1306__9255/original.jpg',),
        SizedBox(height: 100,),
        ],  
    )
    );
  }
}


