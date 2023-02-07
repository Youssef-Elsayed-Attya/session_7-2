import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.message_outlined),text: 'chats',),
                Tab(icon: Icon(Icons.incomplete_circle),text: 'Status',),
                Tab(icon: Icon(Icons.call),text: 'calls',),
              ],),
          ),
          body: TabBarView(
            children: [
              Mylist(),
              Container( child: Text('status'),),
              Container( child: Text('Calls'),),
            ],
          )
      ),
    );
  }
}




class MyTile extends StatelessWidget {
  MyTile( this.index);

  int index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,backgroundColor: Colors.green,
      ),
      title: Text('user ${index}'),
      subtitle: Text('hallo my friend'),
      trailing: IconButton( onPressed: (){},icon :Icon (Icons.drag_handle)),
      onTap: (){},
      enabled: true,

    );
  }
}

class Mylist extends StatelessWidget {
  const Mylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => Center(child: Container(width: 300,height: 0.5,color: Colors.grey,)),
        itemCount: 100,
        itemBuilder: (context, index) => MyTile(index),
      ),
    );
  }
}

