import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/states/seal_paint_state.dart';
import 'package:onayamijika/utils/app_values.dart';

/// お悩みシールの描画編集ツールエリア
class SealEditToolArea extends ConsumerWidget {
  final double height;
  const SealEditToolArea({required this.height, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sealPaintStateNotifierProvider);
    final controller = ref.read(sealPaintStateNotifierProvider.notifier);

    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          //   Slider(
          //   value: ColorHelper.colorToHue(colorPallete.selectedColor),
          //   onChanged: (value) => _onChanged(context, value),
          //   min: 0,
          //   max: 360,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: controller.undo,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: state.paintList.isNotEmpty
                      ? AppColors.purple
                      : Colors.grey[200],
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                ),
                child: const Icon(Icons.undo, size: 40),
              ),
              ElevatedButton(
                onPressed: controller.redo,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: state.undoList.isNotEmpty
                      ? AppColors.purple
                      : Colors.grey[200],
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                ),
                child: const Icon(Icons.redo, size: 40),
              ),
              ElevatedButton(
                onPressed: controller.clear,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: const CircleBorder(),
                  backgroundColor: AppColors.intensePink,
                  padding: const EdgeInsets.all(10),
                ),
                child: const Icon(Icons.delete, size: 40),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
