.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Single;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
        "TU;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/c<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

.field public final c:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->d(I)Ljava/util/concurrent/Callable;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;->c:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/an;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;->c:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/an;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const-string v1, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    iput-object v0, v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao$a;->c:Ljava/util/Collection;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/observable/ao;->b:Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;

    invoke-interface {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;->subscribe(Lcom/perfectcorp/thirdparty/io/reactivex/e;)V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
