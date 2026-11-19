.class public final Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/net/URI;

.field public b:Ljava/io/File;

.field public c:Ljava/io/File;

.field public d:I

.field public e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public f:Lcom/perfectcorp/common/network/DownloadTask$Key;

.field public g:Lcom/perfectcorp/common/network/DownloadStateMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->d:I

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->e:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    sget-object v0, Lcom/perfectcorp/common/network/DownloadKey;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->f:Lcom/perfectcorp/common/network/DownloadTask$Key;

    sget-object v0, Lcom/perfectcorp/common/network/DownloadStateMonitor;->a:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object v0, p0, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->g:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/common/network/NetworkTaskManager;)Lcom/perfectcorp/common/network/DownloadHandle;
    .locals 4

    new-instance v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;

    invoke-direct {v0, p0}, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;-><init>(Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;)V

    iget-object p0, v0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/perfectcorp/common/network/DownloadTask$Builder;

    iget-object v2, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->e:Ljava/net/URI;

    iget-object v3, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->f:Ljava/io/File;

    invoke-direct {v1, v2, v3}, Lcom/perfectcorp/common/network/DownloadTask$Builder;-><init>(Ljava/net/URI;Ljava/io/File;)V

    iget-object v2, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->i:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const-string v3, "priority can\'t be null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v2, v1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v2, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->j:Lcom/perfectcorp/common/network/DownloadTask$Key;

    const-string v3, "key can\'t be null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v2, v1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->e:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iget-object v2, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->k:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object v2, v1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->f:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iget v2, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->h:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    iput v2, v1, Lcom/perfectcorp/common/network/DownloadTask$Builder;->c:I

    :cond_0
    new-instance v2, Lcom/perfectcorp/common/network/DownloadTask;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/perfectcorp/common/network/DownloadTask;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Builder;B)V

    iput-object v2, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->l:Lcom/perfectcorp/common/network/DownloadTask;

    iget-object v1, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->l:Lcom/perfectcorp/common/network/DownloadTask;

    new-instance v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$4;->a:Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/common/network/DownloadTask;->addProgressCallback(Lcom/perfectcorp/common/network/ProgressCallback;)V

    iget-object v1, v0, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;->l:Lcom/perfectcorp/common/network/DownloadTask;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/common/network/NetworkTaskManager;->a(Lcom/perfectcorp/common/network/DownloadTask;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$3;->b:Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/common/guava/FluentFuture;->b(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$2;->b:Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/common/guava/FluentFuture;->b(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle$1;->a:Lcom/perfectcorp/common/network/DownloadTaskHelper$DownloadFileHandle;

    sget-object v2, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {p1, v1, v2}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    invoke-static {p1}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setFuture(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Z

    return-object v0
.end method
