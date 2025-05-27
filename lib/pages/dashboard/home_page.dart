import 'package:flutter/material.dart';
import 'package:phonesync/pages/dashboard/api_serivce.dart';

import '../../models/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Users>> futureUsers;
  @override
  void initState()
  {
    super.initState();
    futureUsers=ApiService().fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: futureUsers, builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState)
          {
            return Center(child: CircularProgressIndicator(),);
          }
        else if(snapshot.hasError)
          {
            return Center(child: Text("Error:${snapshot.hasError}"),);
          }
        else if(!snapshot.hasData || snapshot.data!.isEmpty)
          {
            return Center(child: Text("no data of users"),);
          }

        final users=snapshot.data!;
        return ListView.builder(itemCount: users.length,itemBuilder: (context,index){
          final user=users[index];
          return ListTile(
            title: Text(user.name!),
            subtitle: Text(user.email!),
          );
        });
      }),
    );
  }
}
