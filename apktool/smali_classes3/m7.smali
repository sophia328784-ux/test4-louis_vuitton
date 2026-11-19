.class public final synthetic Lm7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lm7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7;->c:Ljava/lang/Object;

    iput-object p2, p0, Lm7;->f:Ljava/lang/Object;

    iput-object p3, p0, Lm7;->d:Ljava/lang/Object;

    iput-object p4, p0, Lm7;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p5, p0, Lm7;->b:I

    iput-object p1, p0, Lm7;->c:Ljava/lang/Object;

    iput-object p2, p0, Lm7;->d:Ljava/lang/Object;

    iput-object p3, p0, Lm7;->e:Ljava/lang/Object;

    iput-object p4, p0, Lm7;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Lm7;->b:I

    iput-object p1, p0, Lm7;->d:Ljava/lang/Object;

    iput-object p2, p0, Lm7;->e:Ljava/lang/Object;

    iput-object p3, p0, Lm7;->c:Ljava/lang/Object;

    iput-object p4, p0, Lm7;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lm7;->b:I

    const/4 v1, 0x7

    const-string v2, "SkuHandler"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v7, p0, Lm7;->f:Ljava/lang/Object;

    iget-object v8, p0, Lm7;->c:Ljava/lang/Object;

    iget-object v9, p0, Lm7;->e:Ljava/lang/Object;

    iget-object p0, p0, Lm7;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler;

    check-cast v9, Lcom/perfectcorp/common/network/ProgressCallback;

    check-cast v8, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v5, Lgx0;

    invoke-direct {v5, v2, v1, v4}, Lgx0;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;I)V

    invoke-static {v2, v5}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lpx0;

    invoke-direct {v0, v9, v3}, Lpx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    new-instance v0, Lwx0;

    invoke-direct {v0, p0, v8, p1, v6}, Lwx0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/List;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Ly81;

    const/16 v0, 0x11

    invoke-direct {p1, v8, v9, v7, v0}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast v8, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast p0, Ljava/lang/String;

    check-cast v9, Ljava/lang/String;

    check-cast v7, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    iget-object v0, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[syncServerByProtocol] Get sku tree returned with the same message digest. type="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    goto/16 :goto_1

    :cond_1
    const-string p0, "[syncServerByProtocol] Get sku tree returned with response. type="

    const-string v6, ", responseCode="

    invoke-static {p0, v9, v6}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->a:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f;->b()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[syncServerByProtocol] Get sku tree returned skus.size()="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v5, v2}, Lfc;->z(Ljava/util/List;Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {v7, v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDao;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v3, Lxx0;

    const/4 v6, 0x6

    invoke-direct {v3, v6}, Lxx0;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->q()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    new-instance v6, Luw;

    invoke-direct {v6, v5, v0}, Luw;-><init>(ILjava/util/Set;)V

    invoke-virtual {v3, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[markAsDeleted] start, skuGuids="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SkuDbHelper"

    invoke-static {v5, v7, v6}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v6, Leq0;

    invoke-direct {v6, v3, v0, v4}, Leq0;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)V

    invoke-static {v3, v6}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance v3, Ldy0;

    invoke-direct {v3, p1, v4}, Ldy0;-><init>(Ljava/util/Map;I)V

    invoke-virtual {p0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance p1, Lxx0;

    invoke-direct {p1, v1}, Lxx0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->q()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[syncServerByProtocol] retiredIdList.size()="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toBeDownloadedSkuIds.size()="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v2, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_2
    check-cast v8, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-object v10, p0

    check-cast v10, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v9, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    move-object p0, v7

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->e()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    move-result-object p0

    new-instance v0, Ly81;

    const/16 v1, 0x13

    invoke-direct {v0, v8, p1, v10, v1}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Ley0;

    invoke-direct {p0, v9, v3}, Ley0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;I)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/perfectcorp/perfectlib/hc/preferences/SkuHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v1, "KEY_LIST_MESSAGE_DIGEST_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[syncServerByProtocol] type="

    const-string v4, ", messageDigest="

    invoke-static {v1, p1, v4, v0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$p;

    invoke-direct {v1, p1, v3}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$p;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    new-instance v6, Lm7;

    const/4 v11, 0x5

    move-object v9, p1

    move-object v7, v8

    move-object v8, v0

    invoke-direct/range {v6 .. v11}, Lm7;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, v1, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Ley0;

    invoke-direct {v0, p0, v5}, Ley0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;I)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_3
    check-cast p0, Ljava/util/Collection;

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v8, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v7, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;-><init>()V

    sget-object v2, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->a:Z

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->b:Z

    iput-boolean v6, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;->c:Z

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;

    invoke-direct {v2, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a$a;)V

    invoke-static {p0, v6, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->a(Ljava/util/Collection;ILcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lyw0;

    const/16 v2, 0xf

    invoke-direct {v0, v2}, Lyw0;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v3, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lyw0;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lyw0;-><init>(I)V

    invoke-virtual {v3, v9, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lc8;

    invoke-direct {v0, p1, v1}, Lc8;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Ly81;

    invoke-direct {p0, v8, v9, v7, v2}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_4
    check-cast v8, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast v7, Lcom/perfectcorp/common/network/ProgressCallback;

    check-cast p0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    check-cast v9, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-static {p1, v7, p0, v9, v8}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->m(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    move-result-object p0

    return-object p0

    :pswitch_5
    move-object v2, p0

    check-cast v2, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    move-object v3, v9

    check-cast v3, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    move-object v4, v8

    check-cast v4, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-object v5, v7

    check-cast v5, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    sget-object p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance v0, Lu7;

    invoke-direct/range {v0 .. v5}, Lu7;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lv7;

    invoke-direct {p1, v6}, Lv7;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lm7;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;

    iget-object v1, p0, Lm7;->e:Ljava/lang/Object;

    check-cast v1, Landroid/os/CancellationSignal;

    iget-object v2, p0, Lm7;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lm7;->f:Ljava/lang/Object;

    check-cast p0, Landroidx/credentials/CredentialManagerCallback;

    invoke-static {v0, v1, v2, p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$EEPRZu6PiJcReImfv141-6oqzqk(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V

    return-void
.end method
