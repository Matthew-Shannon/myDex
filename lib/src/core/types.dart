typedef Runnable = void Function();
typedef Supplier<Y> = Y Function();
typedef Consumer<X> = void Function(X);

typedef Func<X, Y> = Y Function(X);
typedef BiFunc<X, Y, Z> = Z Function(X, Y);

typedef JSON = Map<String, dynamic>;
