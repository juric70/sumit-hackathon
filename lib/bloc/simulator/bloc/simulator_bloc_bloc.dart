import 'package:bloc/bloc.dart';

part 'simulator_bloc_event.dart';
part 'simulator_bloc_state.dart';

class SimulatorBlocBloc extends Bloc<SimulatorBlocEvent, SimulatorBlocState> {
  SimulatorBlocBloc() : super(SimulatorBlocState(showAlert: false));

  Future sendData(SimulatorBlocAddAlertEvent event, Emitter emit) async {
    emit(state.copyWith(showAlert: true));
  }
}
