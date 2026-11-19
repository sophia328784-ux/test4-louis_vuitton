.class public final synthetic Lpa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/LookHandler;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/LookHandler;Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;ILjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lpa0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa0;->c:Lcom/perfectcorp/perfectlib/LookHandler;

    iput-object p2, p0, Lpa0;->f:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    iput p3, p0, Lpa0;->h:I

    iput-object p4, p0, Lpa0;->i:Ljava/lang/Object;

    iput-object p5, p0, Lpa0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p6, p0, Lpa0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, Lpa0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p8, p0, Lpa0;->j:Ljava/io/Serializable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/LookHandler;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 1

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lpa0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa0;->c:Lcom/perfectcorp/perfectlib/LookHandler;

    iput-object p2, p0, Lpa0;->i:Ljava/lang/Object;

    iput-object p3, p0, Lpa0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p4, p0, Lpa0;->j:Ljava/io/Serializable;

    iput-object p5, p0, Lpa0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p6, p0, Lpa0;->f:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    iput-object p7, p0, Lpa0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p8, p0, Lpa0;->h:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lpa0;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lpa0;->j:Ljava/io/Serializable;

    iget-object v3, p0, Lpa0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v4, p0, Lpa0;->i:Ljava/lang/Object;

    iget-object v5, p0, Lpa0;->c:Lcom/perfectcorp/perfectlib/LookHandler;

    packed-switch v0, :pswitch_data_0

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/camera/panel/a;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;

    move-result-object v0

    sget-object v2, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->j:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/LookHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->l:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    sget-object v2, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    const-string v3, "priority can\'t be null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->b()Lcom/perfectcorp/common/network/DownloadHandle;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/common/network/BaseDownloadHandle;

    invoke-virtual {v0, v1, v1}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->d(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v2, Lb8;

    const/4 v3, 0x2

    invoke-direct {v2, v4, v3}, Lb8;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v3, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v6, Lta0;

    const/4 v12, 0x1

    iget-object v8, p0, Lpa0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, p0, Lpa0;->f:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    iget-object v10, p0, Lpa0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v11, p0, Lpa0;->h:I

    invoke-direct/range {v6 .. v12}, Lta0;-><init>(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;

    invoke-direct {p0, v3, v6, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast v4, Ljava/util/List;

    iget-object v6, p0, Lpa0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v9, v2

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lt6;

    const/4 v2, 0x5

    iget-object v10, p0, Lpa0;->f:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    iget v12, p0, Lpa0;->h:I

    invoke-direct {v0, v10, v12, v2}, Lt6;-><init>(Ljava/lang/Object;II)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v11, p0, Lpa0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v5, v4}, Lcom/perfectcorp/perfectlib/LookHandler;->f(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/LookInfo;

    invoke-virtual {v6, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11, v12}, Lcom/perfectcorp/perfectlib/LookHandler;->b(Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "Query local look failed. guid="

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "LookHandler"

    invoke-static {v11, v7, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/LookHandler;->a(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    new-instance v7, Lta0;

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v13}, Lta0;-><init>(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;

    invoke-direct {v0, p0, v7, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Ljava/lang/Object;)V

    new-instance p0, Lua0;

    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lua0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    move-object p0, v1

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
