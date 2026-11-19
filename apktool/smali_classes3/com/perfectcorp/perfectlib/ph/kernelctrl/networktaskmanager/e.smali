.class final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function<",
        "Ljava/util/List<",
        "Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;",
        ">;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
        "Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;",
        ">;>;"
    }
.end annotation


# instance fields
.field public synthetic b:Lcom/perfectcorp/common/network/NetworkTaskManager;

.field public synthetic c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->v(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;

    move-result-object v6

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const-string v8, "priority can\'t be null"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v7, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-boolean v7, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->s:Z

    iput-boolean v7, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->n:Z

    new-instance v7, Lcom/perfectcorp/common/network/DownloadKey$Guid;

    invoke-direct {v7, v3}, Lcom/perfectcorp/common/network/DownloadKey$Guid;-><init>(Ljava/lang/String;)V

    iput-object v7, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors;->a:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    iput-object v7, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->e:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->g:Z

    iget-boolean v8, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->G:Z

    iput-boolean v8, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->h:Z

    iget-boolean v8, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->H:Z

    iput-boolean v8, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->i:Z

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->m:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v8, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->j:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->n:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v8, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-boolean v8, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->D:Z

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->E:Ljava/lang/String;

    invoke-static {v8, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v4, v7

    :goto_2
    iput-boolean v4, v6, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->b:Z

    invoke-direct {v5, v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;)V

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;->b:Lcom/perfectcorp/common/network/NetworkTaskManager;

    invoke-virtual {v5, v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->j(Lcom/perfectcorp/common/network/NetworkTaskManager;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->I:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    sget-object v4, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v5, v3, v4}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->o:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d0;

    invoke-direct {v2, v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d0;-><init>(I)V

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->a(Ljava/util/List;)V

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;

    invoke-direct {v1, p0, p1, v4}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string p0, "sources is null"

    invoke-static {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab;-><init>(Ljava/lang/Iterable;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string p1, "Future had been cancelled."

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
