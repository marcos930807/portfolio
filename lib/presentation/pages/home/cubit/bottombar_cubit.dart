import 'package:bloc/bloc.dart';

class BottomBarCubit extends Cubit<int> {
  BottomBarCubit() : super(0);

  void updateIndex(int index) => emit(index);
}
