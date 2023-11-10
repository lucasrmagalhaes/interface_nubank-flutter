import 'package:flutter/material.dart';
import 'package:nubank/utils/colors.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [_rendimentos(), _debitoAutomatico()],
      ),
    );
  }

  _rendimentos() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,

      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(16)),
      child: RichText(
        text: TextSpan(children: [
          const TextSpan(
              text: "Seu ",
              style: TextStyle(color: Colors.black, fontSize: 16)),
          TextSpan(
              text: "informe de \n rendimentos ",
              style: TextStyle(color: backgroundColor, fontSize: 16)),
          const TextSpan(
              text: "de 2023 já está...",
              style: TextStyle(color: Colors.black, fontSize: 16))
        ]),
      ),
    );
  }

  _debitoAutomatico() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(16)),
      child: RichText(
        text: TextSpan(children: [
          const TextSpan(
              text: "Chegou o ",
              style: TextStyle(color: Colors.black, fontSize: 16)),
          TextSpan(
              text: "débito \n automático da fatura do ...",
              style: TextStyle(color: backgroundColor, fontSize: 16))
        ]),
      ),
    );
  }
}
