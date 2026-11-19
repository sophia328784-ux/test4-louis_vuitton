.class Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;
.super Lcom/perfectcorp/common/network/BaseDownloadHandle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;,
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;
    }
.end annotation


# static fields
.field public static final z:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

.field public final f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public final g:Lcom/perfectcorp/common/network/DownloadTask$Key;

.field public final h:Lcom/perfectcorp/common/network/DownloadStateMonitor;

.field public final i:Ljava/net/URI;

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public final n:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final o:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final p:Z

.field public final q:Ljava/util/Set;

.field public final r:Ljava/io/File;

.field public final s:Z

.field public final t:Z

.field public final u:Ljava/lang/Object;

.field public v:Z

.field public volatile w:Lcom/perfectcorp/common/network/DownloadTask;

.field public volatile x:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

.field public final y:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DownloadMakeupHandle"

    invoke-static {v0}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;)V
    .locals 2

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->f:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/common/network/BaseDownloadHandle;-><init>(Lcom/perfectcorp/common/network/DownloadTask$Key;Ljava/io/File;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->u:Ljava/lang/Object;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->y:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->g:Lcom/perfectcorp/common/network/DownloadTask$Key;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->e:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->h:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->r:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    if-eq v0, v1, :cond_1

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->i:Ljava/net/URI;

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->g:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->j:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->h:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->k:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->i:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->l:Z

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->j:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->m:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->n:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->l:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->o:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->b:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->p:Z

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->m:Ljava/util/Set;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->q:Ljava/util/Set;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->p:Ljava/io/File;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->r:Ljava/io/File;

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->n:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->s:Z

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->o:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->t:Z

    return-void

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->r:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    :cond_1
    const-string p0, "Didn\'t provide metadata, or uri for download"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->q:Ljava/util/Set;

    if-eqz p0, :cond_2

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preload look lack of fun sticker item id="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " look guid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadMakeupHandle"

    invoke-static {p1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/FunStickerNotFoundException;

    const-string p1, "\" for look \""

    const-string v2, "\""

    const-string v3, "no fun sticker \""

    invoke-static {v3, v0, p1, v1, v2}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/exceptions/FunStickerNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/common/guava/FluentFuture;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    new-instance p3, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;

    invoke-direct {p3}, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;-><init>()V

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, p3, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->a:Ljava/net/URI;

    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p0, p3, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->b:Ljava/io/File;

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors;->a:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object p0, p3, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->g:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/DownloadPriority;->a()I

    move-result p0

    iput p0, p3, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->d:I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->a(Lcom/perfectcorp/common/network/NetworkTaskManager;)Lcom/perfectcorp/common/network/DownloadHandle;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/perfectcorp/common/network/BaseDownloadHandle;

    invoke-virtual {p1}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    new-instance p3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p1, p3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    iput-object p0, p3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/h;->b:Lcom/perfectcorp/common/network/DownloadHandle;

    sget-object p0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p1, p3, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    invoke-static {p1}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;

    const/4 p3, 0x4

    invoke-direct {p1, p2, p3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/guava/FluentFuture;->b(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()D
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->y:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public final cancel()Z
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->v:Z

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->cancel()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;
    .locals 6

    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->v:Ljava/util/HashSet;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->y:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    if-ltz v1, :cond_0

    iput v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->a:I

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/b0;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Ljava/util/Collection;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "skuAmount can not be negative!"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 10

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c;->makeup:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a;->eye_contact:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a;->patterns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$b;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$a$b;->pattern:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->c(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->d(Lcom/perfectcorp/perfectlib/ph/template/idc/e;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_3
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    invoke-direct {p2, p1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;-><init>(Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Ljava/io/File;)V

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->t:Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-boolean v3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->s:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "LookHandler is null. SDK might be released."

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    new-instance v7, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->o:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v3, v6, v8, v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->c(Ljava/util/Collection;Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    move-result-object v3

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/r;

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/r;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;I)V

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/r;

    const/4 v9, 0x3

    invoke-direct {v8, v7, v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/r;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;I)V

    new-instance v9, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v9, v6, v8}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v3, v9}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    sget-object v3, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v3, v9}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v5}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_8
    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->u:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    new-instance v7, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->o:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-interface {v3, v6, v8, v9}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a(Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object v3

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/v;

    invoke-direct {v6, v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/v;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;)V

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/r;

    const/4 v9, 0x4

    invoke-direct {v8, v7, v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/r;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;I)V

    new-instance v9, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v9, v8, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v3, v9}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    sget-object v3, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/LookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v3, v9}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-static {v5}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_a
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->j:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->k:Ljava/lang/String;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->o:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v5, v1, v3, v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$b;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/template/m;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    iget-object v6, v3, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->k:Ljava/lang/String;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ph/template/m;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->o:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v5, v1, v3, v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz p2, :cond_11

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {v8, v7, v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;->a(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/a;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;

    move-result-object v7

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/NetworkTaskManagerHolder;->a()Lcom/perfectcorp/common/network/NetworkTaskManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/perfectcorp/common/network/DownloadTaskHelper$FileDownloader;->a(Lcom/perfectcorp/common/network/NetworkTaskManager;)Lcom/perfectcorp/common/network/DownloadHandle;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/common/network/BaseDownloadHandle;

    invoke-virtual {v7}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    move-result-object v7

    invoke-static {v7}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v7

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d0;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d0;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/perfectcorp/common/guava/FluentFuture;->b(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->d(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;

    const/4 v5, 0x1

    invoke-direct {v2, p2, p1, v3, v5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/t;-><init>(Ljava/lang/Object;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/common/guava/FluentFuture;->b(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->y:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ltz v1, :cond_13

    iput v1, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->b:I

    new-instance p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g;

    invoke-direct {p2, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    sget-object v3, Lcom/perfectcorp/common/concurrent/CallingThread;->MAIN:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v2, p2, v3}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_6

    :cond_12
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->d(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-static {p2}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p2

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/w;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/w;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V

    invoke-virtual {p2, v0}, Lcom/perfectcorp/common/guava/FluentFuture;->b(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    return-object p0

    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "innerFilesAmount can not be negative!"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->x:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/z;

    invoke-direct {v2, v0, p0, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/z;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->h:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public j(Lcom/perfectcorp/common/network/NetworkTaskManager;)V
    .locals 7

    iget-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->s:Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->p:Z

    if-eqz p1, :cond_0

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;

    invoke-direct {v4, p0, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v4}, Lcom/perfectcorp/common/guava/FluentFuture;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/f0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {p1, v4, v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->i(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;

    invoke-direct {v3, p0, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Lcom/perfectcorp/common/guava/FluentFuture;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;

    invoke-direct {v3, p0, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Lcom/perfectcorp/common/guava/FluentFuture;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->r:Ljava/io/File;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v4

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;

    invoke-direct {v5, p0, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Lcom/perfectcorp/common/guava/FluentFuture;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v4

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;

    invoke-direct {v5, p0, p1, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;ZI)V

    invoke-virtual {v4, v5}, Lcom/perfectcorp/common/guava/FluentFuture;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v4

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/n;-><init>(Ljava/lang/Object;I)V

    iget-object v4, v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {v4, v5, v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->i(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v3

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;

    invoke-direct {v4, p0, p1, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;ZI)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/common/guava/FluentFuture;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v3

    new-instance v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;

    invoke-direct {v4, p0, p1, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/g0;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;ZI)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/common/guava/FluentFuture;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object v0

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/o;

    invoke-direct {v3, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/o;-><init>(Z)V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/common/guava/FluentFuture;->b(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    :goto_1
    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;

    invoke-direct {v0, p0, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/common/guava/FluentFuture;->b(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/w;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/p$a;->n:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {p1, v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setFuture(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method
