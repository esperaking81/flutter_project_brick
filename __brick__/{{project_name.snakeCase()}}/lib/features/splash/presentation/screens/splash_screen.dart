import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:auto_route/auto_route.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:{{{project_name.snakeCase()}}}/core/core.dart';

import '../viewmodel/module.dart';

@RoutePage()
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
      await 1.seconds.delayed();

      ref.read(splashNotifierProvider.notifier).handleStartupLogic();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '${AppConstants.appName}.',
        ).text.xl3.make(),
      ),
    );
  }
}
