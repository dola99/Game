import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:game/models/data_model.dart';
import 'package:game/repo/game_data_repo.dart';

part 'game_data_event.dart';
part 'game_data_state.dart';

class GameDataBloc extends Bloc<GameDataEvent, GameDataState> {
  final GameRepositry gameRepositry;
  GameDataBloc(
    this.gameRepositry,
  ) : super(GameDataInitialState()) {
    on<GameDataEvent>((event, emit) async {
      if (event is LoadGameDataEvent) {
        emit(GameLoadingState());

        List<DataModel>? apiResult = await gameRepositry.getGamesData();
        if (apiResult == null) {
          emit(GameDataErrorState());
        } else {
          emit(GameDataLoadedState(apiResult: apiResult));
        }
      }
    });
  }
}
