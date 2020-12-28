import 'package:flutter/material.dart';
import 'package:Smartdrc/components/custom_surfix_icon.dart';
import 'package:Smartdrc/components/form_error.dart';
import 'package:Smartdrc/screens/forgot_password/forgot_password_screen.dart';
import 'package:Smartdrc/screens/login_success/login_success_screen.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildObjetMessageFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildMessageFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(10)),
          DefaultButton(
            text: "Envoyer",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen

              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildMessageFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kMessageNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kMessageNullError);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.multiline,
      maxLines: 6,
      maxLength: 1000,
      decoration: InputDecoration(
        labelText: "Message",
        hintText: "votre message",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildObjetMessageFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kObjetNullError);
        }
        //  else if (emailValidatorRegExp.hasMatch(value)) {
        //   removeError(error: kInvalidEmailError);
        // }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kObjetNullError);
          return "";
        }
        //  else if (!emailValidatorRegExp.hasMatch(value)) {
        //   addError(error: kInvalidEmailError);
        //   return "";
        // }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Objet du Message",
        hintText: "Entrer votre Sujet",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/memoire.svg"),
      ),
    );
  }
}
