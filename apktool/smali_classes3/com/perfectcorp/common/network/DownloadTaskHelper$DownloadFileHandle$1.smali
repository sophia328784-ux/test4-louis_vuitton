.class Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$1;
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
.field public synthetic a:Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$1;->a:Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;

    iget-object p1, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->f:Ljava/io/File;

    invoke-static {p1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->m:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$1;->a:Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->m:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    :cond_0
    return-void
.end method
