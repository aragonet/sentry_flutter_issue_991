import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SentryFlutter.init(
    (options) {
      options.dsn = 'https://xxxx@sentry.xxxx.com/3';

      options.environment = 'qa';
      options.attachStacktrace = true;
      options.enableAutoSessionTracking = true;
      options.debug = true;
      options.compressPayload = false;
      options.beforeBreadcrumb = (breadcrumb, {hint}) {
        print("ERROR");
      };
      options.beforeSend = (event, {hint}) {
        print("BEFORE SEND");
        return event;
      };
    },
    appRunner: () => runApp(WelcomePage()),
  );
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();

    try {
      [][1];
    } catch (e) {
      Sentry.captureException(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
