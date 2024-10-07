import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webportfolio/widget_util.dart';

import 'home_widgets.dart';

GlobalKey key1 =   GlobalKey();
GlobalKey key2 =   GlobalKey();
GlobalKey key3 =   GlobalKey();

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {


    return Consumer(
      builder: (context, ref, child) {
        return Column(
          children: [
            HomeWidgets().homeNavWeb,
            height(20),
            Container(
                key: key1,
                color: Colors.red, height: 500, width: double.infinity, child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(ref.watch(homeHeroCounter).toString()),
                    if(ref.watch(homeHeroCounter) <= 5)
                    IconButton(onPressed: (){
                      ref.watch(homeHeroCounter.notifier).update((state){
                        return state + 1;
                      });
                    }

                    , icon: const Icon(Icons.add)),
                  ],
                )),),
            Container(
                key: key2,

                color: Colors.blue, height: 500, width: double.infinity),
            Container(
                key: key3,

                color: Colors.green, height: 500, width: double.infinity),
          ],
        );
      }
    );
  }
}
