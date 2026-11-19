.class public abstract Lcom/perfectcorp/common/rx/Singles;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/rx/d;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/common/rx/d;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/g;)V

    return-object p0
.end method
