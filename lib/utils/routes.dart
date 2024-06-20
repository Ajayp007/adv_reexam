import 'package:adv_reexam/screen/detail/detail_screen.dart';
import 'package:adv_reexam/screen/liked/liked_screen.dart';
import 'package:adv_reexam/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import '../screen/home/view/home_screen.dart';

Map<String,WidgetBuilder> appRoutes = {
  '/':(context)=> const SplashScreen(),
  'home':(context)=> const HomeScreen(),
  'detail':(context)=> const DetailScreen(),
  'like':(context)=> const LikedScreen(),
};