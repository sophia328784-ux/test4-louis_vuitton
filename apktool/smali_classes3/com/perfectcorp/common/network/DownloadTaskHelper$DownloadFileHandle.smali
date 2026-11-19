.class final Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;
.super Lcom/perfectcorp/common/network/BaseDownloadHandle;


# instance fields
.field public final e:Ljava/net/URI;

.field public final f:Ljava/io/File;

.field public final g:Ljava/io/File;

.field public final h:I

.field public final i:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public final j:Lcom/perfectcorp/common/network/DownloadTask$Key;

.field public final k:Lcom/perfectcorp/common/network/DownloadStateMonitor;

.field public volatile l:Lcom/perfectcorp/common/network/DownloadTask;

.field public m:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;)V
    .locals 2

    iget-object v0, p1, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->f:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iget-object v1, p1, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->c:Ljava/io/File;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->b:Ljava/io/File;

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/common/network/BaseDownloadHandle;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Key;Ljava/io/File;)V

    iget-object v0, p1, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->a:Ljava/net/URI;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->e:Ljava/net/URI;

    iget-object v0, p1, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->b:Ljava/io/File;

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->f:Ljava/io/File;

    iget-object v0, p1, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->c:Ljava/io/File;

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->g:Ljava/io/File;

    iget v0, p1, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->d:I

    iput v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->h:I

    iget-object v0, p1, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->i:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v0, p1, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->f:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->j:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iget-object p1, p1, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->g:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object p1, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->k:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    return-void
.end method


# virtual methods
.method public final c()D
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->l:Lcom/perfectcorp/common/network/DownloadTask;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->l:Lcom/perfectcorp/common/network/DownloadTask;

    invoke-virtual {p0}, Lcom/perfectcorp/common/network/DownloadTask;->getProgress()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
