import 'package:prayer_hub/bloc/bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends BlocBase {
  final _loginEmailController = BehaviorSubject<String>();
  Function(String) get emailSink => _loginEmailController.sink.add;

  @override
  void dispose() {}
}
