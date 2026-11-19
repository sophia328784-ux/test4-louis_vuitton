.class public final Lcom/perfectcorp/perfectlib/TagHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/TagHandler$Preferences;,
        Lcom/perfectcorp/perfectlib/TagHandler$ClearAllCallback;,
        Lcom/perfectcorp/perfectlib/TagHandler$ListGuidsCallback;,
        Lcom/perfectcorp/perfectlib/TagHandler$ListTagsCallback;,
        Lcom/perfectcorp/perfectlib/TagHandler$ListGroupsCallback;,
        Lcom/perfectcorp/perfectlib/TagHandler$Type;,
        Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;,
        Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;,
        Lcom/perfectcorp/perfectlib/TagHandler$Singleton;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/TagHandler;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/TagHandler;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static b(Lcom/perfectcorp/perfectlib/TagHandler$Type;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;
    .locals 10

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[syncServerByType] start. type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "TagHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v1, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;->FILE:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    new-instance v0, Lcom/perfectcorp/perfectlib/z;

    const/16 v1, 0xf

    invoke-direct {v0, p2, p0, v1}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/k4;

    invoke-direct {v0, p0, v2}, Lcom/perfectcorp/perfectlib/k4;-><init>(Lcom/perfectcorp/perfectlib/TagHandler$Type;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance v4, Lcom/perfectcorp/perfectlib/u1;

    const/4 v9, 0x3

    move-object v5, p0

    move-object v7, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/u1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {p0, v0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Lcom/perfectcorp/perfectlib/k4;

    invoke-direct {p1, v5, v3}, Lcom/perfectcorp/perfectlib/k4;-><init>(Lcom/perfectcorp/perfectlib/TagHandler$Type;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {p2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;

    invoke-direct {p1, p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/v;

    const/4 p2, 0x5

    invoke-direct {p0, v5, p2}, Lcom/perfectcorp/perfectlib/v;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->e(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/c;

    const/16 p2, 0x9

    invoke-direct {p1, v5, p2}, Lcom/perfectcorp/perfectlib/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->g(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/perfectcorp/perfectlib/TagType;Ljava/lang/String;)Ljava/util/List;
    .locals 11

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/TagType;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/d;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/d;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/TagType;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/TagType;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->c:[Ljava/lang/String;

    const-string v7, "Type"

    const-string v8, "SubType"

    const-string v9, "TagId"

    const-string v10, "Is3d"

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string v1, "0"

    :goto_0
    filled-new-array {v3, v4, p1, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b:Ljava/lang/String;

    invoke-static {v0, v1, v6, v7, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->m(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e;

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/TagType;->c:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/b;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    const-string v4, "ProductMaskDetail"

    const-string v5, "skuGuid"

    invoke-static {v2, v4, v5, v3}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getGenericTagGuids] Filter out SKU by product mask. skuGuid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e;->e:Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "TagHandler"

    invoke-static {v2, v1, v3, v4}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    const-string p1, "ProductMaskDetailDao"

    const-string v0, "[hasSkuGuid] failed"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :goto_2
    :try_start_2
    const-string p1, "GenericTagGuidDao"

    const-string v0, "[getByTypeAndId] failed"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {v5}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static d(Ljava/util/List;)Ljava/util/List;
    .locals 3

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    move-result-object v1

    const-string v2, "skuItemGuid"

    invoke-virtual {v1, v2, p0}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->k(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/perfectcorp/perfectlib/TagHandler;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/TagHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/TagHandler;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v1, "TagHandler#syncServer"

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/perfectcorp/common/utility/EventPublisher;

    invoke-direct {v1}, Lcom/perfectcorp/common/utility/EventPublisher;-><init>()V

    new-instance v2, Lcom/perfectcorp/perfectlib/d4;

    invoke-direct {v2, v1, v0}, Lcom/perfectcorp/perfectlib/d4;-><init>(Lcom/perfectcorp/common/utility/EventPublisher;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/e;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v2

    new-instance v3, Lr21;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lr21;-><init>(Lcom/perfectcorp/perfectlib/TagHandler;I)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->h(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v2

    new-instance v3, Lr21;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lr21;-><init>(Lcom/perfectcorp/perfectlib/TagHandler;I)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/n;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

    invoke-direct {v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    :goto_0
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/TagHandler;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;

    if-nez v4, :cond_2

    new-instance v5, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;

    invoke-direct {v5, v0, v1, v3}, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/utility/EventPublisher;Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;)V

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public final clearAll(Lcom/perfectcorp/perfectlib/TagHandler$ClearAllCallback;)V
    .locals 4

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/TagHandler;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "syncServer() is running"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/perfectcorp/perfectlib/TagHandler$ClearAllCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v0, "TagHandler"

    const-string v1, "[clearAll] start"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/perfectcorp/perfectlib/t;

    invoke-direct {v0, v2}, Lcom/perfectcorp/perfectlib/t;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/j;-><init>(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/p;

    move-result-object v0

    new-instance v1, Lr21;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lr21;-><init>(Lcom/perfectcorp/perfectlib/TagHandler;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

    invoke-direct {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;)V

    :goto_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/TagHandler;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    if-nez v2, :cond_3

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_1
    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    new-instance v0, Lo2;

    const/16 v2, 0x17

    invoke-direct {v0, p1, v2}, Lo2;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lxw;

    const/16 v3, 0xc

    invoke-direct {v2, p1, v3}, Lxw;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    return-void
.end method

.method public final listGroups(Lcom/perfectcorp/perfectlib/TagType;Lcom/perfectcorp/perfectlib/TagHandler$ListGroupsCallback;)V
    .locals 4

    const-string p0, "tagType can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "callback can\'t be null"

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/TagType;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lhn0;

    const/16 p1, 0x1b

    invoke-direct {p0, p2, p1}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p0, "TagHandler"

    const-string v0, "[listGroups] start"

    const/4 v1, 0x3

    invoke-static {v1, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v0, Lcom/perfectcorp/perfectlib/i;

    const/16 v2, 0x9

    invoke-direct {v0, p1, v2}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    sget-object v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v3, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/k1;

    invoke-direct {v0, p1, p0, v1}, Lcom/perfectcorp/perfectlib/k1;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v3, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/s4;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/perfectcorp/perfectlib/s4;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lo21;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1}, Lo21;-><init>(Lcom/perfectcorp/perfectlib/TagHandler$ListGroupsCallback;I)V

    new-instance v1, Lo21;

    invoke-direct {v1, p2, v0}, Lo21;-><init>(Lcom/perfectcorp/perfectlib/TagHandler$ListGroupsCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final listGuids(Lcom/perfectcorp/perfectlib/TagType;Ljava/lang/String;Lcom/perfectcorp/perfectlib/TagHandler$ListGuidsCallback;)V
    .locals 2

    const-string p0, "tagType can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "tagId can\'t be null"

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "callback can\'t be null"

    invoke-static {p3, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/TagType;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lhn0;

    const/16 p1, 0x1a

    invoke-direct {p0, p3, p1}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p0, "[listGuids] start"

    const/4 v0, 0x3

    const-string v1, "TagHandler"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v0, Lo7;

    const/16 v1, 0xa

    invoke-direct {v0, p1, p2, v1}, Lo7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lp21;

    invoke-direct {v0, p1, p0}, Lp21;-><init>(Lcom/perfectcorp/perfectlib/TagType;Z)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lq21;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Lq21;-><init>(Lcom/perfectcorp/perfectlib/TagHandler$ListGuidsCallback;I)V

    new-instance p2, Lq21;

    const/4 v0, 0x1

    invoke-direct {p2, p3, v0}, Lq21;-><init>(Lcom/perfectcorp/perfectlib/TagHandler$ListGuidsCallback;I)V

    new-instance p3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p3, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final listTags(Lcom/perfectcorp/perfectlib/TagType;Ljava/lang/String;Lcom/perfectcorp/perfectlib/TagHandler$ListTagsCallback;)V
    .locals 3

    const-string p0, "tagType can\'t be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "groupId can\'t be null"

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "callback can\'t be null"

    invoke-static {p3, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/TagType;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lhn0;

    const/16 p1, 0x18

    invoke-direct {p0, p3, p1}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p0, "[listTags] start"

    const/4 v0, 0x3

    const-string v1, "TagHandler"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance v1, Lcom/perfectcorp/perfectlib/z;

    const/16 v2, 0xe

    invoke-direct {v1, p1, p2, v2}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p2

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v2, p2, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p2, Lp21;

    invoke-direct {p2, p1, p0}, Lp21;-><init>(Lcom/perfectcorp/perfectlib/TagType;Z)V

    invoke-virtual {v2, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/z0;

    const/16 p2, 0x8

    invoke-direct {p1, v0, p2}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lu21;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Lu21;-><init>(Lcom/perfectcorp/perfectlib/TagHandler$ListTagsCallback;I)V

    new-instance p2, Lu21;

    const/4 v0, 0x1

    invoke-direct {p2, p3, v0}, Lu21;-><init>(Lcom/perfectcorp/perfectlib/TagHandler$ListTagsCallback;I)V

    new-instance p3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p3, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final syncServer(Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 6

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    sget-object v1, Lcom/perfectcorp/perfectlib/Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    sget-object v1, Lcom/perfectcorp/perfectlib/Functionality;->HAIR_COLOR:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lhn0;

    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lhn0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_0
    const-string v0, "[syncServer] start"

    const/4 v1, 0x3

    const-string v2, "TagHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/TagHandler;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/TagHandler;->a()Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;

    move-result-object p0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;->c:Lcom/perfectcorp/common/utility/EventPublisher;

    const-class v1, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;

    invoke-virtual {v0, v1, p1}, Lcom/perfectcorp/common/utility/EventPublisher;->b(Ljava/lang/Class;Lcom/perfectcorp/common/utility/EventPublisher$Subscriber;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;->a:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-instance v1, Lcom/perfectcorp/perfectlib/v;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/v;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->a(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b([Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->i:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;

    invoke-direct {v3, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/b;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)V

    new-instance v0, Lxw;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1}, Lxw;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lo2;

    const/16 v5, 0x16

    invoke-direct {v1, p1, v5}, Lo2;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {p1, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    invoke-virtual {v3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->a(Lcom/perfectcorp/thirdparty/io/reactivex/a;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;->a:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-array v1, v2, [Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b([Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;->a:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "clearAll() is running"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    new-instance v0, Laa0;

    const/16 v1, 0x1c

    invoke-direct {v0, p1, p0, v1}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0
.end method
