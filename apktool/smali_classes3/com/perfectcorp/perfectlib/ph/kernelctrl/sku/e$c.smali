.class abstract Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;->b:Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 6

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;->b:Z

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->c(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_temp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->a(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v3, v2}, Lcom/perfectcorp/common/downloader/UnzipHelper;->c(Ljava/io/File;Ljava/io/File;)V

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t rename src=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\" to dst=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-static {v2, v1}, Lcom/perfectcorp/common/utility/FileUtils;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    :cond_3
    invoke-static {v3}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    return-void

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    if-nez v0, :cond_4

    invoke-static {v2}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    :cond_4
    invoke-static {v3}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    throw p0
.end method

.method public c()Z
    .locals 8

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$c;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->a(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x3

    const-string v4, "[isFileReady] downloadFile="

    const-string v5, "SkuDownloadFileHandlers"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e$b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v6, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/hash/Hashing;->b()Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;

    move-result-object v2

    invoke-static {v7}, Lcom/perfectcorp/thirdparty/com/google/common/io/Files;->a(Ljava/io/File;)Lcom/perfectcorp/thirdparty/com/google/common/io/ByteSource;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/perfectcorp/thirdparty/com/google/common/io/ByteSource;->a(Lcom/perfectcorp/thirdparty/com/google/common/hash/HashFunction;)Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/hash/HashCode;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    const-string v7, "SkuDownloader"

    invoke-static {v7, v6, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isFileExisting=true, isValidMD5="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v5, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v2, "MD5 check failed"

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isFileExisting=false"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v5, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v1

    :catchall_1
    invoke-static {v0}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    return v1
.end method

.method public abstract d()Ljava/lang/String;
.end method
