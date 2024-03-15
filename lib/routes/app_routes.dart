import 'package:flutter/material.dart';
import '../presentation/splashscreen_screen/splashscreen_screen.dart';
import '../presentation/p_gina_de_perfil_do_profissional_screen/p_gina_de_perfil_do_profissional_screen.dart';
import '../presentation/p_gina_de_login_screen/p_gina_de_login_screen.dart';
import '../presentation/p_gina_lista_de_alunos_screen/p_gina_lista_de_alunos_screen.dart';
import '../presentation/p_gina_de_perfil_do_aluno_screen/p_gina_de_perfil_do_aluno_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashscreenScreen = '/splashscreen_screen';

  static const String pGinaDePerfilDoProfissionalScreen =
      '/p_gina_de_perfil_do_profissional_screen';

  static const String pGinaDeLoginScreen = '/p_gina_de_login_screen';

  static const String pGinaListaDeAlunosScreen =
      '/p_gina_lista_de_alunos_screen';

  static const String pGinaDePerfilDoAlunoScreen =
      '/p_gina_de_perfil_do_aluno_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashscreenScreen: (context) => SplashscreenScreen(),
    pGinaDePerfilDoProfissionalScreen: (context) =>
        PGinaDePerfilDoProfissionalScreen(),
    pGinaDeLoginScreen: (context) => PGinaDeLoginScreen(),
    pGinaListaDeAlunosScreen: (context) => PGinaListaDeAlunosScreen(),
    pGinaDePerfilDoAlunoScreen: (context) => PGinaDePerfilDoAlunoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
