.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/perfectcorp/common/network/DownloadTask$Key;

.field public b:Z

.field public c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

.field public d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public e:Lcom/perfectcorp/common/network/DownloadStateMonitor;

.field public f:Ljava/io/File;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public l:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public m:Ljava/util/Set;

.field public n:Z

.field public o:Z

.field public p:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/common/network/DownloadKey;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->r:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors;->a:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->e:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->g:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->h:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->i:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->j:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    sget-object v0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->FILE:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->l:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-void
.end method

.method public static a(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;-><init>()V

    const-string v1, "metadata can\'t be null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->c(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->f:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/perfectcorp/common/network/DownloadHandle;
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->p:Ljava/io/File;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->n:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->b:Z

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;)V

    :goto_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->j(Lcom/perfectcorp/common/network/NetworkTaskManager;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->l:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->d:Z

    if-eqz v2, :cond_4

    goto :goto_5

    :cond_4
    const-string v2, "DownloadTaskCancelable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[addDownloadHandle] add "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " handles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->d:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iget-boolean v3, v3, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->c:Z

    :goto_2
    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c:Ljava/util/HashSet;

    invoke-interface {v3, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_6
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/common/network/DownloadHandle;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v4, Let;

    const/4 v5, 0x5

    invoke-direct {v4, v2, v5}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    goto :goto_4

    :cond_7
    :goto_5
    return-object v0

    :goto_6
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
