.class Lcom/perfectcorp/common/network/DownloadTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic a:Lcom/perfectcorp/common/network/DownloadTask;


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTask$1;->a:Lcom/perfectcorp/common/network/DownloadTask;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->c()V
    :try_end_0
    .catch Lcom/perfectcorp/common/network/j$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/perfectcorp/common/network/j$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/perfectcorp/common/network/DownloadTask;->a(Lcom/perfectcorp/common/network/DownloadTask;)Lcom/perfectcorp/common/network/DownloadStateMonitor;

    move-result-object p0

    invoke-interface {p0}, Lcom/perfectcorp/common/network/DownloadStateMonitor;->a()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    invoke-static {p0}, Lcom/perfectcorp/common/network/DownloadTask;->a(Lcom/perfectcorp/common/network/DownloadTask;)Lcom/perfectcorp/common/network/DownloadStateMonitor;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lcom/perfectcorp/common/network/DownloadStateMonitor;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p0}, Lcom/perfectcorp/common/network/DownloadTask;->a(Lcom/perfectcorp/common/network/DownloadTask;)Lcom/perfectcorp/common/network/DownloadStateMonitor;

    move-result-object p0

    invoke-interface {p0}, Lcom/perfectcorp/common/network/DownloadStateMonitor;->a()V

    goto :goto_1

    :catch_1
    :try_start_2
    invoke-static {p0}, Lcom/perfectcorp/common/network/DownloadTask;->a(Lcom/perfectcorp/common/network/DownloadTask;)Lcom/perfectcorp/common/network/DownloadStateMonitor;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {p0}, Lcom/perfectcorp/common/network/DownloadTask;->a(Lcom/perfectcorp/common/network/DownloadTask;)Lcom/perfectcorp/common/network/DownloadStateMonitor;

    move-result-object p0

    invoke-interface {p0}, Lcom/perfectcorp/common/network/DownloadStateMonitor;->a()V

    throw p1
.end method
