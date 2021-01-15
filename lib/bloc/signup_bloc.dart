import 'package:prayer_hub/bloc/bloc_provider.dart';
import 'package:prayer_hub/repository/signup_repository.dart';
import 'package:rxdart/rxdart.dart';

class SignupBloc extends BlocBase {
  final _signupEmailController = BehaviorSubject<String>();
  Function(String) get emailSink => _signupEmailController.sink.add;

  final _signupPasswordController = BehaviorSubject<String>();
  Function(String) get passwordSink => _signupPasswordController.sink.add;

  final _signupPhoneController = BehaviorSubject<String>();
  Function(String) get phoneSink => _signupPhoneController.sink.add;

  bool signupStatus;

  makeSignup() async {
    signupStatus = await firebaseSignup(
      email: _signupEmailController.value,
      password: _signupPasswordController.value,
      phone: _signupPhoneController.value,
    );

    return true;
    // return signupStatus;
  }

  @override
  void dispose() {
    _signupEmailController.close();
    _signupPasswordController.close();
    _signupPhoneController.close();
  }
}
