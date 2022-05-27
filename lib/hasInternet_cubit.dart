import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class HasInternetCubit extends Cubit<bool> {
  HasInternetCubit() : super(false);

  void internetCheck() {
    InternetConnectionChecker().onStatusChange.listen((event) {
      bool hasInternetCheck =
          event == InternetConnectionStatus.connected ? true : false;
      return emit(hasInternetCheck);
    });
  }
}
