import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timetable/ui/widgets/example/example_model.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExampleWidgetModel(),
      child: const ExampleWidgetBody(),
    );
  }
}

class ExampleWidgetBody extends StatelessWidget {
  const ExampleWidgetBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            _PostsWidget(),
            _ReloadButtom(),
          ],
        ),
      ),
    );
  }
}

class _PostsWidget extends StatelessWidget {
  const _PostsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ExampleWidgetModel model = context.watch<ExampleWidgetModel>();
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.00),
        child: ListView.builder(
          itemCount: model.posts.length,
          itemBuilder: (context, index) {
            return _PostCardWidget(index: index);
          },
        ),
      ),
    );
  }
}

class _PostCardWidget extends StatelessWidget {
  const _PostCardWidget({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final posts = context.watch<ExampleWidgetModel>().posts;
    const indent = 20.00;
    return Container(
      padding: const EdgeInsets.all(indent),
      margin: index == 0
          ? const EdgeInsets.only(top: indent)
          : index + 1 == posts.length
              ? const EdgeInsets.only(bottom: indent)
              : null,
      decoration: BoxDecoration(
        borderRadius: (index == 0)
            ? const BorderRadius.vertical(top: Radius.circular(indent))
            : index + 1 == posts.length
                ? const BorderRadius.vertical(bottom: Radius.circular(indent))
                : BorderRadius.circular(0),
        color: (index % 2 == 0)
            ? const Color(0xfffdfdff)
            : const Color(0xfffafafc),
      ),
      child: Text(posts[index].title),
    );
  }
}

class _ReloadButtom extends StatelessWidget {
  const _ReloadButtom({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ExampleWidgetModel model = context.read<ExampleWidgetModel>();
    return ElevatedButton(
      onPressed: () => model.reloadPosts(),
      child: const Center(
        child: Text('показать посты '),
      ),
    );
  }
}
