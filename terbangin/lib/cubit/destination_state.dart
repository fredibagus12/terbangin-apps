part of 'destination_cubit.dart';

abstract class DestinationState extends Equatable {
  const DestinationState();

  @override
  List<Object> get props => [];
}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {}

class DestinationSuccess extends DestinationState {
  final List<DestinationState> destination;
  // ignore: prefer_const_constructors_in_immutables
  DestinationSuccess(this.destination);
  @override
  List<Object> get props => (destination);
}

class DestinationFailed extends DestinationState {
  final List<DestinationState> error;
  const DestinationFailed(this.error);
  @override
  List<Object> get props => (error);
}
