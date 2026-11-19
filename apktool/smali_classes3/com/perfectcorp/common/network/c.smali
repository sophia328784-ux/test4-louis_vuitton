.class final Lcom/perfectcorp/common/network/c;
.super Lcom/perfectcorp/common/guava/DefaultFutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/common/guava/DefaultFutureCallback<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;

.field public final synthetic b:Lcom/perfectcorp/common/network/BaseDownloadHandle;

.field public final synthetic c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;Lcom/perfectcorp/common/network/BaseDownloadHandle;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/common/network/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;

    iput-object p2, p0, Lcom/perfectcorp/common/network/c;->b:Lcom/perfectcorp/common/network/BaseDownloadHandle;

    iput-object p3, p0, Lcom/perfectcorp/common/network/c;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Lcom/perfectcorp/common/guava/DefaultFutureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/common/network/c;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    iget-object p0, p0, Lcom/perfectcorp/common/network/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v1, "Download task had been canceled."

    invoke-direct {v0, v1, p1}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    new-instance p1, Lcom/perfectcorp/common/network/BaseDownloadHandle$b;

    iget-object v0, p0, Lcom/perfectcorp/common/network/c;->b:Lcom/perfectcorp/common/network/BaseDownloadHandle;

    iget-object v1, v0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-object v0, v0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/perfectcorp/common/network/BaseDownloadHandle$b;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Key;DLjava/io/File;)V

    iget-object p0, p0, Lcom/perfectcorp/common/network/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/subjects/Subject;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onNext(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/e;->onComplete()V

    return-void
.end method
