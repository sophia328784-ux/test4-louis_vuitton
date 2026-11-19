.class public final synthetic Ly7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly7;->b:Ljava/lang/String;

    iput-object p2, p0, Ly7;->c:Ljava/lang/Object;

    iput-object p3, p0, Ly7;->d:Ljava/lang/Object;

    iput-object p4, p0, Ly7;->e:Ljava/lang/Object;

    iput-object p5, p0, Ly7;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly7;->c:Ljava/lang/Object;

    iput-object p2, p0, Ly7;->d:Ljava/lang/Object;

    iput-object p3, p0, Ly7;->b:Ljava/lang/String;

    iput-object p4, p0, Ly7;->e:Ljava/lang/Object;

    iput-object p5, p0, Ly7;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Ly7;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object v1, p0, Ly7;->d:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-object v2, p0, Ly7;->e:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v3, p0, Ly7;->f:Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/common/network/ProgressCallback;

    check-cast p1, Ljava/util/List;

    sget-object v4, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[downloadSkuByProtocolMethod] metadataList.size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const-string v6, "ApplyEffectUtility"

    invoke-static {v5, v6, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ly7;->b:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x0

    invoke-static {p1, v0, v4, v4}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->i(Ljava/lang/Iterable;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;Lcom/perfectcorp/perfectlib/x;)Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    move-result-object p1

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    int-to-double v7, v4

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v4, Ly81;

    const/4 v9, 0x2

    invoke-direct {v4, p0, v1, v2, v9}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v2, Le8;

    invoke-direct {v2, v3, v7, v8}, Le8;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;D)V

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Lp3;

    invoke-direct {v1, p0, p1, v5}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0
.end method

.method public i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Ly7;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ly7;->d:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroidx/work/Tracer;

    iget-object v1, p0, Ly7;->e:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Ly7;->f:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lgd;

    iget-object v4, p0, Ly7;->b:Ljava/lang/String;

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lgd;-><init>(Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
