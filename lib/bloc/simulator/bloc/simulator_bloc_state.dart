// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'simulator_bloc_bloc.dart';

class SimulatorBlocState {
  bool showAlert;
  SimulatorBlocState({
    required this.showAlert,
  });

  SimulatorBlocState copyWith({
    bool? showAlert,
  }) {
    return SimulatorBlocState(
      showAlert: showAlert ?? this.showAlert,
    );
  }
}
