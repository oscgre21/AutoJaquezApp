// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'application/auth/auth_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/register/register_bloc_bloc.dart';
import 'boundary/core/helpers/http_request.dart';
import 'boundary/infrastructure/auth/firebase_auth_impl.dart';
import 'domain/auth/i_auth_repository.dart';
import 'boundary/core/helpers/IRequestApi.dart';

GetIt $initGetIt(
  GetIt get, {
  required String environment,
  EnvironmentFilter? environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);

  gh.lazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  gh.lazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  gh.lazySingleton<GoogleSignIn>(() => GoogleSignIn());
  gh.lazySingleton<IRequestApi>(() => HttpRequest());

  gh.lazySingleton<IAuthRepository>(() => FirebaseAuthImpl(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<IRequestApi>(),
      ));

/*  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<INoteRepository>(
      () => NoteRepository(get<FirebaseFirestore>()));
  gh.factory<NoteActorBloc>(() => NoteActorBloc(get<INoteRepository>()));
  gh.factory<NoteFormBloc>(() => NoteFormBloc(get<INoteRepository>()));
  gh.factory<NoteWatcherBloc>(() => NoteWatcherBloc(get<INoteRepository>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));*/
  get.registerFactory<SignInFormBloc>(
    () => SignInFormBloc(get<IAuthRepository>()),
  );
  get.registerFactory<AuthBloc>(
    () => AuthBloc(get<IAuthRepository>()),
  );
  get.registerFactory<RegisterBlocBloc>(
    () => RegisterBlocBloc(
      get<IRequestApi>(),
      get<IAuthRepository>(),
    ),
  );

  return get;
}
