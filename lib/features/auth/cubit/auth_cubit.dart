import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:social_media_app/features/auth/models/user_data.dart';
import 'package:social_media_app/features/auth/services/auth_services.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final authServices = AuthServices();
  Future<void> signInWithEmail(String email, String password) async {
    emit(AuthLoading());
    try {
      await authServices.signInWithEmail(email, password);
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  Future<void> signUpWithEmail(String email, String password) async {
    emit(AuthLoading());
    try {
      await authServices.signUpWithEmail(email, password);
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  Future<void> signOut() async {
    emit(AuthLoading());
    try {
      await authServices.signOut();
      emit(AuthSignedOut());
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  Future<void> resetPassword(String email) async {
    emit(AuthLoading());
    try {
      await authServices.resetPassword(email);
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  Future<UserData?> getUserData() async {
    emit(AuthLoading());
    try {
      final userData = await authServices.getUserData();
      if (userData != null) {
        emit(AuthSuccess());
      } else {
        emit(AuthFailure('User data not found'));
      }
    } catch (e) {
      emit(AuthFailure(e.toString()));
      return null;
    }
  }
}
