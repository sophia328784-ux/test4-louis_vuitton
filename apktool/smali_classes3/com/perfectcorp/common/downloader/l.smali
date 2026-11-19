.class final Lcom/perfectcorp/common/downloader/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback<",
        "Lcom/perfectcorp/common/downloader/f$d;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

.field public synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/perfectcorp/common/downloader/l;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    iget-object p0, p0, Lcom/perfectcorp/common/downloader/l;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
