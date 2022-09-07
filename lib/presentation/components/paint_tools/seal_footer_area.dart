import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// お悩みシールの描画編集ツールエリア
class SealFooterArea extends ConsumerWidget {
  final double height;
  const SealFooterArea({required this.height, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: height,
        width: MediaQuery.of(context).size.width,
        child: const Text('フッターエリア'));
  }
}
