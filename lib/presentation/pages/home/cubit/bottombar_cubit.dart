import 'package:bloc/bloc.dart';

class BottomBarCubit extends Cubit<int> {
  BottomBarCubit() : super(0);
  updateIndex(int index) => emit(index);
}
