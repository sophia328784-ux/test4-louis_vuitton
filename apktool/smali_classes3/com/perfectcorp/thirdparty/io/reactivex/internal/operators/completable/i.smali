.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Completable;


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;->b:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public final c(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onSubscribe(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/i;->b:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onComplete()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
