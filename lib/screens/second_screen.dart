import 'package:domitemplate_flutter/viewmodels/SecondViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key, required this.title});

  final String title;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  late SecondViewModel usersViewModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_)=>onLoad());
  }

  @override
  Widget build(BuildContext context) {
    usersViewModel = context.watch<SecondViewModel>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(onPressed: () => usersViewModel.getUser(), child: const Text('Action!')),
            Text(widget.title),
            Column(
              children: [observe(usersViewModel)],
            )
          ],
        ),
      ),
    );
  }

  /*
    LifeCycle: Cuando la pantalla termina de cargarse
  */
  onLoad() {
      usersViewModel.getUser();
  }
  
  /*
    CallBack para el ViewModel
  */
  observe(SecondViewModel usersViewModel) {
    var json = usersViewModel.user;
    if(json == null){
      return const Text("Loading...");
    }else{
      return Text(json.substring(0,800));
    }
  }
}
