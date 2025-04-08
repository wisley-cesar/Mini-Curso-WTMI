import 'package:flutter/material.dart';
import 'package:primeiro_app/task.dart';

class Myhome extends StatefulWidget {
  bool opacitade = true;

  Myhome({
    super.key,
  });

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Tarefas',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: AnimatedOpacity(
        opacity: widget.opacitade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
              title: 'Aprendendo Flutter',
              icon: Icon(Icons.book),
              dificuldade: 4,
            ),
            Task(
              title: 'Andar de bicicleta ',
              dificuldade: 1,
              icon: Icon(Icons.pedal_bike),
            ),
            Task(
              title: 'Jogar bola',
              dificuldade: 2,
              icon: Icon(Icons.sports_soccer),
            ),
          ],
        ),
      ),
      // Apenas Para mostrar
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.opacitade = !widget.opacitade;
          });
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
