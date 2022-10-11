import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/common_app_bar.dart';
import 'package:onayamijika/presentation/components/common_button.dart';
import 'package:onayamijika/presentation/components/common_text_field.dart';
import 'package:onayamijika/presentation/views/onayamijika/profile_edit_page_view_model.dart';

class ProfileEditPage extends ConsumerWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(profileEditPageViewModelProvider);
    return Scaffold(
      appBar: CommonAppBar(title: 'プロフィール編集'),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 10.0, top: 10.0, right: 25.0, bottom: 70.0),
        child: Column(children: [
          CommonTextField(
              labelText: 'メールアドレス',
              hintText: 'example@gmail.com',
              controller: vm.emailController),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: CommonTextField(
              labelText: 'ユーザーID',
              controller: vm.userIdController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: CommonTextField(
              labelText: 'パスワード',
              isPasswordText: true,
              controller: vm.passWordController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SizedBox(
              width: 75,
              child: CommonRegistButton(caption: '登録', onPressed: () => {}),
            ),
          ),
        ]),
      ),
    );
  }
}
