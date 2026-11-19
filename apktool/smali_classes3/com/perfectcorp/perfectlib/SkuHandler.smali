.class public final Lcom/perfectcorp/perfectlib/SkuHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SkuHandler$ClearCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$DeleteSkuSetsCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;,
        Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetInfosWithGuidsCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$GetProductInfosWithGuidsCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$DeleteProductsCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$DownloadProductsCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetListCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$GetListCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;,
        Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateCallback;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/Object;

.field public static volatile g:Lcom/perfectcorp/perfectlib/SkuHandler;


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public final b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ljava/util/Map;

.field public volatile e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/SkuHandler;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->d:Ljava/util/Map;

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/disposables/c;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    return-void
.end method

.method public static clearAllCompletable()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;
    .locals 3

    sget-object v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/CacheCleaner;->e(Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v0

    new-instance v1, Lyw0;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lyw0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Le5;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Le5;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    return-object v0
.end method

.method public static d(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;
    .locals 2

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lyw0;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lyw0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->contains(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lpv0;

    invoke-direct {v0, v1}, Lpv0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/hc/preferences/SkuHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/perfectcorp/perfectlib/hc/preferences/SkuHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v2, "KEY_LIST_MESSAGE_DIGEST_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$b;

    const-string v3, "44.0"

    invoke-direct {v2, v0, v3, v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$b;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    new-instance v2, Lt7;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v3}, Lt7;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static f(Lcom/perfectcorp/perfectlib/ProductInfo;Z)Ljava/util/List;
    .locals 9

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/SkuHandler;->m(Ljava/lang/String;)Ljava/util/AbstractSet;

    move-result-object v1

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ProductInfo;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    const-string v6, "SkuHandler"

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v7, Lo7;

    const/4 v8, 0x7

    invoke-direct {v7, v3, v5, v8}, Lo7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7}, Lo7;->call()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "N/A"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v4

    const-string v5, "[createSkuInfos] query product mapping failed."

    invoke-static {v6, v5, v4}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move-object v7, v5

    :goto_1
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v4, "[createSkuInfos] Filter out SKU by product mask. skuGuid="

    const/4 v7, 0x3

    invoke-static {v7, v4, v5, v6}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, v7, v4}, Lcom/perfectcorp/perfectlib/SkuInfo;->a(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)Lcom/perfectcorp/perfectlib/SkuInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/perfectcorp/perfectlib/SkuHandler;
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/SkuHandler;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/perfectlib/SkuHandler;->g:Lcom/perfectcorp/perfectlib/SkuHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V
    .locals 5

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->getInstance()Lcom/perfectcorp/perfectlib/SkuHandler;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[cancelOnReleased] add cancelable \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\" to taskDisposables"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v1, Let;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[cancelOnReleased] cancelable \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" cancel directly"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    return-void
.end method

.method public static i(Ljava/util/List;Z)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2

    if-eqz p1, :cond_0

    new-instance p1, Lsa0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lsa0;-><init>(Ljava/util/List;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lc8;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lc8;-><init>(Ljava/util/List;I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lzy0;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lzy0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    .locals 3

    const-string v0, "SkuHandler"

    const-string v1, "[init] start"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/SkuHandler;->g:Lcom/perfectcorp/perfectlib/SkuHandler;

    if-nez v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/SkuHandler;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/perfectlib/SkuHandler;->g:Lcom/perfectcorp/perfectlib/SkuHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/perfectcorp/perfectlib/SkuHandler;

    invoke-direct {v1, p0}, Lcom/perfectcorp/perfectlib/SkuHandler;-><init>(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/SkuHandler;->g:Lcom/perfectcorp/perfectlib/SkuHandler;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    const-string p0, "SkuHandler"

    const-string v0, "[init] end"

    invoke-static {v2, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static m(Ljava/lang/String;)Ljava/util/AbstractSet;
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "productGuid"

    invoke-virtual {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "skuGuid"

    invoke-virtual {v0, v1, v3, v2, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    sget-object p0, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    check-cast p0, Ljava/util/AbstractSet;

    return-object p0
.end method

.method public static release()V
    .locals 3

    const-string v0, "SkuHandler"

    const-string v1, "[release] start"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/SkuHandler;->g:Lcom/perfectcorp/perfectlib/SkuHandler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/SkuHandler;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/perfectlib/SkuHandler;->g:Lcom/perfectcorp/perfectlib/SkuHandler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/perfectcorp/perfectlib/SkuHandler;->g:Lcom/perfectcorp/perfectlib/SkuHandler;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    const/4 v1, 0x0

    sput-object v1, Lcom/perfectcorp/perfectlib/SkuHandler;->g:Lcom/perfectcorp/perfectlib/SkuHandler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    const-string v0, "SkuHandler"

    const-string v1, "[release] end"

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;
    .locals 2

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/SkuHandler;->i(Ljava/util/List;Z)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lp7;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, Lp7;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lzy0;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lzy0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->onErrorReturn(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Ld20;

    invoke-direct {p1, p2}, Ld20;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lzy0;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lzy0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/util/List;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;
    .locals 16

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[syncServerInternal] start. skuTypes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "[syncServerByProtocol] start"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;-><init>()V

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps;->b(Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    move-result-object v7

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;-><init>()V

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps;->b(Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    move-result-object v8

    move-object/from16 v11, p0

    iget-object v2, v11, Lcom/perfectcorp/perfectlib/SkuHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v3, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->URL:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    if-ne v2, v3, :cond_0

    const-wide v2, 0x3fefe00000000000L    # 0.99609375

    :goto_0
    move-wide v13, v2

    goto :goto_1

    :cond_0
    const-wide v2, 0x3fee666666666666L    # 0.95

    goto :goto_0

    :goto_1
    new-instance v2, Lva0;

    move-object/from16 v12, p2

    invoke-direct {v2, v12, v1}, Lva0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v10, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v10}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v1

    new-instance v2, Ln7;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Ln7;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v1

    new-instance v2, Llx0;

    move-object/from16 v5, p3

    move-object v3, v12

    invoke-direct/range {v2 .. v9}, Llx0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/List;Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;Ljava/util/concurrent/atomic/AtomicInteger;)V

    move-object v3, v2

    move-object v2, v6

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v3

    const-string v4, "next is null"

    invoke-static {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a;

    invoke-direct {v4, v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v1

    new-instance v3, Lmx0;

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object v6, v0

    move-object v10, v9

    move-object v4, v11

    move-wide v8, v13

    invoke-direct/range {v3 .. v10}, Lmx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/common/network/ProgressCallback;DLjava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {v0, v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v10, Lnx0;

    move-object/from16 v11, p0

    move-object/from16 v15, p3

    invoke-direct/range {v10 .. v15}, Lnx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;DLcom/perfectcorp/common/network/ProgressCallback;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {v1, v0, v10}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->ignoreElements()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->a(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v3, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v0, Lox0;

    const/4 v1, 0x0

    invoke-direct {v0, v15, v2, v1}, Lox0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/ConcurrentHashMap;I)V

    invoke-virtual {v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v0

    new-instance v1, Ln7;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ln7;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/util/List;ZLcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;
    .locals 15

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[downloadProductsInternal] start. skuGUIDs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "SkuHandler"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "[downloadProductsByProtocol] start"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[downloadProductsByProtocol] skuGUIDs size="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", after filter duplicate element size="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v12

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v1, Lrx0;

    const/4 v2, 0x0

    move-object/from16 v11, p3

    invoke-direct {v1, v11, v6, v12, v2}, Lrx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move/from16 v3, p2

    invoke-static {v1, v3}, Lcom/perfectcorp/perfectlib/SkuHandler;->i(Ljava/util/List;Z)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    sget-object v4, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v7, Lyw0;

    const/16 v8, 0x11

    invoke-direct {v7, v8}, Lyw0;-><init>(I)V

    invoke-virtual {v1, v4, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    new-instance v4, Lta0;

    const/4 v10, 0x4

    move-object v8, v11

    move v9, v12

    move-object v7, v14

    invoke-direct/range {v4 .. v10}, Lta0;-><init>(Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/common/network/ProgressCallback;II)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v5, v1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v4, v5, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    const/16 v1, 0x1e

    invoke-virtual {v4, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->buffer(I)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    move-object v10, v6

    new-instance v6, Lix0;

    move-object v7, p0

    move-object/from16 v13, p4

    move-object v8, v0

    move v9, v3

    invoke-direct/range {v6 .. v14}, Lix0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Ljava/util/concurrent/ConcurrentHashMap;ZLjava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/common/network/ProgressCallback;ILcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {v1, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lsx0;

    invoke-direct {v0, v8, v14, v2}, Lsx0;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lsx0;

    const/4 v0, 0x1

    invoke-direct {p0, v8, v14, v0}, Lsx0;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Ljava/lang/Object;)V

    new-instance p0, Ln7;

    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Ln7;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    return-object v1
.end method

.method public final checkNeedToUpdate(Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateCallback;)V
    .locals 4

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateCallback;

    const-string v0, "[checkNeedToUpdate] start"

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, La8;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, La8;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lzy0;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lzy0;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v3, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v1, v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Laz0;

    invoke-direct {v1, p1, v2}, Laz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateCallback;I)V

    new-instance v2, Laz0;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Laz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final checkNeedToUpdateByEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateCallback;)V
    .locals 4

    const-string v0, "effect can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateCallback;

    const/4 v0, 0x3

    const-string v1, "SkuHandler"

    const-string v2, "[checkNeedToUpdateByEffect] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo7;

    const/16 v3, 0x9

    invoke-direct {v2, p1, v1, v3}, Lo7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/z0;

    const/4 v3, 0x7

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v1, Laz0;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v2}, Laz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateCallback;I)V

    new-instance v2, Laz0;

    invoke-direct {v2, p2, v0}, Laz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final checkNeedToUpdateWithGuids(Ljava/util/List;Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "skuGUIDs can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[checkNeedToUpdateWithGuids] start, size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v2, v2, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    invoke-static {p1, v2}, Lcom/perfectcorp/perfectlib/SkuHandler;->i(Ljava/util/List;Z)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v2, Lf8;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lf8;-><init>(Ljava/util/concurrent/ConcurrentHashMap;I)V

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v2, Lzy0;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lzy0;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v4, p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lzy0;

    invoke-direct {p1, v3}, Lzy0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {v2, v4, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lcom/perfectcorp/perfectlib/a0;

    const/16 v3, 0x8

    invoke-direct {p1, v1, v0, v3}, Lcom/perfectcorp/perfectlib/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v1, Lfy0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, v2}, Lfy0;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;I)V

    new-instance v0, Liy0;

    invoke-direct {v0, p2, v2}, Liy0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final checkNeedToUpdateWithSkuSetGuids(Ljava/util/List;Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "skuSetGUIDs can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[checkNeedToUpdateWithSkuSetGuids] start, size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->buffer(I)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lyw0;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Lyw0;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v4, Lyw0;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Lyw0;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v2

    new-instance v3, Ly81;

    const/16 v4, 0x12

    invoke-direct {v3, p1, v0, v1, v4}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p1, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v1, Lfy0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lfy0;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;I)V

    new-instance v0, Liy0;

    invoke-direct {v0, p2, v2}, Liy0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateWithGuidsCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final clearAll(Lcom/perfectcorp/perfectlib/SkuHandler$ClearCallback;)V
    .locals 3

    const-string v0, "clearCallback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$ClearCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/SkuHandler$ClearCallback;

    const-string v0, "[clearAll] start"

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->clearAllCompletable()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lxw;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lxw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p1

    new-instance v0, Lbz0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbz0;-><init>(I)V

    new-instance v1, Lpv0;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lpv0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v2, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final deleteProducts(Ljava/util/List;Lcom/perfectcorp/perfectlib/SkuHandler$DeleteProductsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/SkuHandler$DeleteProductsCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "productGUIDs can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$DeleteProductsCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/SkuHandler$DeleteProductsCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[deleteProducts] start, size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lxw;

    const/16 v1, 0xa

    invoke-direct {v0, p2, v1}, Lxw;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;

    invoke-direct {p2, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance p1, Lpv0;

    const/16 v0, 0x16

    invoke-direct {p1, v0}, Lpv0;-><init>(I)V

    new-instance v0, Lpv0;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lpv0;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v1, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final deleteSkuSets(Ljava/util/List;Lcom/perfectcorp/perfectlib/SkuHandler$DeleteSkuSetsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/SkuHandler$DeleteSkuSetsCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "skuSetGUIDs can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$DeleteSkuSetsCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/SkuHandler$DeleteSkuSetsCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[deleteSkuSets] start, size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lsa0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lsa0;-><init>(Ljava/util/List;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lxw;

    const/16 v1, 0x9

    invoke-direct {v0, p2, v1}, Lxw;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;

    invoke-direct {p2, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance p1, Lpv0;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Lpv0;-><init>(I)V

    new-instance v0, Lpv0;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lpv0;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v1, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final downloadProducts(Ljava/util/List;Lcom/perfectcorp/perfectlib/SkuHandler$DownloadProductsCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/SkuHandler$DownloadProductsCallback;",
            ")",
            "Lcom/perfectcorp/perfectlib/Cancelable;"
        }
    .end annotation

    const-string v0, "productGUIDs can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadProductsCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadProductsCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[downloadProducts] start, size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "SkuHandler"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "[downloadProducts] product GUID list is empty."

    invoke-static {v2, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lhn0;

    const/16 p1, 0x13

    invoke-direct {p0, v0, p1}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_0
    new-instance v1, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v2, "downloadProducts"

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v2, v2, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v3, Ls40;

    const/4 v4, 0x5

    invoke-direct {v3, p2, v4}, Ls40;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/perfectcorp/perfectlib/SkuHandler;->c(Ljava/util/List;ZLcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance p2, Lo2;

    const/16 v2, 0x14

    invoke-direct {p2, v0, v2}, Lo2;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lpv0;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Lpv0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v2, p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v1
.end method

.method public final downloadSkuSets(Ljava/util/List;Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;",
            ")",
            "Lcom/perfectcorp/perfectlib/Cancelable;"
        }
    .end annotation

    const-string v0, "skuSetGUIDs can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[downloadSkuSets] start, size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "SkuHandler"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "[downloadSkuSets] SKU set GUID list is empty."

    invoke-static {v2, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcz0;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_0
    new-instance v7, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v1, "downloadSkuSets"

    invoke-direct {v7, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v8, v1, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lzy0;

    const/4 v10, 0x1

    invoke-direct {v1, v10}, Lzy0;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v1, Lix0;

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lix0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZLjava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {p0, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lrw0;

    invoke-direct {p1, v0, v9, v3, v10}, Lrw0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;

    invoke-direct {p2, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance p0, Lpv0;

    const/16 p1, 0x12

    invoke-direct {p0, p1}, Lpv0;-><init>(I)V

    new-instance p1, Lpv0;

    const/16 v0, 0x13

    invoke-direct {p1, v0}, Lpv0;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v2, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    new-instance p0, Lcz0;

    invoke-direct {p0, v4, v10}, Lcz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-object v7
.end method

.method public final g(Ljava/util/Collection;Z)Ljava/util/Map;
    .locals 2

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p2}, Lcom/perfectcorp/perfectlib/SkuHandler;->a(Ljava/util/List;Z)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance p2, Lyw0;

    const/16 v0, 0x19

    invoke-direct {p2, v0}, Lyw0;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final getListByEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/SkuHandler$GetListCallback;)V
    .locals 5

    const-string v0, "effect can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$GetListCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/SkuHandler$GetListCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getListByEffect] start, effect="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->OK:Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectEffect;->BACKGROUND:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne p1, v2, :cond_0

    new-instance v2, La8;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, La8;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/perfectlib/c4;

    invoke-direct {v3, p0, v0, v1}, Lcom/perfectcorp/perfectlib/c4;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;ZLjava/util/concurrent/atomic/AtomicReference;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/perfectcorp/perfectlib/i4;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/perfectcorp/perfectlib/i4;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v4, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v4, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v2

    new-instance v4, Lez0;

    invoke-direct {v4, p1, v3}, Lez0;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v3, v2, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/u1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/perfectcorp/perfectlib/u1;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/PerfectEffect;ZLjava/util/concurrent/atomic/AtomicReference;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_0
    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v2, Ltw0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v1, v3}, Ltw0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    new-instance v1, Lna0;

    const/16 v2, 0x8

    invoke-direct {v1, p1, p2, v2}, Lna0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lo2;

    const/16 v2, 0x15

    invoke-direct {p1, p2, v2}, Lo2;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getListStatusByEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;)Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;
    .locals 3

    const/4 v0, 0x3

    const-string v1, "SkuHandler"

    const-string v2, "[getListStatusByEffect] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "[getListStatusByEffect] end. status="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const-string p0, "[getListStatusByEffect] end. status ok."

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;->OK:Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    return-object p0
.end method

.method public final getProductInfosWithGuids(Ljava/util/List;Lcom/perfectcorp/perfectlib/SkuHandler$GetProductInfosWithGuidsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/SkuHandler$GetProductInfosWithGuidsCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "productGuids can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$GetProductInfosWithGuidsCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/SkuHandler$GetProductInfosWithGuidsCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getProductInfosWithGuids] start, size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", guids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/perfectlib/SkuHandler;->a(Ljava/util/List;Z)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Lhz0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lhz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$GetProductInfosWithGuidsCallback;I)V

    new-instance v1, Lhz0;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lhz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$GetProductInfosWithGuidsCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getSkuInfosWithGuids(Ljava/util/List;Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "skuGuids can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getSkuInfosWithGuids] start, size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v1, Lho0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, p1, v2}, Lho0;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Ldz0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Ldz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;I)V

    new-instance v1, Ldz0;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Ldz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuInfosWithGuidsCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getSkuSetInfosWithGuids(Ljava/util/List;Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetInfosWithGuidsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetInfosWithGuidsCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "skuSetGUIDs can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetInfosWithGuidsCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetInfosWithGuidsCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getSkuSetInfosWithGuids] start, size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {p1, v0, v1, v2}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lzy0;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lzy0;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lwm;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lwm;-><init>(ZI)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Lgz0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lgz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetInfosWithGuidsCallback;I)V

    new-instance v1, Lgz0;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lgz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetInfosWithGuidsCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getSkuSetListByEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetListCallback;)V
    .locals 5

    const-string v0, "effect can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback can not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetListCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetListCallback;

    const/4 v0, 0x3

    const-string v1, "SkuHandler"

    const-string v2, "[getSkuSetListByEffect] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lg8;

    const/4 v4, 0x6

    invoke-direct {v3, v2, v4}, Lg8;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v2

    new-instance v3, Lez0;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lez0;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p1, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v2, Lzy0;

    invoke-direct {v2, v0}, Lzy0;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v0, p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v2, v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lwm;

    const/4 v0, 0x5

    invoke-direct {p1, v1, v0}, Lwm;-><init>(ZI)V

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Lfz0;

    invoke-direct {v0, p2, v4}, Lfz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetListCallback;I)V

    new-instance v1, Lfz0;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lfz0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$GetSkuSetListCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final j(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/Cancelable;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[setupLastTaskCancelable] cancelable \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" canceled!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "SkuHandler"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/Cancelable;->cancel()V

    :cond_0
    return-void
.end method

.method public final k(Ljava/util/List;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getListBySyncServerInternal] start. skuTypes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "[getListBySyncServerProtocol] start"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;-><init>()V

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps;->b(Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    move-result-object v6

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;-><init>()V

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimaps;->b(Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    move-result-object v7

    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v2, Lva0;

    invoke-direct {v2, p2, v1}, Lva0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v1

    new-instance v3, Ln7;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Ln7;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v1

    new-instance v3, Liz0;

    move-object v5, p1

    move-object v4, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Liz0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/common/network/ProgressCallback;)V

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p2

    const-string p3, "next is null"

    invoke-static {p2, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a;

    invoke-direct {p3, v1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)V

    invoke-virtual {p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p2

    new-instance v2, Lm7;

    const/4 v7, 0x6

    move-object v3, p0

    move-object v6, v0

    move-object v5, v4

    move-object v4, v9

    invoke-direct/range {v2 .. v7}, Lm7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {p0, p2, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->ignoreElements()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    new-instance p2, Lcom/perfectcorp/perfectlib/z;

    const/16 p3, 0xd

    invoke-direct {p2, v9, p1, p3}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {p2, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance p0, Lox0;

    const/4 p1, 0x1

    invoke-direct {p0, v9, v10, p1}, Lox0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/ConcurrentHashMap;I)V

    invoke-virtual {p2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance p2, Lbz0;

    invoke-direct {p2, p1}, Lbz0;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Z)Lcom/perfectcorp/perfectlib/ProductInfo;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ProductInfo;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/perfectcorp/perfectlib/ProductInfo;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V

    invoke-static {v0, p4}, Lcom/perfectcorp/perfectlib/SkuHandler;->f(Lcom/perfectcorp/perfectlib/ProductInfo;Z)Ljava/util/List;

    move-result-object p0

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/ProductInfo;->i:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final syncServer(Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 7

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    const-string v3, "[syncServer] start"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v4, "syncServer"

    invoke-direct {v2, v4}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/SkuHandler;->j(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->b:Ljava/util/List;

    new-instance v5, Ls40;

    invoke-direct {v5, p1, v1}, Ls40;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v4, v2, v5}, Lcom/perfectcorp/perfectlib/SkuHandler;->b(Ljava/util/List;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p1

    new-instance v5, Lva0;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v6}, Lva0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v6, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v6, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v5, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v5, p1, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    const-string p1, "ProductMaskHelper"

    invoke-static {v1, p1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ProductMaskHelper;->b(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v1, v5, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance p1, Ljx0;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v2, v3}, Ljx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p1

    new-instance v1, Lkx0;

    invoke-direct {v1, p0, v2, v3}, Lkx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->g(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p1

    new-instance v1, Ljx0;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v4}, Ljx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v4, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance p1, Ltx0;

    invoke-direct {p1, v0, v3}, Ltx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;I)V

    new-instance v1, Lux0;

    invoke-direct {v1, v0, v3}, Lux0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v0, v1, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v2
.end method

.method public final syncServerByEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 6

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v1, "syncServerByEffect"

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    const-class v1, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    invoke-static {v1, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    const/4 v2, 0x3

    const-string v3, "SkuHandler"

    const-string v4, "[syncServerByEffect] start"

    invoke-static {v2, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ls40;

    invoke-direct {v4, p2, v2}, Ls40;-><init>(Ljava/lang/Object;I)V

    const-string p2, "effect can\'t be null"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "[syncServerByEffectImpl] start"

    invoke-static {v2, v3, p2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v3, "syncServerByEffectImpl"

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/SkuHandler;->j(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v4}, Lcom/perfectcorp/perfectlib/SkuHandler;->b(Ljava/util/List;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/ProductMaskHelper;->b(Ljava/util/List;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    move-result-object p2

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v4, v3, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance p2, Ljx0;

    const/4 v3, 0x4

    invoke-direct {p2, p0, v2, v3}, Ljx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {v4, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p2

    new-instance v3, Lkx0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v2, v4}, Lkx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {p2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->g(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p2

    new-instance v3, Ljx0;

    const/4 v5, 0x5

    invoke-direct {v3, p0, v2, v5}, Ljx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-virtual {p2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p2

    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    new-instance v3, Lky0;

    const/4 v5, 0x0

    invoke-direct {v3, p1, v0, v5}, Lky0;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {p1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, v2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v2, v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance p1, Ltx0;

    invoke-direct {p1, v1, v4}, Ltx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;I)V

    new-instance v0, Lux0;

    invoke-direct {v0, v1, v4}, Lux0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v1, v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/Cancelable;

    return-object p0
.end method

.method public final syncSkuList(Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 6

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v1, "syncSkuList"

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    const-class v1, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    invoke-static {v1, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    const/4 v2, 0x3

    const-string v3, "SkuHandler"

    const-string v4, "[syncSkuList] start"

    invoke-static {v2, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->b:Ljava/util/List;

    new-instance v5, Ls40;

    invoke-direct {v5, p1, v2}, Ls40;-><init>(Ljava/lang/Object;I)V

    const-string p1, "skuTypes can\'t be null"

    invoke-static {v4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "[syncAllSkuListImpl] start"

    invoke-static {v2, v3, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v2, "syncAllSkuListImpl"

    invoke-direct {p1, v2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/SkuHandler;->j(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-virtual {p0, v4, p1, v5}, Lcom/perfectcorp/perfectlib/SkuHandler;->k(Ljava/util/List;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    new-instance v3, Lva0;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Lva0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v3, v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v2, v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance v0, Ltx0;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Ltx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;I)V

    new-instance v4, Lux0;

    invoke-direct {v4, v1, v3}, Lux0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v1, v4, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/Cancelable;

    return-object p0
.end method

.method public final syncSkuListByEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 6

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v1, "syncSkuListByEffect"

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    const-class v1, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    invoke-static {v1, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;

    const/4 v2, 0x3

    const-string v3, "SkuHandler"

    const-string v4, "[syncSkuListByEffect] start"

    invoke-static {v2, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ls40;

    invoke-direct {v4, p2, v2}, Ls40;-><init>(Ljava/lang/Object;I)V

    const-string p2, "effect can\'t be null"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "[syncSkuListByEffectImpl] start"

    invoke-static {v2, v3, p2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v5, "syncSkuListByEffectImpl"

    invoke-direct {v3, v5}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-virtual {p0, v3}, Lcom/perfectcorp/perfectlib/SkuHandler;->j(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, v3, v4}, Lcom/perfectcorp/perfectlib/SkuHandler;->k(Ljava/util/List;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p2

    invoke-static {p2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    new-instance v4, Lky0;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v0, v5}, Lky0;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {p1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {v0, v3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v3, v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance p1, Ltx0;

    invoke-direct {p1, v1, v2}, Ltx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;I)V

    new-instance v0, Lux0;

    invoke-direct {v0, v1, v2}, Lux0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$SyncServerCallback;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v1, v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/Cancelable;

    return-object p0
.end method

.method public final updateMappingFromServer(Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->c()V

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;->dispose()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->a(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/k;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance v0, Lyy0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lyy0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;I)V

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v0

    new-instance v1, Lyy0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lyy0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;I)V

    new-instance v2, Lo2;

    const/16 v3, 0x13

    invoke-direct {v2, p1, v3}, Lo2;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {p1, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->e:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method
