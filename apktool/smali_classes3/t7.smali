.class public final synthetic Lt7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/batch/android/j1/c;
.implements Lcom/google/gson/internal/ObjectConstructor;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lt7;->b:I

    iput-object p1, p0, Lt7;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/j1/b;)V
    .locals 0

    iget-object p0, p0, Lt7;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/batch/android/Batch;->j(Ljava/lang/String;Lcom/batch/android/j1/b;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lt7;->b:I

    const-string v1, "get metadata from server failed, guid="

    const-string v2, "featureType"

    const-string v3, "ProductMaskHelper"

    const/16 v4, 0x130

    const-string v5, ", responseCode="

    const-string v6, "SkuHandler"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    iget-object p0, p0, Lt7;->c:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p1, :cond_0

    :goto_0
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lg91;

    invoke-direct {v1, p1, v8}, Lg91;-><init>(Landroid/util/Pair;I)V

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "IdSystemDataHelper"

    const-string v0, "idc result insert to database failed"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :pswitch_1
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;-><init>()V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e$a;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->b:J

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;->c:Ljava/lang/String;

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c$a;)V

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget-object p1, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b$a;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b$a;-><init>()V

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->downloadURL:Ljava/lang/String;

    iput-object v3, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b$a;->c:Ljava/lang/String;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->downloadCheckSum:Ljava/lang/String;

    iput-object v3, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b$a;->d:Ljava/lang/String;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->guid:Ljava/lang/String;

    iput-object v3, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b$a;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->usageType:Ljava/lang/String;

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;

    move-result-object v3

    iput-object v3, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b$a;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/c;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/c$a;->expiredDate:Ljava/lang/String;

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b$a;->e:Ljava/lang/String;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b$a;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/background/b;

    goto :goto_3

    :cond_2
    const-string p1, "Can\'t find metadata from server. guid="

    invoke-static {p1, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    :goto_3
    return-object v7

    :pswitch_3
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$b;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$b;->b()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/d$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lgy0;

    const/16 v2, 0xa

    invoke-direct {v1, p1, p0, v2}, Lgy0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/SkuSetInfo;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/SkuSetInfo;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_4
    return-object p1

    :pswitch_5
    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget p1, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[checkSkuTreeNeedToUpdate] featureType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, v6, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    if-eq p1, v4, :cond_5

    goto :goto_4

    :cond_5
    move v8, v9

    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget v0, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->a:I

    iget-object p1, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    if-ne v0, v4, :cond_6

    const-string p1, "[getBackgroundIDs] Get sku tree returned with HTTP status code 304. type="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, v6, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/HashSet;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/common/utility/Triple;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lcom/perfectcorp/common/utility/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getBackgroundIDs] Get sku tree returned with response. type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v6, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/b;->b()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getBackgroundIDs] Get background tree returned background.size()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v6, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v2

    new-instance v3, Lxx0;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lxx0;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->q()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    new-instance v5, Luw;

    invoke-direct {v5, v4, v2}, Luw;-><init>(ILjava/util/Set;)V

    invoke-virtual {v3, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, " SET isDeleted=1 WHERE guid"

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    new-instance v8, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v8, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "UPDATE "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->b:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "[setDeleted] failed. isDeleted=true, guids="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "BackgroundInfoDao"

    invoke-static {v7, v5, v4}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v1

    new-instance v4, Ldy0;

    invoke-direct {v4, p0, v9}, Ldy0;-><init>(Ljava/util/Map;I)V

    invoke-virtual {v1, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance v1, Lxx0;

    invoke-direct {v1, v10}, Lxx0;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->q()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[getBackgroundIDs] retiredIdList.size()="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", toBeDownloadedSkuIds.size()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, v6, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/b;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/common/utility/Triple;

    invoke-direct {v0, p0, p1, v2}, Lcom/perfectcorp/common/utility/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    return-object v0

    :pswitch_7
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;

    const-string v0, "[syncServer] collect all product GUIDs for featureType="

    invoke-static {v10, v0, p0, v3}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;-><init>()V

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_7
    :try_start_2
    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[syncServer] has "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " products in featureType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v3, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lp3;

    const/16 v4, 0x16

    invoke-direct {v3, v0, v1, v4}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lno0;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lno0;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v2, Lcq0;

    invoke-direct {v2, p0, v1, p1, v9}, Lcq0;-><init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v7, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_8

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, ". To index multiple values under a key, use Multimaps.index."

    invoke-static {p0, p1}, La61;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    return-object v7

    :pswitch_8
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;

    const-string v0, "[checkNeedToUpdate] query product list from DB for featureType="

    invoke-static {v10, v0, p0, v3}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/d;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_8

    const-string p1, "[checkNeedToUpdate] product count is different between server and DB. featureType="

    :goto_9
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_8
    const-string v1, "[checkNeedToUpdate] compare modified date for featureType="

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lno0;

    const/16 v4, 0x9

    invoke-direct {v2, v4}, Lno0;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e$a;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;

    if-nez v2, :cond_a

    const-string p1, "[checkNeedToUpdate] have the same product count but contains different GUID for featureType="

    goto :goto_9

    :cond_a
    iget-wide v4, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/c;->b:J

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/e$a;->b()J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-gez v1, :cond_9

    const-string p1, "[checkNeedToUpdate] have outdated product for featureType="

    goto :goto_9

    :cond_b
    const-string p1, "[checkNeedToUpdate] products are up-to-date for featureType="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, v3, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_a
    return-object p0

    :pswitch_9
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", query from network succeed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProductMappingUtility"

    invoke-static {v10, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sdk/a;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_a
    check-cast p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preload mapping table failed. type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContentPreloader"

    invoke-static {v0, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Ljava/util/Map;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    return-object p0

    :cond_c
    new-instance p1, Ljava/lang/Exception;

    invoke-static {v1, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_c
    check-cast p1, Ljava/util/Map;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    return-object p0

    :cond_d
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "get background metadata from server failed, guid="

    invoke-static {v0, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_d
    check-cast p1, Ljava/util/Map;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    return-object p0

    :cond_e
    new-instance p1, Ljava/lang/Exception;

    invoke-static {v1, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e
    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[newLookUpdateFirstStrategySingle] Query look metadata failed. lookGuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApplyEffectUtility"

    invoke-static {v0, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public construct()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lt7;->b:I

    iget-object p0, p0, Lt7;->c:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/google/gson/internal/ConstructorConstructor;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/google/gson/internal/ConstructorConstructor;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/google/gson/internal/ConstructorConstructor;->q(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/google/gson/internal/ConstructorConstructor;->k(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lcom/google/gson/internal/ConstructorConstructor;->n(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lcom/google/gson/internal/ConstructorConstructor;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lt7;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/concurrent/ExecutionException;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected Error: FID NOT matching!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->e:Ljava/lang/String;

    iget-object p0, p0, Lt7;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
