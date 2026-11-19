.class final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback<",
        "Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

.field public synthetic b:Lcom/perfectcorp/common/network/DownloadHandle;


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h;->b:Lcom/perfectcorp/common/network/DownloadHandle;

    invoke-interface {p0}, Lcom/perfectcorp/common/network/DownloadHandle;->cancel()Z

    :cond_0
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
