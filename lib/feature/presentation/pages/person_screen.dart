import 'package:flutter/material.dart';
import 'package:rickandmorty/feature/presentation/widgets/custom_search_delegat.dart';
import 'package:rickandmorty/feature/presentation/widgets/persons_list_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Characters'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegat());
            },
          )
        ],
      ),
      body: PersonsList(),
    );
  }
}
