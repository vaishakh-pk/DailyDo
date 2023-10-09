import 'package:dailydo/misc/pallete.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Daily Do'),
        backgroundColor: Pallete.appBarColor,
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListView.separated
            (itemBuilder: (ctx, index){
              return Card(
                child: ListTile(
                  leading: Text('12 jun 23'),
                  title: Text('Wash Car'),
                  subtitle: Text('wash the car today'),
                  trailing: Container(
                    width: 80,
                    child: Row(
                      children :[Checkbox(value: status, onChanged: (bool? newValue){
                        setState(() {
                                  status = newValue ?? false;
                                });
                      })
                      ,Icon(Icons.delete)]
                    ),
                  ),
                ),
              );
            }, 
            separatorBuilder: (ctx,index)
            {
              return const SizedBox(height: 10,);
            }, 
            itemCount: 10),
          ),
        )
      ]),
    );
  }
}