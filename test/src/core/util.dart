import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mydex/src/core/types.dart';
import 'package:mydex/src/model/state.dart';
import 'package:redux/redux.dart';

extension WidgetTesterEx on WidgetTester {}

extension PostExpectationEx on PostExpectation {
  void thenAnswerVoidFuture<T>() => thenAnswer((_) => Future.value(''));

  void thenAnswerFuture<T>(T t) => thenAnswer((_) => Future.value(t));
  void thenAnswerFutureN<T>(T? t) => thenAnswer((_) => Future.value(t));

  void thenAnswerStream<T>(T t) => thenAnswer((_) => Stream.value(t));
  void thenAnswerStreamN<T>(T? t) => thenAnswer((_) => Stream.value(t));
}

Store<MyDexState> setupStore(BiFunc<MyDexState, dynamic, MyDexState> onApply) => //
    Store(onApply, initialState: const MyDexState());

class TestApp extends StatelessWidget {
  final Supplier<Widget> onReady;

  const TestApp(Supplier<Widget> onReady, {Key? key})
      : onReady = onReady,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(button: TextStyle(fontSize: 45.sp)),
        ),
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        home: Material(child: onReady()),
      ),
    );
  }
}
