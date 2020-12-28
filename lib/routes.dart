import 'package:flutter/widgets.dart';
import 'package:Smartdrc/screens/cart/cart_screen.dart';
import 'package:Smartdrc/screens/complete_profile/complete_profile_screen.dart';
import 'package:Smartdrc/screens/details/details_screen.dart';
import 'package:Smartdrc/screens/forgot_password/forgot_password_screen.dart';
import 'package:Smartdrc/screens/home/home_screen.dart';
import 'package:Smartdrc/screens/login_success/login_success_screen.dart';
import 'package:Smartdrc/screens/otp/otp_screen.dart';
import 'package:Smartdrc/screens/sign_in/sign_in_screen.dart';
import 'package:Smartdrc/screens/splash/splash_screen.dart';
import 'package:Smartdrc/screens/wallet/wallet.dart';
import 'package:Smartdrc/screens/pay/pay.dart';
import 'package:Smartdrc/screens/chat/chat.dart';
import 'package:Smartdrc/screens/call/call.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'package:Smartdrc/screens/smartbanking/smartbanking.dart';
import 'package:Smartdrc/screens/routestack.dart';
import 'package:Smartdrc/screens/form_associationcompte/associationCompte.dart';
import 'package:Smartdrc/screens/association_compte_success/association_compte_success.dart.dart';
import 'package:Smartdrc/screens/form_transfert/transfertCompte.dart';
import 'package:Smartdrc/screens/smartmarket/smartmarket.dart';
import 'package:Smartdrc/screens/historique/historique.dart';
import 'package:Smartdrc/screens/transaction/transaction.dart';
import 'package:Smartdrc/screens/setting/setting.dart';
import 'package:Smartdrc/screens/form_achat_credit/achatCredit.dart';
import 'package:Smartdrc/screens/serviceclient/service_client.dart';
import 'package:Smartdrc/screens/form_transfert_mobile_money/transfertCompte.dart';
import 'package:Smartdrc/screens/form_transfert_smart/transfertCompte.dart';
import 'package:Smartdrc/screens/form_reabonnement/reabonnement.dart';
import 'package:Smartdrc/screens/form_reabonnement_canal+/reabonnementcanal.dart';
import 'package:Smartdrc/screens/form_reabonnement_dstv/reabonnemendstv.dart';
import 'package:Smartdrc/screens/demande_retrait/demanderetrait.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  Wallet.routeName: (context) => Wallet(),
  PayScreen.routeName: (context) => PayScreen(),
  Chat.routeName: (context) => Chat(),
  Call.routeName: (context) => Call(),
  SmartBanking.routeName: (context) => SmartBanking(),
  RouteStack.routeName: (context) => RouteStack(),
  AssociationCompte.routeName: (context) => AssociationCompte(),
  AssociationCompteSucces.routeName: (context) => AssociationCompteSucces(),
  TransfertCompte.routeName: (context) => TransfertCompte(),
  SmartMarket.routeName: (context) => SmartMarket(),
  Historique.routeName: (context) => Historique(),
  Transaction.routeName: (context) => Transaction(),
  Setting.routeName: (context) => Setting(),
  AchatCredit.routeName: (context) => AchatCredit(),
  ServiceClient.routeName: (context) => ServiceClient(),
  TransfertCompteMobileMoney.routeName: (context) =>
      TransfertCompteMobileMoney(),
  TransfertCompteSmart.routeName: (context) => TransfertCompteSmart(),
  Reabonnement.routeName: (context) => Reabonnement(),
  ReabonnementCanal.routeName: (context) => ReabonnementCanal(),
  ReabonnementDstv.routeName: (context) => ReabonnementDstv(),
  DemandeRetrait.routeName: (context) => DemandeRetrait(),
};
