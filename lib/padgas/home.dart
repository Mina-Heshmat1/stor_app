
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stor_app/cubit/Cubit.dart';
import 'package:stor_app/cubit/States.dart';


class IntroguctoryLevel extends StatelessWidget {
  var bottomNavigationKey = GlobalKey<ScaffoldState>();
  static String id = 'NavigationBar';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create:(BuildContext context)=>CreatNavigationBar(),
      child: BlocConsumer<CreatNavigationBar,NavigationBarStates>(
        listener: (context,states){},
        builder: (context,states){
          return  Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey.withOpacity(0.4),
              title: Text(CreatNavigationBar.get(context).AppBartitle[CreatNavigationBar.get(context).currentIndex],),
              centerTitle: true,
            ),
            body: CreatNavigationBar.get(context).Screen[CreatNavigationBar.get(context).currentIndex],
            bottomNavigationBar: CurvedNavigationBar(
              key: bottomNavigationKey,
              height: 50.0,
              items: <Widget>[
                Icon(Icons.home, size: 30,color: Colors.black,),
                Icon(Icons.favorite, size: 30,color: Colors.red),
                Icon(Icons.add_shopping_cart_outlined, size: 30,color: Colors.black),
                Icon(Icons.person_remove_sharp, size: 30,color: Colors.black),
              ],
              color: Colors.grey.withOpacity(0.4),
              buttonBackgroundColor: Colors.yellowAccent,
              backgroundColor: Colors.white.withOpacity(0.1),
              animationCurve: Curves.easeInOutQuint,
              animationDuration: Duration(milliseconds: 700),
              index:0,
              onTap:(index)
              {
                CreatNavigationBar.get(context).ChangeScreen(index) ;
              },
              letIndexChange: (index) => true,
            ),
          );
        },
      ),
    );
  }
}
