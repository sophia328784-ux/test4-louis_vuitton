.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Single;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
        "TU;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

.field public final c:Ljava/util/concurrent/Callable;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Ljava/util/concurrent/Callable;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f;->c:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/e;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f;->c:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-direct {v0, p0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/e;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Ljava/util/concurrent/Callable;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)V

    return-object v0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initialSupplier returned a null value"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f;->d:Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;

    iput-object p1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;

    iput-object v0, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f$a;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/f;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-interface {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
