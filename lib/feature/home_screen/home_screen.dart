import 'package:cross_board/feature/home_screen/home_card.dart';
import 'package:cross_board/model/workout.dart';
import 'package:cross_board/model/workout_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Workout> workouts = [
    Workout(
        name: 'Agachamento',
        count: 10,
        time: 60,
        imageUrl: 'https://treinodecorrida.com.br/wp-content/uploads/2018/12/Body-Weight-Squat'
            '.gif'),
    Workout(
        name: 'Burpee',
        count: 20,
        time: 60,
        imageUrl: 'https://treinodecorrida.com.br/wp-content/uploads/2019/01/Burpee.gif'),
    Workout(
        name: 'Flexão de Braço',
        count: 15,
        time: 60,
        imageUrl:
            'https://treinodecorrida.com.br/wp-content/uploads/2019/01/Flex%C3%A3o-de-Bra%C3%A7o.gif'),
    Workout(
        name: 'Pular Corda',
        count: 50,
        time: 60,
        imageUrl: 'https://treinodecorrida.com.br/wp-content/uploads/2019/01/sid0171.gif'),
    Workout(
        name: 'Passada com elevação',
        count: 15,
        time: 60,
        imageUrl:
            'https://treinodecorrida.com.br/wp-content/uploads/2019/01/Passada-com-flex%C3%A3o-de-ombros-Bra%C3%A7o-afrente.gif'),
    Workout(
        name: 'Corrida Moderada',
        time: 60,
        imageUrl: 'https://treinodecorrida.com.br/wp-content/uploads/2019/01/sid0162.gif'),
  ];

  @override
  Widget build(BuildContext context) {
    final WorkoutList workoutListComplete =
        WorkoutList(label: 'Treino 1', workouts: workouts, time: 120);
    final homeList = [workoutListComplete, workoutListComplete, workoutListComplete];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cross Board'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: homeList.length,
        itemBuilder: (context, index) {
          var workoutList = homeList[index];

          return HomeCard(workoutList: workoutList);
        },
      ),
    );
  }
}
