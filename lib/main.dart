import 'package:flutter/material.dart';
import 'package:flutter_bootstrap5/flutter_bootstrap5.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'screens/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
      
    //   debugShowCheckedModeBanner: false,
    //   title: 'Hayaland',
    //     theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home: const ByBackDashboard(),
    //   builder: (context, child) => ResponsiveBreakpoints.builder(
    //     child: child!,
    //     breakpoints: [
    //       const Breakpoint(start: 0, end: 450, name: MOBILE),
    //       const Breakpoint(start: 451, end: 800, name: TABLET),
    //       const Breakpoint(start: 801, end: 1920, name: DESKTOP),
    //       const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
    //     ],
    //   ),
    //   );

   return FlutterBootstrap5(
            builder: (ctx) => MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Hayaland',
      //   theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),             theme: BootstrapTheme.of(ctx).toTheme(
                theme: ThemeData(
                  scaffoldBackgroundColor: BootstrapTheme.of(ctx).colors.white,
                  appBarTheme: AppBarTheme(
                    backgroundColor: BootstrapTheme.of(ctx).colors.primary,
                    foregroundColor: BootstrapTheme.of(ctx).colors.white,
                    elevation: 0.0,
                  ),
                  fontFamily: GoogleFonts.roboto().fontFamily,
                ),
              
      home: const ByBackDashboard(),
       //home : _BootstrapBreakPoints()
      ),
        );

  }
}

class _BootstrapBreakPoints {
          static const BreakPoint xs = BreakPoint(minWidth: 0, maxWidth: 576);
          static const BreakPoint sm = BreakPoint(minWidth: 576, maxWidth: 768);
          static const BreakPoint md = BreakPoint(minWidth: 768, maxWidth: 992);
          static const BreakPoint lg = BreakPoint(minWidth: 992, maxWidth: 1200);
          static const BreakPoint xl = BreakPoint(minWidth: 1200, maxWidth: 1400);
          static const BreakPoint xxl =
          BreakPoint(minWidth: 1400, maxWidth: double.infinity);
        }
