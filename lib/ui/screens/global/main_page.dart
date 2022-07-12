import 'package:flutter/material.dart';
import 'package:motus_flutter_cda/ui/screens/global/motus_page.dart';
import 'package:motus_flutter_cda/ui/screens/global/score_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _widgets = [const MotusPage(), const ScorePage()];

  int _index = 0;

  void _changePage(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Motus"),
        automaticallyImplyLeading: false,
        actions: const <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: null,
          ),
        ],
      ),
      body: _widgets[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _changePage,
        currentIndex: _index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark_outlined),
            label: 'Motus du jour',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart_outlined),
            label: 'Score',
          ),
        ],
      ),
    );
  }
}
