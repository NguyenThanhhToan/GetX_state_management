import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class T {
  final BuildContext context;
  T(this.context);

  String operator [](String key) => FlutterI18n.translate(context, key);
//  sign in
  String get hi => FlutterI18n.translate(context, "hi");
  String get login => FlutterI18n.translate(context, "login");
  String get welcome => FlutterI18n.translate(context, "welcome");
  String get otpAuthentication => FlutterI18n.translate(context, "otp_authentication");
  String get sentTo => FlutterI18n.translate(context, "sent_to");
  String get next => FlutterI18n.translate(context, "next");
  String get validMobileRequired => FlutterI18n.translate(context, "valid_mobile_required");
  String get whatsYourMobile => FlutterI18n.translate(context, "whats_your_mobile");
  String get letsSignIn => FlutterI18n.translate(context, "lets_sign_in");
  String get continueGoogle => FlutterI18n.translate(context, "continue_google");
  String get continueWeChat => FlutterI18n.translate(context, "continue_wechat");
  String get continueFacebook => FlutterI18n.translate(context, "continue_facebook");
  String get continueMobile => FlutterI18n.translate(context, "continue_mobile");
  String get selectCountry => FlutterI18n.translate(context, "select_country");
  String get suggested => FlutterI18n.translate(context, "suggested");
  String get search => FlutterI18n.translate(context, "search");

//  signup
  String get welcome2 => FlutterI18n.translate(context, "welcome2");
  String get enterNameSignUp => FlutterI18n.translate(context, "enter_name_sign_up");
  String get fName => FlutterI18n.translate(context, "f_name");
  String get lName => FlutterI18n.translate(context, "l_name");
  String get addPaymentMethod => FlutterI18n.translate(context, "add_payment_method");
  String get addDescription => FlutterI18n.translate(context, "add_description");
  String get cardNumber => FlutterI18n.translate(context, "card_number");
  String get cardHolderName => FlutterI18n.translate(context, "card_holder_name");
  String get expiryDate => FlutterI18n.translate(context, "expiry_date");
  String get cvv => FlutterI18n.translate(context, "cvv");
  String get add => FlutterI18n.translate(context, "add");

}
