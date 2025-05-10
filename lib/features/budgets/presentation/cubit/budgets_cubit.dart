import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'budgets_state.dart';

class BudgetsCubit extends Cubit<BudgetsState> {
  BudgetsCubit() : super(BudgetsInitial());
}
