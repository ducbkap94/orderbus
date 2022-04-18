import 'package:flutter/material.dart';
import 'package:orderbus/config/app_colors.dart';
import 'package:orderbus/screens/favorite_screen.dart';
import 'package:orderbus/screens/home_screen.dart';
import 'package:orderbus/screens/intro_screen.dart';
import 'package:orderbus/screens/product_detail.dart';

enum BottomType { home, card, messenger, profile }

extension BottomTypeExt on BottomType {
  String get title {
    switch (this) {
      case BottomType.home:
        return 'Home';
      case BottomType.messenger:
        return 'Messenger';
      case BottomType.card:
        return 'Card';
      case BottomType.profile:
        return 'Profile';
      default:
        return '';
    }
  }

  IconData get icon {
    switch (this) {
      case BottomType.home:
        return Icons.home;
      case BottomType.card:
        return Icons.wallet_giftcard;
      case BottomType.messenger:
        return Icons.messenger;
      case BottomType.profile:
        return Icons.person;
      default:
        return Icons.home;
    }
  }

  int get index {
    switch (this) {
      case BottomType.home:
        return 0;
      case BottomType.card:
        return 1;
      case BottomType.messenger:
        return 2;
      case BottomType.profile:
        return 3;
      default:
        return 0;
    }
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  BottomType bottomType = BottomType.home;
  List<Widget> widgets = const [
    HomeScreen(),
    IntroScreen(),
    ProductDetailScreen(),
    FavoriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[bottomType.index],
      bottomNavigationBar: BottomNavigationBar(
        items: BottomType.values.map(_buildBottomItem).toList(),
        currentIndex: bottomType.index,
        onTap: (index) {
          switch (index) {
            case 0:
              setState(() {
                bottomType = BottomType.home;
              });
              break;
            case 1:
              setState(() {
                bottomType = BottomType.card;
              });
              break;
            case 2:
              setState(() {
                bottomType = BottomType.messenger;
              });
              break;
            case 3:
              setState(() {
                bottomType = BottomType.profile;
              });
              break;
            default:
          }
        },
        selectedItemColor: AppColors.c266352,
        unselectedItemColor: AppColors.cA9A9AA,
      ),
    );
  }

  BottomNavigationBarItem _buildBottomItem(BottomType type) {
    return BottomNavigationBarItem(icon: Icon(type.icon), label: type.title);
  }
}
