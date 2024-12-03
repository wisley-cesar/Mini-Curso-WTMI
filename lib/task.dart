// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:primeiro_app/estrela.dart';

class Task extends StatefulWidget {
  final String title;
  final String url;
  final int dificuldade;

  const Task({
    Key? key,
    required this.title,
    required this.url,
    required this.dificuldade,
  }) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black26,
                          ),
                          width: 72,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              widget.url,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              child: Text(
                                widget.title,
                                style: const TextStyle(
                                  fontSize: 20,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Estrela(
                                  color: widget.dificuldade >= 1
                                      ? Colors.blue
                                      : Colors.blue[100]!,
                                ),
                                Estrela(
                                  color: widget.dificuldade >= 2
                                      ? Colors.blue
                                      : Colors.blue[100]!,
                                ),
                                Estrela(
                                  color: widget.dificuldade >= 3
                                      ? Colors.blue
                                      : Colors.blue[100]!,
                                ),
                                Estrela(
                                  color: widget.dificuldade >= 4
                                      ? Colors.blue
                                      : Colors.blue[100]!,
                                ),
                                Estrela(
                                  color: widget.dificuldade >= 5
                                      ? Colors.blue
                                      : Colors.blue[100]!,
                                ),
                              ],
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
                          },
                          child: Container(
                            height: 45,
                            width: 45,
                            child: const Column(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                ),
                                Text("Up")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: LinearProgressIndicator(
                            value: widget.dificuldade > 0
                                ? (nivel / widget.dificuldade) / 10
                                : nivel / 0.5 / 10,
                            backgroundColor: Colors.white54,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Nivel: $nivel',
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
