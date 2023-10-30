import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/providers/counter_provider.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Challenge'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.watch<CounterProvider>().value.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              context.read<CounterProvider>().incrementCounter();
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              context.read<CounterProvider>().decrementCounter();
            },
          ),
        ],
      ),
    );
  }
}



/*
//Class Provider
class UserProvider extends ChangeNotifier {
  String username;
  UserProvider({
    this.username = 'Map',
  });

  void changeUserName({
    required String newUserName,
  }) async {
    username = newUserName;
    notifyListener();
  }
}


//MultiProvider

return MultiProvider(
     providers: [
      ChangeNotifierProvider(create: (context) => UserProvider()),
      ChangeNotifierProvider(create: (_) => ShoppingCart()),
    ],
)
  //homeScreen
 //.watch 
 class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
        
      ),
      Body:Center(
        child:Text(
          context.watch()<UserProvider>().userName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize:25,
          )
        )
      )
    )
  }
 }


//.read
 ElevatedButton(
              onPressed: () {
                context.read<UserProvider>().changeUserName(newUserName: newUserName: userNameController.text);
                FocusManager.instance.primaryFocus?.unfocus();
                userNameController.clear();
              },
              child: Text('Save'),
            ),
            */