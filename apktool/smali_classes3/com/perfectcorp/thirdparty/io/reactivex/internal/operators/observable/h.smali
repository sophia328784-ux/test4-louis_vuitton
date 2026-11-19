.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/h;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "+TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/h;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/h;->b:Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    const-string v0, "null ObservableSource supplied"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
