import 'package:flutter/material.dart';


class InputCard extends StatelessWidget {
  final VoidCallback? callback;
  final Widget child;

  const InputCard({
    this.callback, //인자가 선택적인 경우 required 키워드 삭제하여 선택적으로 받기
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(onTap: () => callback?.call(),
          child: InputContents(child: child)),
    );
  }
}

class InputContents extends StatelessWidget {
  const InputContents({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey, width: 8),
      ),
      child: child,
    );
  }
}