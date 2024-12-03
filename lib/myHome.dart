import 'package:flutter/material.dart';
import 'package:primeiro_app/task.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

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
      body: ListView(
        children: const [
          Task(
            title: 'Aprendendo Flutter',
            url:
                'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
            dificuldade: 4,
          ),
          Task(
            title: 'Andar de bicicleta ',
            dificuldade: 1,
            url:
                'https://p2.trrsf.com/image/fget/cf/774/0/images.terra.com/2023/11/23/59428028-ciclismo-descubra-os-beneficios-e-como-comecar-a-pedalar.jpg',
          ),
          Task(
            title: 'Jogar bola',
            dificuldade: 2,
            url:
                'https://i.pinimg.com/736x/34/25/b3/3425b32654f6e36aafa8fa9bc1d5bd0b.jpg',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
