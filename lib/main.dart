import 'core/core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // * Error
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool inDebug = false;
    assert(() {
      inDebug = true;
      return true;
    }());
    // In debug mode, use the normal error widget which shows
    // the error message:
    if (inDebug) {
      return ErrorWidget(details.exception);
    }
    // In release builds, show a yellow-on-blue message instead:
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Error!',
        style: TextStyle(color: Colors.yellow),
        textDirection: TextDirection.ltr,
      ),
    );
  };

  runApp(const InitialApp());
}

// * Initial App
class InitialApp extends StatelessWidget {
  const InitialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => false,
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        builder: (context, child) {
          final mediaQueryData = MediaQuery.of(context);

          final scale = mediaQueryData.copyWith(
            textScaler: const TextScaler.linear(1.0),
          );

          child = MediaQuery(
            data: scale,
            child: child!,
          );
          return child;
        },
      ),
    );
  }
}
