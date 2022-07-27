// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp/common/widgets/error.dart';
import 'package:whatsapp/features/auth/screens/login_screen.dart';
import 'package:whatsapp/features/auth/screens/otp_screen.dart';
import 'package:whatsapp/features/auth/screens/user_information_screen.dart';
import 'package:whatsapp/features/select_contacts/screens/select_contacts_screen.dart';
import 'package:whatsapp/screens/mobile_chat_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
          builder: (context) => OTPScreen(
                verificationId: verificationId,
              ));
    case UserInformationScreen.routeName:
      return MaterialPageRoute(builder: (context) => UserInformationScreen());
    case SelectContactsScreen.routeName:
      return MaterialPageRoute(builder: (context) => SelectContactsScreen());
    case MobileChatScreen.routeName:
      return MaterialPageRoute(builder: (context) => MobileChatScreen());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: ErrorScreen(error: 'This page does not exist'),
        ),
      );
  }
}
