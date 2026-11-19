.class public abstract Lcom/perfectcorp/common/guava/MoreFutures;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/guava/MoreFutures$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    instance-of v0, p1, Lcom/perfectcorp/common/guava/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/perfectcorp/common/guava/b;

    new-instance v0, Lcom/perfectcorp/common/guava/MoreFutures$a;

    invoke-direct {v0, p1}, Lcom/perfectcorp/common/guava/MoreFutures$a;-><init>(Lcom/perfectcorp/common/guava/b;)V

    move-object p1, v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Uninterruptibles;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
