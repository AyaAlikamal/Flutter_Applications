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
      home: const HomeView(),
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
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  foregroundDecoration: BoxDecoration(
                    // border: Border.all(
                    //   color: Colors.yellow,
                    // ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset('assets/images/male.png'),
                ),
              ),
              Expanded(
                child: Container(
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    // border: Border.all(
                    //   color: Colors.yellow,
                    // ),
                  ),
                  margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset('assets/images/female.png'),
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
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  '150',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                Slider(
                  min: 150,
                  max: 220,
                  value: 150,
                  onChanged: (value) {},
                  activeColor: Colors.orange,
                )
              ],
            ),
          ),
          Row(
            children: [
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
                        'Wieght',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        '40',
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
                          Container(
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
                        ],
                      ),
                    ],
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
                      const Text(
                        '20',
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
                          Container(
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
                      onPressed: () {},
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
}