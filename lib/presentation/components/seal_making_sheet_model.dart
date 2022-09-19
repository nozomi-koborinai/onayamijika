import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/onayami_card_component.dart';
import 'package:onayamijika/presentation/views/onayamijika/onayami_cards_page_view_model.dart';

/// OnayamiCardsPageViewModelのインスタンスを返却するプロバイダ
final sealMakingSheetViewModelProvider = Provider<SealMakingSheetViewModel>(
    (ref) => SealMakingSheetViewModel(
        ref: ref,
        targetCard: ref.watch(selectedOnayamiCardProvider.state).state));

/// 送り先名前ラベル
final sendNameProvider = Provider<String>((_) => '');

/// 送り先お悩みタイトルラベル
final sendOnayamiTitleProvider = Provider<String>((_) => '');

class SealMakingSheetViewModel {
  /// constructor
  SealMakingSheetViewModel({required this.ref, required this.targetCard});

  final ProviderRef ref;
  final OnayamiCardComponent targetCard;
}
