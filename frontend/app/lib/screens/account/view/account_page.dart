import 'package:app/app/injection/injection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wc_web3_authentication_client/wc_web3_authentication_client.dart';

import '../../../app/router/app_router.gr.dart';
import '../bloc/account_bloc.dart';

part 'account_layout.dart';

@RoutePage(name: 'AccountRoute')
class AccountPage extends StatelessWidget implements AutoRouteWrapper {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AccountLayout(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AccountBloc(),
      child: this,
    );
  }
}
