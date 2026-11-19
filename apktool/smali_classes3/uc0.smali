.class public final synthetic Luc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 17
    iput p1, p0, Luc0;->b:I

    iput-object p2, p0, Luc0;->d:Ljava/lang/Object;

    iput-boolean p6, p0, Luc0;->c:Z

    iput-object p3, p0, Luc0;->e:Ljava/lang/Object;

    iput-object p4, p0, Luc0;->f:Ljava/lang/Object;

    iput-object p5, p0, Luc0;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Luc0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc0;->d:Ljava/lang/Object;

    iput-object p2, p0, Luc0;->e:Ljava/lang/Object;

    iput-object p3, p0, Luc0;->f:Ljava/lang/Object;

    iput-object p4, p0, Luc0;->g:Ljava/lang/Object;

    iput-boolean p5, p0, Luc0;->c:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Luc0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Luc0;->e:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v1, p0, Luc0;->f:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-object v1, p0, Luc0;->g:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/io/IOException;

    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget v3, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a:I

    iget-object v4, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-boolean v8, p0, Luc0;->c:Z

    invoke-interface/range {v2 .. v8}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->W(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Luc0;->b:I

    iget-object v1, p0, Luc0;->g:Ljava/lang/Object;

    iget-object v2, p0, Luc0;->f:Ljava/lang/Object;

    iget-object v3, p0, Luc0;->e:Ljava/lang/Object;

    iget-boolean v4, p0, Luc0;->c:Z

    iget-object p0, p0, Luc0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast v3, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    check-cast p1, Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    invoke-direct {v8}, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;-><init>()V

    iput-object v5, v8, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->a:Ljava/lang/String;

    iput-object v7, v8, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->c:Ljava/lang/String;

    sget-object v7, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;->SKIN_CARE_3:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    iput-object v7, v8, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->d:Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageDao$Type;

    invoke-interface {v3, v5, v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Lsw0;

    invoke-direct {v7, v5, p0, v6}, Lsw0;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v6, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v6, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v6, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v2, Lvw0;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lvw0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;I)V

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    new-instance v3, Lhy0;

    invoke-direct {v3, v2, v0, v1, v6}, Lhy0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/Object;I)V

    invoke-virtual {p0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->doOnNext(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->ignoreElements()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->j(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/PerfectEffect;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v2, Lcom/perfectcorp/perfectlib/ShadeFinderData;

    check-cast v1, Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;

    check-cast p1, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;->a()Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->t(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "[getRecommendedResult] enabled SKU items = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    const-string v6, "ShadeFinderRecommendationHandler"

    invoke-static {v5, v6, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/NoShadeFinderProductException;

    const-string p1, "V4ItemGuids is empty."

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/exceptions/NoShadeFinderProductException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->g(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/l;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance v0, La8;

    const/16 v5, 0xd

    invoke-direct {v0, v5}, La8;-><init>(I)V

    new-instance v5, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v5, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v5, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    sget-object v5, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->getInstance()Lcom/perfectcorp/perfectlib/SkuHandler;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/perfectcorp/perfectlib/u1;

    invoke-direct {v5, v4, p0, v3, p1}, Lcom/perfectcorp/perfectlib/u1;-><init>(ZLcom/perfectcorp/perfectlib/PerfectEffect;Ljava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v0, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lcom/perfectcorp/perfectlib/y;

    const/16 v0, 0x19

    invoke-direct {p1, v0}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/z0;

    const/4 p1, 0x5

    invoke-direct {p0, v2, p1}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/k1;

    invoke-direct {p0, v4, v1}, Lcom/perfectcorp/perfectlib/k1;-><init>(ZLcom/perfectcorp/perfectlib/ShadeFinderDeltaE;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    move-object p0, v0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
