import 'package:domitemplate_flutter/viewmodels/ThirdViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key, required this.title});

  final String title;

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  int _selectedIndex = 0;

  late ThirdViewModel usersViewModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_)=>onLoad());
  }

  @override
  Widget build(BuildContext context) {
    usersViewModel = context.watch<ThirdViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
  _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  /*
    LifeCycle: Cuando la pantalla termina de cargarse
  */
  onLoad() {
      
  }
  
  /*
    CallBack para el ViewModel
  */
  observe(ThirdViewModel usersViewModel) {
    return const Text("data");
  }
}
