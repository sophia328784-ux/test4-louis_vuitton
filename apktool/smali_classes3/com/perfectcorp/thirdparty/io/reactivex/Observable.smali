.class public abstract Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/perfectcorp/thirdparty/io/reactivex/Flowable;->a:I

    return v0
.end method

.method public static concat(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 40
    const-string v0, "source1 is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatArray([Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static concat(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatArray([Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatArray([Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object p0, p0, v0

    const-string v0, "source is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    return-object p0

    :cond_1
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/y;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/y;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromArray([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    sget v2, Lcom/perfectcorp/thirdparty/io/reactivex/Flowable;->a:I

    sget v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/d;->b:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;II)V

    return-object v0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/h;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/h;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/n;->a:Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    return-object v0
.end method

.method public static varargs fromArray([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "items is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->just(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/v;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/w;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/w;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/x;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static just(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ad;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ad;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static merge(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
.end method

.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;I)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 6

    sget v5, Lcom/perfectcorp/thirdparty/io/reactivex/Flowable;->a:I

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxConcurrency"

    invoke-static {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->a(ILjava/lang/String;)V

    const-string v0, "bufferSize"

    invoke-static {v5, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->a(ILjava/lang/String;)V

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/g;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/g;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/g;->call()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/aj;->a(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/p;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;ZII)V

    return-object v0
.end method

.method public final b()Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ak;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final buffer(I)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/b;->a()Ljava/util/concurrent/Callable;

    move-result-object v0

    const-string v1, "count"

    invoke-static {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->a(ILjava/lang/String;)V

    const-string v1, "skip"

    invoke-static {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->a(ILjava/lang/String;)V

    const-string v1, "bufferSupplier is null"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d;

    invoke-direct {v1, p0, p1, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;IILjava/util/concurrent/Callable;)V

    return-object v1
.end method

.method public final c(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;
    .locals 7

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAfterTerminate is null"

    invoke-static {p4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    return-object v1
.end method

.method public final cast(Ljava/lang/Class;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c(Ljava/lang/Class;)Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final collect(Ljava/util/concurrent/Callable;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer<",
            "-TU;-TT;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialValueSupplier is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collector is null"

    invoke-static {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Ljava/util/concurrent/Callable;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)V

    return-object v0
.end method

.method public final collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer<",
            "-TU;-TT;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->e(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collect(Ljava/util/concurrent/Callable;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public final concatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TR;>;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefetch"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->a(ILjava/lang/String;)V

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/g;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/g;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/g;->call()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/aj;->a(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;

    sget v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/d;->a:I

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/g;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;II)V

    return-object v0
.end method

.method public final concatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/u;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/u;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0
.end method

.method public final concatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
            "+TR;>;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefetch"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b;

    sget v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/d;->a:I

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/Observable;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;II)V

    return-object v0
.end method

.method public final concatWith(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatArray([Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final contains(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "element is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->f(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/c;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)V

    return-object v0
.end method

.method public final distinctUntilChanged()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i;

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/a;

    invoke-direct {v1, p0, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Lcom/perfectcorp/thirdparty/io/reactivex/functions/a;)V

    return-object v1
.end method

.method public final doFinally(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
            ")",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/j;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    return-object v0
.end method

.method public final doOnComplete(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;",
            ")",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-virtual {p0, v0, v0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->c(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;

    move-result-object p0

    return-object p0
.end method

.method public final doOnError(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->c(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;

    move-result-object p0

    return-object p0
.end method

.method public final doOnNext(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-TT;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->c(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/k;

    move-result-object p0

    return-object p0
.end method

.method public final filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate<",
            "-TT;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/o;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)V

    return-object v0
.end method

.method public final firstElement()Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;J)V

    return-object v0
.end method

.method public final flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TR;>;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;I)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final flatMapCompletable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/b;",
            ">;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Completable;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/r;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Z)V

    return-object v0
.end method

.method public final flatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/u;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/u;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0
.end method

.method public final flatMapMaybe(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/MaybeSource<",
            "+TR;>;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/s;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Z)V

    return-object v0
.end method

.method public final flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource<",
            "+TR;>;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Z)V

    return-object v0
.end method

.method public final groupBy(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+TK;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable<",
            "TK;TT;>;>;"
        }
    .end annotation

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    sget v4, Lcom/perfectcorp/thirdparty/io/reactivex/Flowable;->a:I

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bufferSize"

    invoke-static {v4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/z;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;IZ)V

    return-object v0
.end method

.method public final hide()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/aa;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/aa;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    return-object v0
.end method

.method public final ignoreElements()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ac;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ac;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    return-object v0
.end method

.method public final map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-TT;+TR;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ae;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ae;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0
.end method

.method public final mergeWith(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromArray([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;I)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final observeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;",
            ")",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lcom/perfectcorp/thirdparty/io/reactivex/Flowable;->a:I

    const-string v1, "scheduler is null"

    invoke-static {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bufferSize"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->a(ILjava/lang/String;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/af;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;ZI)V

    return-object v1
.end method

.method public final onErrorResumeNext(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ag;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Z)V

    return-object v0
.end method

.method public final onErrorReturn(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "valueSupplier is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ah;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ah;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0
.end method

.method public final retry(J)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->e:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    const-string v1, "predicate is null"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ai;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/Observable;JLcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)V

    return-object v1

    :cond_0
    const-string p0, "times >= 0 required but it was "

    invoke-static {p1, p2, p0}, Ld21;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;"
        }
    .end annotation

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    const-string v2, "onNext is null"

    invoke-static {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onError is null"

    invoke-static {p2, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onComplete is null"

    invoke-static {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onSubscribe is null"

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/h;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-object v2
.end method

.method public final subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/e<",
            "-TT;>;)V"
        }
    .end annotation

    .line 33
    const-string v0, "observer is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_0
    move-exception p0

    throw p0
.end method

.method public final subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;",
            ")",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/al;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    return-object v0
.end method

.method public final take(J)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/am;

    invoke-direct {v0, p0, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/am;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;J)V

    return-object v0

    :cond_0
    const-string p0, "count >= 0 required but it was "

    invoke-static {p1, p2, p0}, Ld21;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final to(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
            "-",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/util/e;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public final toFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/f;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-object v0
.end method

.method public final toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "capacityHint"

    const/16 v1, 0x10

    invoke-static {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;I)V

    return-object v0
.end method

.method public final toList(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
            "TU;>;"
        }
    .end annotation

    .line 13
    const-string v0, "collectionSupplier is null"

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
