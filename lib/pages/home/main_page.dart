import 'package:flutter/material.dart';
import 'package:shamo_apps_flutter/pages/home/chat_page.dart';
import 'package:shamo_apps_flutter/pages/home/profile.dart';
import 'package:shamo_apps_flutter/pages/home/wishlist_page.dart';
import 'package:shamo_apps_flutter/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  int currentIndex = 0;

  Widget cartButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: secondaryColor,
      child: Image.asset(
        'assets/icon_cart.png',
        width: 22,
      ),
    );
  }

  Widget customButtonItem() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: backgroundColor4,
          currentIndex: currentIndex,
          onTap: (value) {
            print(value);
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/icon_home.png',
                    width: 21,
                    color:
                        currentIndex == 0 ? primaryColor : const Color(0xff808191)),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icon_chat.png',
                    width: 20,
                    color:
                        currentIndex == 1 ? primaryColor : const Color(0xff808191)),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icon_favorite.png',
                    width: 20,
                    color:
                        currentIndex == 2 ? primaryColor : const Color(0xff808191)),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset('assets/icon_profile.png',
                    width: 18,
                    color:
                        currentIndex == 3 ? primaryColor : const Color(0xff808191)),
                label: ''),
          ],
        ),
      ),
    );
  }

  Widget body(){
    switch (currentIndex) {
      case 0:
        return const HomePage();
        break;
        case 1:
        return const ChatPage();
        break;
        case 2:
        return const WishlistPage();
        break;
        case 3:
        return const ProfilePage();
        break;
      default: 
       return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonItem(),
      body: body()
    );
  }
}
