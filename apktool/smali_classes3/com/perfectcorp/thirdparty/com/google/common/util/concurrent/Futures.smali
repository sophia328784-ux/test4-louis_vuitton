.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const-class v0, Ljava/lang/Throwable;

    invoke-static {p0, v0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/a;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Uninterruptibles;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Future was expected to be done: %s"

    invoke-static {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures$a;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures$a;-><init>(Ljava/util/concurrent/Future;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {p0, v0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static d(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Z)V

    return-object v0
.end method

.method public static varargs e([Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->v([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Z)V

    return-object v0
.end method

.method public static f(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/s$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public static g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/s$b;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/s$b;

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/s$b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/s$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/e;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/e;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
