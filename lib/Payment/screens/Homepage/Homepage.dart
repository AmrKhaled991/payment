import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/Payment/screens/pay/payscreen.dart';

import '../../cubit/cubitres.dart';

class Homepage extends StatelessWidget {
static String routname='home';
var fNameController = TextEditingController();
var lNameController = TextEditingController();
var emailController = TextEditingController();
var phoneController = TextEditingController();
var amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => PaymentCubit(),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          controller: fNameController,
                          decoration: InputDecoration(
                              hintText: "Fname",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        TextFormField(
                          controller: lNameController,
                          decoration: InputDecoration(
                              hintText: "lName",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                              hintText: "email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        TextFormField(
                          controller: phoneController,
                          decoration: InputDecoration(
                              hintText: "phone",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        TextFormField(
                          controller: amountController,
                          decoration: InputDecoration(
                              hintText: "amount",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              PaymentCubit()..auth_token(
                                email: emailController.text,
                                phone:  phoneController.text,
                                fname: fNameController.text,
                                lname:  lNameController.text,
                              );
                              Navigator.pushNamed(context, payscreen.routname);
                            },
                            child: Text("Let's Go"))
                      ],
                    )
                )
            )

            )
          ),
        ),
    );
  }
}
