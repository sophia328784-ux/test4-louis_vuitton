.class public abstract Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/a;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 1

    const-string v0, "run is null"

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/d;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
