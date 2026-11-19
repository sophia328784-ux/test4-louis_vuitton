.class public final synthetic Lho0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    iput p4, p0, Lho0;->b:I

    iput-object p1, p0, Lho0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lho0;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lho0;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;I)V
    .locals 0

    .line 12
    iput p4, p0, Lho0;->b:I

    iput-object p1, p0, Lho0;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lho0;->c:Z

    iput-object p3, p0, Lho0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lho0;->b:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    iget-boolean v3, p0, Lho0;->c:Z

    iget-object v4, p0, Lho0;->e:Ljava/lang/Object;

    iget-object v5, p0, Lho0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v5, Ljava/util/ArrayList;

    check-cast v4, Ljava/util/List;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->a:Ljava/util/regex/Pattern;

    new-instance p0, La61;

    const/16 v0, 0xf

    invoke-direct {p0, v0}, La61;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab;

    invoke-direct {v0, v5, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/ab;-><init>(Ljava/lang/Iterable;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lp7;

    invoke-direct {p0, v4, v3, v2}, Lp7;-><init>(Ljava/lang/Object;ZI)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/n;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {v1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Completable;->j(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v6, v5

    check-cast v6, Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->d:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[initParallelly] start. initDomains="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKInitHandler"

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v10

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v11, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v11}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    const-string v0, "[initParallelly] create single"

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;

    iget-boolean v5, p0, Lho0;->c:Z

    invoke-direct/range {v3 .. v11}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/c;-><init>(Ljava/util/Collection;ZLcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    invoke-direct {p0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/g;)V

    new-instance v0, Lxw;

    const/16 v3, 0xd

    invoke-direct {v0, v11, v3}, Lxw;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/g;

    invoke-direct {v3, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/g;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    const-string p0, "[initParallelly] end"

    invoke-static {v2, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-object v3

    :pswitch_1
    check-cast v5, Lcom/perfectcorp/perfectlib/SkuHandler;

    check-cast v4, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[getSkuInfosWithGuids] mappingEnabled="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SkuHandler"

    invoke-static {v2, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    move-result-object p0

    const-string v6, "shadetId"

    invoke-virtual {p0, v6, v4}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->k(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Lyw0;

    invoke-direct {v8, v1}, Lyw0;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Lyw0;

    const/4 v9, 0x6

    invoke-direct {v8, v9}, Lyw0;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    new-instance v7, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v9

    new-instance v10, Lt7;

    const/16 v11, 0x10

    invoke-direct {v10, v8, v11}, Lt7;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v8

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->firstElement()Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;

    move-result-object v8

    invoke-virtual {v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;->blockingGet()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    if-eqz v8, :cond_0

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v4

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    move-object v6, v1

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v7, "[getSkuInfosWithGuids] mappedSkuGuids size="

    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v7, " WHERE itemGuid IN ("

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SELECT * FROM "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "SkuItem"

    invoke-static {p0, v10}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->g(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "[getSkuInfosWithGuids] skuItems size="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v4

    new-instance v7, Lyw0;

    const/16 v8, 0x12

    invoke-direct {v7, v8}, Lyw0;-><init>(I)V

    invoke-virtual {v4, v7}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v4

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v4

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Lx7;

    const/4 v9, 0x2

    invoke-direct {v8, v5, v3, v1, v9}, Lx7;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    invoke-virtual {v4, v7, v8}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v4, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->b:Ljava/lang/String;

    iget-object v8, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/ProductInfo;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v7, Lcom/perfectcorp/perfectlib/ProductInfo;->e:Ljava/lang/String;

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/SkuHandler;->m(Ljava/lang/String;)Ljava/util/AbstractSet;

    move-result-object v9

    if-eqz v3, :cond_3

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v10, v8

    :goto_3
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v5, "[getSkuInfos] Filter out SKU by product mask. skuGuid="

    invoke-static {v2, v5, v8, v0}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v7, v10, v5}, Lcom/perfectcorp/perfectlib/SkuInfo;->a(Lcom/perfectcorp/perfectlib/ProductInfo;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;)Lcom/perfectcorp/perfectlib/SkuInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[getSkuInfosWithGuids] skuInfos size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    const-string v0, "SkuItemDao"

    const-string v1, "[get] error"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v8}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0

    :pswitch_2
    check-cast v5, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "productId can\'t be null"

    invoke-static {v5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "shadetId can\'t be null"

    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "productId=? AND shadetId=?"

    invoke-virtual {p0, v2, v0}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/ProductMappingDatabase;->j(Ljava/lang/String;[Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_4
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    goto :goto_5

    :cond_6
    const-string p0, "Can not get mapped id for productId="

    const-string v0, ", continue to try SkuAndShadeIdMapping"

    const-string v6, ", shadeId="

    invoke-static {p0, v5, v6, v4, v0}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProductMappingUtility"

    invoke-static {v1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->h()Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/a;->j(Ljava/lang/String;[Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "can not get mapped id for productId="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_8

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->f:Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    :goto_5
    return-object p0

    :cond_8
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;

    invoke-static {v1, v5, v6, v4}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;

    const-string v0, "productId and shadeId can not be empty"

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    check-cast v5, Landroid/graphics/Bitmap;

    check-cast v4, Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    new-instance p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;

    invoke-direct {p0, v5, v3, v4}, Lcom/perfectcorp/perfectlib/PhotoMakeup;-><init>(Landroid/graphics/Bitmap;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
