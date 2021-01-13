import 'package:flutter/material.dart';
import 'custom_decoration.dart';

class NMCard extends StatelessWidget {
  final bool active;
  final IconData icon;
  final String label;
  NMCard({this.active, this.icon, this.label});

  final CustomBoxDecoration _cst = CustomBoxDecoration();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      decoration: _cst.nMbox(),
      child: Row(
        children: <Widget>[
          Icon(icon, color: _cst.fCL),
          const SizedBox(width: 15),
          Text(
            label,
            style: TextStyle(
                color: _cst.fCD, fontWeight: FontWeight.w700, fontSize: 16),
          ),
          const Spacer(),
          Container(
            decoration: active ? _cst.nMboxInvertActive() : _cst.nMboxInvert(),
            width: 70,
            height: 40,
            child: Container(
              margin: active
                  ? const EdgeInsets.fromLTRB(35, 5, 5, 5)
                  : const EdgeInsets.fromLTRB(5, 5, 35, 5),
              decoration: _cst.nMbtn(),
            ),
          ),
        ],
      ),
    );
  }
}
