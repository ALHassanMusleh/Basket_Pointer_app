import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

void main() {
  runApp(BasketballPointerApp());
}

class BasketballPointerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Basketball_pointer(),
      ),
    );
  }
}

class Basketball_pointer extends StatefulWidget {
  Basketball_pointer({Key? key}) : super(key: key);

  @override
  State<Basketball_pointer> createState() => _Basketball_pointerState();
}

class _Basketball_pointerState extends State<Basketball_pointer> {
  int teamAPoints = 0;

  int teamBPoints = 0;

// void addonepoint(){
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                          print(teamAPoints);
                        },
                        child: Text(
                          'Add 1 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          // primary: Colors.orange,
                          backgroundColor: Colors.orange,
                          // fixedSize: Size(100, 200),
                          minimumSize: Size(130, 45),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          // primary: Colors.orange,
                          backgroundColor: Colors.orange,
                          // fixedSize: Size(100, 200),
                          minimumSize: Size(130, 45),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          // primary: Colors.orange,
                          backgroundColor: Colors.orange,
                          // fixedSize: Size(100, 200),
                          minimumSize: Size(130, 45),
                        ),
                      ),
                      const Spacer(
                        flex: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: VerticalDivider(
                    color: Color(0xFFEAEAEA),
                    thickness: 2,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: Text(
                          'Add 1 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          // primary: Colors.orange,
                          backgroundColor: Colors.orange,
                          // fixedSize: Size(100, 200),
                          minimumSize: Size(130, 45),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        child: Text(
                          'Add 2 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          // primary: Colors.orange,
                          backgroundColor: Colors.orange,
                          // fixedSize: Size(100, 200),
                          minimumSize: Size(130, 45),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: Text(
                          'Add 3 Points',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          // primary: Colors.orange,
                          backgroundColor: Colors.orange,
                          // fixedSize: Size(100, 200),
                          minimumSize: Size(130, 45),
                        ),
                      ),
                      const Spacer(
                        flex: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // showAlert(context);
                    showQuickAlert(context, teamAPoints, teamBPoints);
                  },
                  child: Text(
                    'Finish',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    // primary: Colors.orange,
                    backgroundColor: Colors.orange,
                    // fixedSize: Size(100, 200),
                    minimumSize: Size(130, 45),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamAPoints = 0;
                      teamBPoints = 0;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    // primary: Colors.orange,
                    backgroundColor: Colors.orange,
                    // fixedSize: Size(100, 200),
                    minimumSize: Size(130, 45),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void showQuickAlert(BuildContext context, int teamA, int teamB) {
  String wins = "";
  if (teamA > teamB) {
    wins = "Team A is Wins";
  } else if (teamB > teamA) {
    wins = "Team B is Wins";
  } else {
    wins = "The two teams tied";
  }
  QuickAlert.show(
    context: context,
    type: QuickAlertType.info,
    title: "Result of the game",
    text: 'Team A = $teamA P && Team B = $teamB P then $wins',
  );
}
