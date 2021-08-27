part of 'BlocOrderProvider.dart';

@immutable
abstract class BlockOrderEvent {}

class OnUbicacionCambio extends BlockOrderEvent {
  OnUbicacionCambio();
}
