.class final Lcom/perfectcorp/common/network/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

.field public synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

.field public synthetic c:Lcom/perfectcorp/common/network/BaseDownloadHandle;


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/common/network/a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    iget-object p0, p0, Lcom/perfectcorp/common/network/a;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v1, "Download task had been canceled."

    invoke-direct {v0, v1, p1}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lcom/perfectcorp/common/network/a;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    new-instance v0, Lcom/perfectcorp/common/network/BaseDownloadHandle$a;

    iget-object p0, p0, Lcom/perfectcorp/common/network/a;->c:Lcom/perfectcorp/common/network/BaseDownloadHandle;

    iget-object v1, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Key;Ljava/io/File;)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z

    return-void
.end method
