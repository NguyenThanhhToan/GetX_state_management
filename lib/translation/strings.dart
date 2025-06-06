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
  String get success => FlutterI18n.translate(context, "success");
  String get success1 => FlutterI18n.translate(context, "success1");
  String get success2 => FlutterI18n.translate(context, "success2");
  String get bntContinue => FlutterI18n.translate(context, "continue");
  String get enableLocation => FlutterI18n.translate(context, "enable_location");
  String get enableLocation1 => FlutterI18n.translate(context, "enable_location1");
  String get skipForNow => FlutterI18n.translate(context, "skip_for_now");
  String get canChangeInSetting => FlutterI18n.translate(context, "can_change_in_setting");
  String get enableLocationBtn => FlutterI18n.translate(context, "enable_location_bnt");
  String get turnOnNotification => FlutterI18n.translate(context, "turn_on_notification");
  String get turnOnNotification1 => FlutterI18n.translate(context, "turn_on_notification1");
  String get turnOnNotificationBtn => FlutterI18n.translate(context, "turn_on_notification_bnt");
  // nav bar
  String get navBar1 => FlutterI18n.translate(context, "nav_bar1");
  String get navBar2 => FlutterI18n.translate(context, "nav_bar2");
  String get navBar3 => FlutterI18n.translate(context, "nav_bar3");
  String get navBar4 => FlutterI18n.translate(context, "nav_bar4");

  // service
  String get goodMor => FlutterI18n.translate(context, "good_mor");
  String get serviceText1 => FlutterI18n.translate(context, "service_text1");
  String get service1 => FlutterI18n.translate(context, "service1");
  String get service2 => FlutterI18n.translate(context, "service2");
  String get service3 => FlutterI18n.translate(context, "service3");

  // account
  String get accountTitle => FlutterI18n.translate(context, "account_title");
  String get account => FlutterI18n.translate(context, "account");
  String get general => FlutterI18n.translate(context, "general");
  String get accountText1 => FlutterI18n.translate(context, "account_text1");
  String get accountText2 => FlutterI18n.translate(context, "account_text2");
  String get accountText3 => FlutterI18n.translate(context, "account_text3");
  String get accountText4 => FlutterI18n.translate(context, "account_text4");
  String get accountText5 => FlutterI18n.translate(context, "account_text5");
  String get accountText6 => FlutterI18n.translate(context, "account_text6");
  String get accountText7 => FlutterI18n.translate(context, "account_text7");
  String get accountText8 => FlutterI18n.translate(context, "account_text8");
  String get accountText9 => FlutterI18n.translate(context, "account_text9");
  String get accountBnt => FlutterI18n.translate(context, "account_bnt");
  String get accountEdit => FlutterI18n.translate(context, "account_edit");
  String get phoneNumber => FlutterI18n.translate(context, "phone_number");
  String get email => FlutterI18n.translate(context, "email");

  // history
  String get historyTitle => FlutterI18n.translate(context, "history_title");
  String get historyText1 => FlutterI18n.translate(context, "history_text1");
  String get historyText2 => FlutterI18n.translate(context, "history_text2");
  String get historyText3 => FlutterI18n.translate(context, "history_text3");
  String get historyText4 => FlutterI18n.translate(context, "history_text4");

  //ratingService
  String get rateServiceTitle => FlutterI18n.translate(context, "rate_service_title");
  String get rateOption1 => FlutterI18n.translate(context, "rate_option1");
  String get rateOption2 => FlutterI18n.translate(context, "rate_option2");
  String get rateOption3 => FlutterI18n.translate(context, "rate_option3");
  String get rateOption4 => FlutterI18n.translate(context, "rate_option4");
  String get skip => FlutterI18n.translate(context, "skip");
  String get confirm => FlutterI18n.translate(context, "confirm");


}