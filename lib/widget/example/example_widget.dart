import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_hive_json/widget/example/example_model.dart';

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Expanded(child: _ExampleListWidget()),
          _ExampleButtonWidget(),
        ],
      ),
    );
  }
}

class _ExampleListWidget extends StatelessWidget {
  const _ExampleListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final value = context.watch<ExampleWidgetModel>().staty;
    return ListView.separated(
      itemCount: value.posts.length,
      itemBuilder: (BuildContext context, int index) {
        return _ExampleRowWidget(
          index: index,
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 10),
    );
  }
}

class _ExampleRowWidget extends StatelessWidget {
  const _ExampleRowWidget({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final value = context.watch<ExampleWidgetModel>().staty;
    return Center(child: Text(value.posts[index].title));
  }
}

class _ExampleButtonWidget extends StatelessWidget {
  const _ExampleButtonWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => context.read<ExampleWidgetModel>().getStaty(),
          child: const Text('data'),
        ),
      ),
    );
  }
}
