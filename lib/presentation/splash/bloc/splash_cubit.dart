import 'package:promo_ecommerce/domain/auth/usecases/is_logged_in.dart';
import 'package:promo_ecommerce/presentation/splash/bloc/splash_state.dart';
import 'package:promo_ecommerce/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {

  SplashCubit() : super(DisplaySplash());

  void appStarted() async {
    await Future.delayed(const Duration(seconds: 2));
    var isLoggedIn = await sl < IsLoggedInUseCase > ().call();
    if (isLoggedIn) {
      emit(
        Authenticated()
      );
    } else {
      emit(
        UnAuthenticated()
      );
    }
  }
}