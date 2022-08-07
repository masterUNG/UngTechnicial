import 'package:flutter/material.dart';
import 'package:ungtechnic/utility/my_constant.dart';
import 'package:ungtechnic/widgets/show_buttom.dart';
import 'package:ungtechnic/widgets/show_form.dart';
import 'package:ungtechnic/widgets/show_text.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  var typeUsers = <String>[
    'User',
    'Teachnic',
  ];
  String? typeUser, name, user, password, rePassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newAppBar(),
      body: Container(
        decoration: MyConstant().basicBox(),
        child: ListView(
          children: [
            formName(),
            dropDownTypeUser(),
            formUser(),
            formPassword(),
            formRePassword(),
            buttonCreateAccount(),
          ],
        ),
      ),
    );
  }

  Row dropDownTypeUser() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 8, right: 8),
          margin: const EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.75),
            border: Border.all(),
            borderRadius: BorderRadius.circular(4),
          ),
          width: 250,
          child: DropdownButton<dynamic>(
            underline: const SizedBox(),
            isExpanded: true,
            hint: ShowText(
              text: 'Please Choose TypeUser',
              textStyle: MyConstant().h3AcctiveStyle(),
            ),
            value: typeUser,
            items: typeUsers
                .map(
                  (e) => DropdownMenuItem(
                    child: ShowText(text: e),
                    value: e,
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                typeUser = value.toString();
              });
            },
          ),
        ),
      ],
    );
  }

  Row buttonCreateAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowButton(
          label: 'Create Account',
          pressFunc: () {},
        ),
      ],
    );
  }

  Row formRePassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowForm(
          obSecu: true,
          hint: 'Re-Password',
          iconData: Icons.lock,
          changeFunc: (p0) {
            rePassword = p0.trim();
          },
        ),
      ],
    );
  }

  Row formPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowForm(
          obSecu: true,
          hint: 'Password:',
          iconData: Icons.lock_outline,
          changeFunc: (p0) {
            password = p0.trim();
          },
        ),
      ],
    );
  }

  Row formUser() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowForm(
          hint: 'User:',
          iconData: Icons.person_outline,
          changeFunc: (p0) {
            user = p0.trim();
          },
        ),
      ],
    );
  }

  Row formName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowForm(
          hint: 'Display Name:',
          iconData: Icons.fingerprint,
          changeFunc: (p0) {
            name = p0.trim();
          },
        ),
      ],
    );
  }

  AppBar newAppBar() {
    return AppBar(
      centerTitle: true,
      title: ShowText(
        text: 'Create Account',
        textStyle: MyConstant().h3ButtonStyle(),
      ),
      backgroundColor: MyConstant.primary,
    );
  }
}
