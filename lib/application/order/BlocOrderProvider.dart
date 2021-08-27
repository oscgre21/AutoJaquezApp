import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:meta/meta.dart';
part 'BlocOrderStates.dart';
part 'BlockOrderEvent.dart';

class BlocOrderProvider extends Bloc<BlockOrderEvent, BlocOrderStates> {
  late StreamSubscription<String> _positionSubscription;

  BlocOrderProvider(BlocOrderStates initialState) : super(initialState);

  void iniciarSeguimiento() {
    /*
    final locationOptions =
        LocationOptions(accuracy: LocationAccuracy.high, distanceFilter: 10);

    _positionSubscription = this
        ._geolocator
        .getPositionStream(locationOptions)
        .listen((Position position) {
      final nuevaUbicacion = new LatLng(position.latitude, position.longitude);
      add(OnUbicacionCambio(nuevaUbicacion));
    });*/
  }

  void cancelarSeguimiento() {
    _positionSubscription.cancel();
  }

  @override
  Stream<BlocOrderStates> mapEventToState(BlockOrderEvent event) async* {
    if (event is OnUbicacionCambio) {
      // yield state.copyWith(existeUbicacion: true, ubicacion: event.ubicacion);
    }
  }
}
