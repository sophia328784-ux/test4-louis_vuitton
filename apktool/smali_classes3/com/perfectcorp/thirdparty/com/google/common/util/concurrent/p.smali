.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/o;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/o<",
        "TV;>;",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p;->e()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public abstract e()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
.end method
