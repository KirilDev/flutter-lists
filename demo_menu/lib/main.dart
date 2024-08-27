import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // It's the root widget of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: SelectionScreen());
  }
}

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '#',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Select Layout That You Want"),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Center(
            child: Column(
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FirstGrid()));
                    },
                    icon: const Icon(Icons.login),
                    label: const Text("First Layout")),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondGrid()));
                    },
                    icon: const Icon(Icons.login),
                    label: const Text("2nd Layout")),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ThirdGrid()));
                    },
                    icon: const Icon(Icons.login),
                    label: const Text("Third Layout"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FirstGrid extends StatelessWidget {
  const FirstGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Simple Grid"),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Write"),
              subtitle: Text("Send a bank message"),
            ),
            ListTile(
              leading: Icon(Icons.phone_android),
              title: Text("Call"),
              subtitle: Text("+371 67 444 444"),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("Book a consultation"),
              subtitle: Text("Via phone, video or at branch"),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text("ATMs & branches"),
              subtitle: Text("Find on a map"),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text("FAQs"),
              subtitle: Text("Get useful answers"),
            )
          ],
        ),
      ),
    );
  }
}

class SecondGrid extends StatelessWidget {
  const SecondGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Horizontal Grid"),
        ),
        body: Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                child: Icon(
                  Icons.abc,
                  size: 50,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                child: Icon(
                  Icons.back_hand_rounded,
                  size: 50,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                child: Icon(
                  Icons.cabin,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdGrid extends StatelessWidget {
  const ThirdGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
         title: const Center(child: Text("Grid List")),
       ),
        body:
        GridView.count(
            crossAxisCount:2,
        children: [
          Image.asset('assets/images/windows.jpg', height: 200, width: 200,),
          Image.asset('assets/images/macOS.png'),
          Image.asset('assets/images/linux.png'),
          Image.asset('assets/images/dart.png')
          ],
        ),
      ),
    );
  }
}
