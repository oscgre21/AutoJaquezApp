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
import 'application/product/product_bloc.dart';
import 'application/register/register_bloc_bloc.dart';
import 'boundary/core/helpers/http_request.dart';
import 'boundary/infrastructure/auth/firebase_auth_impl.dart';
import 'boundary/infrastructure/products/productImpl.dart';
import 'domain/auth/i_auth_repository.dart';
import 'boundary/core/helpers/IRequestApi.dart';
import 'domain/products/IProductRepository.dart';

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

  gh.lazySingleton<IProductRepository>(
    () => ProductImpl(
      get<IRequestApi>(),
    ),
  );

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
  get.registerFactory<ProductBloc>(
    () => ProductBloc(
      get<IProductRepository>(),
    ),
  );

  return get;
}
