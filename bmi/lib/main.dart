import 'package:flutter/material.dart';

void main() {
  runApp(const BMI_APP());
}

class BMI_APP extends StatelessWidget {
  const BMI_APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: HomeView(),
      // SecondPage(
      //   bodystate: "Normal",
      //   score: 40,
      // ),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final primary = Color.fromRGBO(28, 30, 51, 0.8);
  @override
  int wieght = 40;
  int Age = 20;
  double Height = 150;
  List<bool> gender = [false, true];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "BMI",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => GenderSelection(0),
                  child: Container(
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(8),
                      border: gender[0] == true
                          ? Border.all(color: Colors.orangeAccent)
                          : Border.all(),
                    ),
                    child: Image.asset('assets/images/male.png'),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => GenderSelection(1),
                  child: Container(
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(8),
                      border: gender[1] == true
                          ? Border.all(color: Colors.orangeAccent)
                          : Border.all(),
                    ),
                    child: Image.asset('assets/images/female.png'),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                const Text(
                  'Height',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  Height.toInt().toString(),
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Slider(
                  min: 150,
                  max: 220,
                  value: Height,
                  onChanged: (value) {
                    setState(() {
                      Height = value;
                    });
                  },
                  activeColor: Colors.orange,
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => incrementWight(),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Wieght',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          wieght.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                              child: const Center(
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => decrementWieght(),
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orange,
                                ),
                                child: const Center(
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Age',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Age.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () => incrementAge(),
                            child: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                              child: const Center(
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => decrementAge(),
                            child: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                              child: const Center(
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(12),
                          backgroundColor: Colors.orange,
                          textStyle: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          )),
                      onPressed: () {
                        calculatebmi();
                      },
                      child: const Text(
                        "Calculate BMI",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void GenderSelection(index) {
    setState(() {
      gender[index] = !gender[index];
      gender[(index + 1) % gender.length] = false;
    });
  }

  void incrementWight() {
    setState(() {
      if (wieght < 150) {
        wieght++;
      }
    });
  }

  void decrementWieght() {
    setState(() {
      if (wieght - 1 >= 40) {
        wieght--;
      }
    });
  }

  void incrementAge() {
    // print("increament Age");
    setState(() {
      if (Age - 1 < 60) {
        Age++;
      }
    });
  }

  void decrementAge() {
    // print("decreament Age");
    setState(() {
      if (Age - 1 >= 20) {
        Age--;
      }
    });
  }

  void calculatebmi() {
    // print("calculate bmi");
    double score = (wieght / (Height * Height) * 10000);
    if (score < 18.5) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return SecondPage(
              bodystate: "you are under weight.",
              score: score.toInt(),
              comment: "UNDERWEIGHT",
            );
          },
        ),
      );
    } else if (score >= 18.5 && score < 25) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return SecondPage(
              bodystate: "you are a healthy weight.",
              score: score.toInt(),
              comment: "Normal",
            );
          },
        ),
      );
    } else if (score > 25 && score <= 29.99) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return SecondPage(
              bodystate: "you are a overweight.",
              score: score.toInt(),
              comment: "OVERWEIGHT",
            );
          },
        ),
      );
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return SecondPage(
              bodystate: "you are obese.",
              score: score.toInt(),
              comment: "OBESE",
            );
          },
        ),
      );
    }
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage(
      {super.key,
      required this.bodystate,
      required this.score,
      required this.comment});
  final String bodystate;
  final int score;
  final String comment;
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final primary = Color.fromRGBO(28, 30, 51, 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Your Score",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              widget.bodystate,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
            Text(
              widget.score.toString(),
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                Text(
                  "Normal BMI Range is:",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "18.5-25kg/m",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
            Text(
              widget.comment,
              style: TextStyle(
                fontSize: 25.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
