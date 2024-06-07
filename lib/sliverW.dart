import 'package:flutter/material.dart';

class SliverW extends StatelessWidget {
  const SliverW({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.blueAccent,
          pinned: true,
          floating: true,
          snap: true,
          expandedHeight: 250.00,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Flutter",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            background: Image.network("https://th.bing.com/th/id/R.1a1f10b6714487c2ce8f56baf90f3c15?rik=YaLjGFUF5m5ZcQ&riu=http%3a%2f%2fupload.wikimedia.org%2fwikipedia%2fcommons%2f9%2f9b%2fPhoto_of_a_kitten.jpg&ehk=D%2bCxp6dPLSkHfYa8JvraOQ0MScRDCwP95fuL7yMpZ7E%3d&risl=&pid=ImgRaw&r=0",fit: BoxFit.cover,),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          return  ListTile(
            title: Text("Flutter"),
            leading: Text("$index"),
            subtitle: Text("Mir Md Mosarof Hossan Showrav"),
          );
        },childCount: 100,))
      ],
    );
  }
}