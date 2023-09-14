import 'package:fl_components/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
        centerTitle: true,
      ),
      body:ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallup.net%2Fwp-content%2Fuploads%2F2016%2F03%2F10%2F325530-Sierra_Nevada-landscape-nature.jpg&f=1&nofb=1&ipt=7477812571e6dda524ba05cbdfceea66335c4aa2ab803fc9693866d966acdb43&ipo=images',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.FU6LkKuTSm9sJfek6avBJwHaEo%26pid%3DApi&f=1&ipt=2cbef5ecd60efc899e35c68f21e269c4e94c7350fdf510117baf69f3930da96c&ipo=images',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftravelingcanucks.com%2Fwp-content%2Fuploads%2F2014%2F08%2FIMG_3288.jpg&f=1&nofb=1&ipt=615084fe39edcbc97d41b105f37e245fc50fd1d58f52adc8c7670b71c8c156bc&ipo=images',),
          SizedBox(height: 20,),
          CustomCardType2(name:'Un hermoso paisaje', imageUrl: 'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fstatic.materialicious.com%2Fimages%2Fstunning-nature-landscapes-by-argen-elezi-o.jpg&f=1&nofb=1&ipt=0a6f563c0ae62cb938352208c83e727e74a09819eeaaac6717bd405f1b014ced&ipo=images',),
          SizedBox(height: 100,),
        ],
      )
    );
  }
}

