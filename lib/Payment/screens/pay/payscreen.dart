import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class payscreen extends StatelessWidget {
  static String routname = 'homeaaaaaaaaaaaa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Simple Example')),

      body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://accept.paymob.com/api/acceptance/iframe/753255?token=ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljSEp2Wm1sc1pWOXdheUk2TnpRME9UQTRMQ0p3YUdGemFDSTZJbUppWVRSa1l6TmtNbVV5TURnME5UbG1Oams0WmpaaU1USmxNamsyWVdVeVlXVm1aV1l3TXpVeFpUWTBOR0pqWkRReE56WTJOR1ZsWkRBMU9EZzBZVGdpTENKbGVIQWlPakUyT0RFMU9EVTJNRFY5Lk9Rdm10dmRIT09HbVVabHhfSG1lNXdwMTFlbUhzZk5QS0xpdlpzYnVBVXhGYjNpdzJaaC15WHNqb3pQSVFUelhERGE3N2lCVU1iUndIT0Vuc3dsdC1n'),
    );
  }
}