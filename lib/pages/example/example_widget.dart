import 'package:flutter/material.dart';
import 'package:flutter_hive_json/pages/example/example_model.dart';
import 'package:provider/provider.dart';

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            ButtonWidget(),
            Expanded(child: ListWidget()),
          ],
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => context.read<ExampleWidgetModel>().reload(),
        child: const Text('data'),
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final posts = context.watch<ExampleWidgetModel>().post;
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return Text(
          posts[index].title,
        );
      },
    );
  }
}
