import 'package:flutter/material.dart';
import 'package:flutter_hive_json/pages/example/example_model.dart';
import 'package:provider/provider.dart';

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          ExampleButtonWidget(),
          Expanded(child: ExampleListWidget())
        ],
      ),
    );
  }
}

class ExampleButtonWidget extends StatelessWidget {
  const ExampleButtonWidget({Key? key}) : super(key: key);
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

class ExampleListWidget extends StatelessWidget {
  const ExampleListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final posts = context.watch<ExampleWidgetModel>().post;
    return ListView.separated(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        return ExampleRowWidget(
          index: index,
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 10),
    );
  }
}

class ExampleRowWidget extends StatelessWidget {
  const ExampleRowWidget({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final posts = context.watch<ExampleWidgetModel>().post;
    return Text(posts[index].id.toString());
  }
}
