import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;

  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick {
  CommonButtonClick(super.value);
}

class EqualsButtonClick extends ButtonClick {
  EqualsButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class ButtonHub extends StatelessWidget {
  final void Function(ButtonClick click) onButtonClick;

  const ButtonHub({super.key, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        Button(
          value: '%',
          color: Colors.black54,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: 'pi',
          color: Colors.black54,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: 'C',
          color: Colors.black54,
          onTap: (value) => onButtonClick(ClearButtonClick(value)),
        ),
        const ButtonLogo(
          color: Colors.white70
        ),
        Button(
          value: '7',
          color: Colors.white24,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '8',
          color: Colors.white24,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '9',
          color: Colors.white24,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '/',
          color: Colors.black54,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '4',
          color: Colors.white24,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '5',
          color: Colors.white24,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '6',
          color: Colors.white24,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '*',
          color: Colors.black54,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '1',
          color: Colors.white24,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '2',
          color: Colors.white24,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '3',
          color: Colors.white24,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '+',
          color: Colors.black54,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '-',
          color: Colors.black54,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '0',
          color: Colors.white24,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '.',
          color: Colors.black54,
          onTap: (value) => onButtonClick(CommonButtonClick(value)),
        ),
        Button(
          value: '=',
           color: Colors.green,
          onTap: (value) => onButtonClick(EqualsButtonClick(value)),
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  final void Function(String value)? onTap;
  const Button({super.key, required this.value, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primaryContainer;
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap == null ? null : () => onTap!(value),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 35
              ),
              
            ),
          ),
        ),
      ),
    );
  }
  
}
class ButtonLogo extends StatelessWidget {
  const ButtonLogo({super.key, this.color,});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primary;
    return Container(
        padding: const EdgeInsets.all(8),
        color: color,
        child: const Center(child: Icon(Icons.calculate, color: Colors.black,))
    );
  }
}