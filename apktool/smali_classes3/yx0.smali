.class public final synthetic Lyx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:I

.field public final synthetic f:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic h:D


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/common/network/ProgressCallback;DLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lyx0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyx0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput p2, p0, Lyx0;->e:I

    iput-object p3, p0, Lyx0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lyx0;->f:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-wide p5, p0, Lyx0;->h:D

    iput-object p7, p0, Lyx0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;D)V
    .locals 1

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lyx0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyx0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p2, p0, Lyx0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lyx0;->e:I

    iput-object p4, p0, Lyx0;->f:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-object p5, p0, Lyx0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-wide p6, p0, Lyx0;->h:D

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lyx0;->b:I

    iget-object v2, v0, Lyx0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    const-string v2, "[syncServerByProtocol] Download success"

    const/4 v3, 0x3

    const-string v4, "SkuHandler"

    invoke-static {v3, v4, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lyx0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, v0, Lyx0;->e:I

    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    new-instance v5, Lmy0;

    iget-object v6, v0, Lyx0;->f:Lcom/perfectcorp/common/network/ProgressCallback;

    iget-object v8, v0, Lyx0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-wide v9, v0, Lyx0;->h:D

    invoke-direct/range {v5 .. v10}, Lmy0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;D)V

    invoke-static {v5}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-object v1

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->j:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;

    invoke-interface {v6}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lua0;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Lua0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v3

    new-instance v8, Ljy0;

    iget v10, v0, Lyx0;->e:I

    iget-object v12, v0, Lyx0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v13, v0, Lyx0;->f:Lcom/perfectcorp/common/network/ProgressCallback;

    iget-wide v14, v0, Lyx0;->h:D

    iget-object v0, v0, Lyx0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    invoke-direct/range {v8 .. v16}, Ljy0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;IILjava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/common/network/ProgressCallback;DLjava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v3, v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->doOnNext(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v3, Lna0;

    const/4 v4, 0x7

    invoke-direct {v3, v2, v1, v4}, Lna0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
