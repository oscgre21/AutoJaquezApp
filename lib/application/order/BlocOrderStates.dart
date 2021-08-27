part of 'BlocOrderProvider.dart';

@immutable
class BlocOrderStates {
  final bool siguiendo;

  BlocOrderStates({
    this.siguiendo = true,
  });

  BlocOrderStates copyWith({required bool siguiendo}) =>
      new BlocOrderStates(siguiendo: siguiendo);
}
