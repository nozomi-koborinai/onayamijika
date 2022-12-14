import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:onayamijika/domain/interfaces/i_onayami_card_repository.dart';
import 'package:onayamijika/infrastructure/dtos/onayami_card_document.dart';
import 'package:onayamijika/presentation/components/onayami_card_component.dart';
import 'package:onayamijika/presentation/components/onayami_card_view_model.dart';

/// OnayamiCardViewModelのインスタンスを返却するプロバイダ
final cardMakingPageViewModelProvider = Provider<CardMakingPageViewModel>(
    (ref) => CardMakingPageViewModel(
        ref: ref, repository: ref.watch(onayamiCardRepositoryProvider)));

/// お悩みカード(新規作成用)ViewModel
class CardMakingPageViewModel {
  final ProviderRef ref;
  final IOnayamiCardRepository repository;

  /// constructor
  CardMakingPageViewModel({required this.ref, required this.repository});

  // お悩み解決カード登録ボタン押下時
  Future<void> onPressed({required BuildContext context}) async {
    // 位置情報を取得
    final Position position = await Geolocator.getCurrentPosition();
    // お悩みカード(新規作成)ウィジェットからOnayamiCardデータを取得
    final OnayamiCardDocument newOnayamiCard =
        ref.watch(createOnayamiCardDataProvider(position));
    await repository.addCard(newCard: newOnayamiCard);
    ref.watch(cardTitleControllerStateProvider.state).state.text = '';
    ref.watch(cardContentControllerStateProvider.state).state.text = '';
    Navigator.of(context).pop();
  }
}
