import 'package:go_router/go_router.dart';
import 'package:lamp_app/presentation/screens/theme_screen/theme_screen.dart';

import '../presentation/screens/switch_screen/switch_screen.dart';

GoRouter router = GoRouter(
  
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SwitchScreen(),
        ),

        GoRoute(
          path: '/theme',
          builder: (context, state) => const ThemeScreen(),
        ),

      ],);