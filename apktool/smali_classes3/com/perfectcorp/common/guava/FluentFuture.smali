.class public final Lcom/perfectcorp/common/guava/FluentFuture;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public static a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;
    .locals 1

    instance-of v0, p0, Lcom/perfectcorp/common/guava/FluentFuture;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/perfectcorp/common/guava/FluentFuture;

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/common/guava/FluentFuture;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/common/guava/FluentFuture;
    .locals 1

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/w;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->h(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;)Lcom/perfectcorp/common/guava/FluentFuture;
    .locals 1

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/w;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->i(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    return-object p0
.end method
