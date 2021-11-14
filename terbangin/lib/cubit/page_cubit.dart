import 'package:bloc/bloc.dart' show Cubit;

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

  void setPage(int newPage) {
    emit(newPage);
  }
}
