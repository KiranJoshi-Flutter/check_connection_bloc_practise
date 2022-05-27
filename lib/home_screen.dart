import 'package:check_connection_bloc_practise/hasInternet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late bool hasInternetCheck;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bool  hasInternetCheck = context.read<HasInternetCubit>().internetCheck();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
