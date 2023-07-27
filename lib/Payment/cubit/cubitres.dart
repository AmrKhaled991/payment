import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/Apidata.dart';
import '../models/shared/constant.dart';
import 'cubitstat.dart';

class PaymentCubit extends Cubit<PaymentStates>{
  PaymentCubit():super(InitPaymentState());

  static PaymentCubit get(context)=>BlocProvider.of(context);

  void auth_token({required String fname,required String lname,required String phone,required String email}){
    emit(LoadingAuthTokenPaymentState());
    Diohelper.postdata(endline: '/auth/tokens'
        , data:
          {
            "api_key":API_KEY
          }
        ).then((value) {
          AUTH_TOKEN=value.data['token'];
          print(AUTH_TOKEN);
          id_token(fname: fname, lname: lname, phone: phone, email: email);
          emit(SuccessAuthTokenPaymentState());
    }).catchError((error) {
      emit(ErrorAuthTokenPaymentState());
    });
  }
  void id_token({required String fname,required String lname,required String phone,required String email}){
    emit(LoadingOrderIdPaymentState());
    Diohelper.postdata(endline: '/ecommerce/orders'
        , data:
        {
          "auth_token":  AUTH_TOKEN,
          "delivery_needed": "false",
          "amount_cents": "50000",
          "currency": "EGP",
          "merchant_order_id": 14,
          "items": [

          ]
        }
        ).then((value) {
          ORDER_ID=value.data['id'].toString();
          print(ORDER_ID);
          requst_card(fname: fname, lname: lname, phone: phone, email: email);
          emit(SuccessOrderIdPaymentState());
    }).catchError((error) {
      print(error);
      emit(ErrorOrderIdPaymentState());
    });
  }
  void requst_card({required String fname,required String lname,required String phone,required String email}){
    emit(LoadingRequestTokenCardPaymentState());
    Diohelper.postdata(endline: '/acceptance/payment_keys'
        , data:
          {
            "auth_token":AUTH_TOKEN,
            "amount_cents": "50000",
          "expiration": 758,
          "order_id": ORDER_ID,
          "billing_data": {
          "apartment": "803",
          "email": email,
          "floor": "42",
          "first_name": fname,
          "street": "NA",
          "building": "NA",
          "phone_number": phone,
          "shipping_method": "PKG",
          "postal_code": "NA",
          "city": "NA",
          "country": "EGP",
          "last_name": lname,
          "state": "Utah"
          },
          "currency": "EGP",
          "integration_id": card_requst,
          }
        ).then((value) {
          card_token=value.data['token'];
          emit(SuccessRequestTokenCardPaymentState());
    }).catchError((error) {
      emit(ErrorRequestTokenCardPaymentState());
    });
  }


}