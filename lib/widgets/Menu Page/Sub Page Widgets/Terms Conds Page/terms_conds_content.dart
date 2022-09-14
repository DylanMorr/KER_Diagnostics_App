import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ker_diagnostics_app/widgets/Menu%20Page/heading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _facebookUrl = Uri.parse('https://www.facebook.com/legal/terms');
final Uri _googleUrl = Uri.parse('https://policies.google.com/terms?hl=en-US');

class TermsCondsContent extends StatelessWidget {
  const TermsCondsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeadingBar(icon: Icons.description, title: "Terms and Conditions"),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Terms & Conditions",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "By downloading or using the app, these terms will automatically apply to you - you should make sure therefore that you read them carefully before using the app. You're not allowed to copy or modify the app, any part of the app, or our trademark in any way. You're not allowed to attempt to extract the source code of the app, and you also shouldn't try to translate the app into other languages or make derivative versions. The app itself, and all the trademarks, copyrights, database rights, and other intellectual property rights related to it, still belong to KER Private Ltd.",
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "KER Private Ltd is committed to ensuring the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you're paying for.",
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "The KER App app stores and processes personal data that you have provided to us, to provide our Service. It's your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromising your phone's security features and it could mean that the KER App app won't work properly or at all.",
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "The app does use third-party services that declare their Terms and Conditions.",
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Link to Terms and Conditions of third-party service providers used by the app:",
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: " • Google Play Services\n",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      if (!await launchUrl(_googleUrl)) {
                        throw 'Could not launch $_googleUrl';
                      }
                    },
                ),
                TextSpan(
                  text: " • Facebook",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      if (!await launchUrl(_facebookUrl)) {
                        throw 'Could not launch $_googleUrl';
                      }
                    },
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "You should be aware that there are certain things that KER Private Ltd will not take responsibilty for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi or provided by your mobile network provider, but KER Private Ltd cannot take responsibilty for the app not working at full functionality if you don't have access to Wi-Fi, and you don't have any data allowance left.",
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "If you're using the app outside of an area with Wi-Fi, you should remember that the terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of connection while accessing the app, or other third-party charges. In using the app, you're accepting responsibilty for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you're using the app, please be aware that we assume that you have received permission from the bill payer for using the app.",
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Along the same lines, KER Private Ltd cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged - If it runs out of battery and you can't turn it on to avail the Service, KER Private Ltd cannot accept responsibility.",
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "With respect to KER Private Ltd's responsibility for your use of the app, when you're using the app, it's important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. KER Private Ltd accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on the functionality of the app.",
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "At some point, we may wish to update the app. The app is currently available on Android & iOS - the requirements for both systems (and for any additional systems we decide to extend the availabilty of the app to) may change, and you'll need to download the updates if you want to keep using the app.KER Private Ltd does not promise that it will always update the app so that it is relevant to you and/or works with the Android & iOS version that you have installed on your device. However, you promise to always accept updates to the application when offered to you. We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end. (b) you must stop using the app, and (if needed) delete it from your device.",
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Changes to These Terms and Conditions",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "We may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Terms and Conditions on this page.",
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Contact Us",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 60),
          child: Text(
            "If you have any questions or suggestions about our Terms and Conditions, do not hesitate to contact us at support@ker.ie.",
          ),
        ),
      ],
    );
  }
}
