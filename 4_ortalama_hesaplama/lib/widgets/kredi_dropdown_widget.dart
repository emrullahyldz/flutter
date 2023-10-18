import 'package:flutter/material.dart';
import 'package:ortalama_hesaplama/constants/app_constants.dart';
import 'package:ortalama_hesaplama/helper/data_helper.dart';

class KrediDropdownWidget extends StatefulWidget {
  final onKrediSecildi;
  const KrediDropdownWidget({required this.onKrediSecildi, super.key});

  @override
  State<KrediDropdownWidget> createState() => _KrediDropdownWidgetState();
}

class _KrediDropdownWidgetState extends State<KrediDropdownWidget> {
  double secilenKrediDegeri = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
          color: Sabitler.anaRenk.shade100.withOpacity(0.3),
          borderRadius: Sabitler.borderRadius),
      child: DropdownButton<double>(
          value: secilenKrediDegeri,
          elevation: 16,
          iconEnabledColor: Sabitler.anaRenk.shade200,
          underline: Container(),
          items: DataHelper.tumDerslerinKredileri(),
          onChanged: ((deger) {
            setState(() {
              secilenKrediDegeri = deger!;
              widget.onKrediSecildi(secilenKrediDegeri);
            });
          })),
    );
  }
}