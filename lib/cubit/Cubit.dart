
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stor_app/padgas/cardes_page.dart';
import 'package:stor_app/padgas/favorit_screen.dart';
import 'package:stor_app/padgas/user_profail.dart';
import 'package:stor_app/widget/favorite_page.dart';

import '../padgas/my_home_page.dart';
import 'States.dart';


class CreatNavigationBar extends Cubit <NavigationBarStates>
{

CreatNavigationBar ():super(InitialState());

 static CreatNavigationBar get(context) =>BlocProvider.of(context);


  int currentIndex = 0;

  static const routeName = '/BottomNavBar';

  List<Widget> Screen = [
    const HomePage(),
    const FavoriteScreen(favoriteProducts: [],),
    const CardesPage(),
    const UserProfail(),
  ];

  List<String> AppBartitle = [
    "Home",
    "Favorit",
    "Card",
    "Setting",
  ];

  void ChangeScreen(index) {
    currentIndex = index;
    emit(OnSucessesState());
  }

}