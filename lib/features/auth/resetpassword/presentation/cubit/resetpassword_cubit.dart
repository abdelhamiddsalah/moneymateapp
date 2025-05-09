import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'resetpassword_state.dart';

class ResetpasswordCubit extends Cubit<ResetpasswordState> {
  ResetpasswordCubit() : super(ResetpasswordInitial());
}
