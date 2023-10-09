import 'package:dailydo/misc/pallete.dart';
import 'package:dailydo/widgets/searchbar.dart';
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
        title: const Text('DailyDo'),
        backgroundColor: Pallete.appBarColor,
        centerTitle: true,
      ),
      body: Column(children: [
        const SizedBox(height: 20,),
        const customSearch(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListView.separated
            (itemBuilder: (ctx, index){
              return Card(
                child: ListTile(
                  leading: Checkbox(value: status, onChanged: (bool? newValue){
                        setState(() {
                                  status = newValue ?? false;
                                });
                      }),
                  title: Text('Wash Car',
                  style: TextStyle(
                    decoration: status == true ? TextDecoration.lineThrough : TextDecoration.none
                  ),
                  ),
                  subtitle: Text('12 jun 23'),
                  trailing: Icon(Icons.delete)
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