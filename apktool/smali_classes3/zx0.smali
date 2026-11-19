.class public final synthetic Lzx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:D

.field public final synthetic f:Lcom/perfectcorp/common/network/ProgressCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;DLcom/perfectcorp/common/network/ProgressCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzx0;->b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p2, p0, Lzx0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lzx0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-wide p4, p0, Lzx0;->e:D

    iput-object p6, p0, Lzx0;->f:Lcom/perfectcorp/common/network/ProgressCallback;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;

    new-instance v0, Lpy0;

    iget-object v2, p0, Lzx0;->b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v3, p0, Lzx0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lzx0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-wide v5, p0, Lzx0;->e:D

    iget-object v7, p0, Lzx0;->f:Lcom/perfectcorp/common/network/ProgressCallback;

    invoke-direct/range {v0 .. v7}, Lpy0;-><init>(Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper$DownloadComponent;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;DLcom/perfectcorp/common/network/ProgressCallback;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
