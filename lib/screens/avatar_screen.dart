import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right:5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fksassets.timeincuk.net%2Fwp%2Fuploads%2Fsites%2F55%2F2019%2F03%2Fstanlee-GettyImages-469683940.jpg&f=1&nofb=1&ipt=dfe0b5ef2bd5e43b55cfc3a66e4251ab93eabf4d19fb453fb530ec7fe292416c&ipo=images'),
        ),
      ),
    );
  }
}