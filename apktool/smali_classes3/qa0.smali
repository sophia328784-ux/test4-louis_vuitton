.class public final synthetic Lqa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/LookHandler;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/LookHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqa0;->b:Lcom/perfectcorp/perfectlib/LookHandler;

    iput-object p2, p0, Lqa0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p3, p0, Lqa0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p4, p0, Lqa0;->e:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    iput-object p5, p0, Lqa0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p6, p0, Lqa0;->g:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v5, p0, Lqa0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lqa0;->e:Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    iget-object v7, p0, Lqa0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v8, p0, Lqa0;->g:I

    move-object v2, p1

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v3, p0, Lqa0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    :try_start_0
    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->v(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lpa0;

    iget-object v1, p0, Lqa0;->b:Lcom/perfectcorp/perfectlib/LookHandler;

    invoke-direct/range {v0 .. v8}, Lpa0;-><init>(Lcom/perfectcorp/perfectlib/LookHandler;Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lv40;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lv40;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid look metadata. guid="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LookHandler"

    invoke-static {v0, p1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/perfectcorp/perfectlib/LookHandler;->b(Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0
.end method
