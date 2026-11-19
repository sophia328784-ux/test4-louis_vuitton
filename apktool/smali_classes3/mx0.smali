.class public final synthetic Lmx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/SkuHandler;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic f:D

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/common/network/ProgressCallback;DLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx0;->b:Lcom/perfectcorp/perfectlib/SkuHandler;

    iput-object p2, p0, Lmx0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p3, p0, Lmx0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lmx0;->e:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-wide p5, p0, Lmx0;->f:D

    iput-object p7, p0, Lmx0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lmx0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    const-string v0, "[syncServerByProtocol] Start download SKUs"

    const/4 v2, 0x3

    const-string v3, "SkuHandler"

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lwx0;

    const/4 v3, 0x1

    iget-object v4, p0, Lmx0;->b:Lcom/perfectcorp/perfectlib/SkuHandler;

    invoke-direct {v0, v4, v1, p1, v3}, Lwx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/List;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lyx0;

    iget-object v3, p0, Lmx0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lmx0;->e:Lcom/perfectcorp/common/network/ProgressCallback;

    iget-wide v5, p0, Lmx0;->f:D

    iget-object v7, p0, Lmx0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct/range {v0 .. v7}, Lyx0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/common/network/ProgressCallback;DLjava/util/concurrent/atomic/AtomicInteger;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lyx0;

    move-object v8, v3

    move v3, v2

    move-object v2, v8

    move-wide v8, v5

    move-object v5, v7

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lyx0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;D)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->observeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
