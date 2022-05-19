import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timetable/ui/screens/auth/auth_model.dart';

class AuhtWidget extends StatelessWidget {
  const AuhtWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              _GroupNameWidget(),
              _ErrorTittleWidget(),
              _AuthButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class _GroupNameWidget extends StatelessWidget {
  const _GroupNameWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final model = context.read<AuhtWidgetModel>();
    return Expanded(
      child: TextField(
        controller: TextEditingController(),
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'группа',
        ),
        onChanged: model.setNameGroup,
      ),
    );
  }
}

class _AuthButtonWidget extends StatelessWidget {
  const _AuthButtonWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final model = context.read<AuhtWidgetModel>();
    final buttonState =
        context.select((AuhtWidgetModel value) => value.state.buttonState);
    final onPres = buttonState == AuthWidgetModelButtonState.canSubmit
        ? model.buttonOnPressed
        : null;
    final childWidget = buttonState == AuthWidgetModelButtonState.isAuthProcess
        ? const CircularProgressIndicator()
        : const Text('посмотреть расписание');
    return ElevatedButton(
        onPressed: () => onPres?.call(context), child: childWidget);
  }
}

class _ErrorTittleWidget extends StatelessWidget {
  const _ErrorTittleWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final errorTitle =
        context.select((AuhtWidgetModel value) => value.state.error);
    return Text(errorTitle);
  }
}
