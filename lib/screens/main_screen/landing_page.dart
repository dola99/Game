import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/bloc/game_data_bloc.dart';
import 'package:game/screens/main_screen/screens/land_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameDataBloc, GameDataState>(
        builder: (context, state) {
          if (state is GameDataInitialState) {
            context.read<GameDataBloc>().add(LoadGameDataEvent());
            return const Center(child: CircularProgressIndicator());
          } else if (state is GameLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GameDataLoadedState) {
            return GameScreen(state.apiResult);
          } else if (state is GameDataErrorState) {
           return const Center(
              child: Text("Uh oh! 😭 Something went wrong!"),
            );
          }
          return const Text('Error');
        },
      ),
    );
  }
}
