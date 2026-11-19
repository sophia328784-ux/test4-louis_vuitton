.class public final synthetic Lpy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f:D

.field public final synthetic g:Lcom/perfectcorp/common/network/ProgressCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;DLcom/perfectcorp/common/network/ProgressCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy0;->b:Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    iput-object p2, p0, Lpy0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p3, p0, Lpy0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lpy0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-wide p5, p0, Lpy0;->f:D

    iput-object p7, p0, Lpy0;->g:Lcom/perfectcorp/common/network/ProgressCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v1, p0, Lpy0;->b:Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    check-cast v0, Ljava/util/Collection;

    iget-object v3, p0, Lpy0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v0, v2, v3}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->a(Ljava/util/Collection;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lo2;

    const/16 v3, 0x12

    invoke-direct {v2, v1, v3}, Lo2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->doOnError(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lyw0;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lyw0;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v7

    new-instance v0, Luy0;

    iget-object v2, p0, Lpy0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lpy0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-wide v4, p0, Lpy0;->f:D

    iget-object v6, p0, Lpy0;->g:Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-direct/range {v0 .. v6}, Luy0;-><init>(Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;DLcom/perfectcorp/common/network/ProgressCallback;)V

    invoke-virtual {v7, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->doOnNext(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toFuture()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method
