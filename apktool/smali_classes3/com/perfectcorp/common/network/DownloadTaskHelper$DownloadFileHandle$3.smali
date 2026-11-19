.class Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/com/google/common/base/Function<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic b:Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/io/File;

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$3;->b:Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;

    iget-object v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->g:Ljava/io/File;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->j:Lcom/perfectcorp/common/network/DownloadTask$Key;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->m:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/perfectcorp/common/downloader/UnzipHelper;->c(Ljava/io/File;Ljava/io/File;)V

    invoke-static {p1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->m:Ljava/io/File;

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method
