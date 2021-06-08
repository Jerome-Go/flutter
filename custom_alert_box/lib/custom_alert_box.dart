library custom_alert_box;

import 'dart:ui';

import 'package:flutter/material.dart';

class BoiteAlert {
  Future afficheBoiteAlert(
      {required BuildContext context, required Widget displayWidget}) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                displayWidget,
                TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                    label: Text(
                      'Prendre note',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
            backgroundColor: Colors.grey,
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          );
        });
  }
}
