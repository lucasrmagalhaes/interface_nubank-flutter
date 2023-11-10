import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/pages/home/account/account_page.dart';
import 'package:nubank/pages/home/actions/menu_itens_page.dart';
import 'package:nubank/pages/home/creditCards/credit_cards_page.dart';
import 'package:nubank/pages/home/model/header_page.dart';
import 'package:nubank/pages/home/notification/notification_page.dart';
// import 'package:nubank/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: const [
              Header(),
              Account(),
              MenuItens(),
              Divider(thickness: 1.6),
              CreditCards(),
              Divider(thickness: 1.6),
              Notifications()
            ],
          )
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      )
    );
  }
}
