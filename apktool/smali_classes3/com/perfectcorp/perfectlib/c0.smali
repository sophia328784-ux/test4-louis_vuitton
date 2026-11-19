.class public final synthetic Lcom/perfectcorp/perfectlib/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/c0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/c0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/c0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/c0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/perfectcorp/perfectlib/c0;->b:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/c0;->e:Ljava/lang/Object;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/c0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/c0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    check-cast v4, Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    check-cast v3, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    iget-wide v5, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->j:J

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    iget-wide v7, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->lastModified:J

    cmp-long v5, v5, v7

    const/4 v6, 0x3

    const-string v7, "SkuCacheStrategyHelper"

    if-gez v5, :cond_0

    const-string p0, "start download, guid="

    invoke-static {v6, p0, v0, v7}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "[downloadSku] start id="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ln2;

    const/16 v5, 0xd

    invoke-direct {v0, p1, v5}, Ln2;-><init>(Ljava/lang/Object;I)V

    new-instance v7, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v7, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Ly81;

    invoke-direct {v0, v4, v3, p0, v5}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, v7, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lyw0;

    invoke-direct {v0, v6}, Lyw0;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v3, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lpv0;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lpv0;-><init>(I)V

    invoke-virtual {v3, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/c;

    invoke-direct {v0, p1, v1}, Lcom/perfectcorp/perfectlib/c;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    new-instance p0, Lbx0;

    invoke-direct {p0, p1, v2}, Lbx0;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;

    invoke-direct {p1, v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    goto :goto_0

    :cond_0
    const-string p1, "skip update, last modified date is the same between old and new metadata"

    invoke-static {v6, v7, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/SkuCacheStrategyHelper;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_0
    check-cast p0, Landroid/content/SharedPreferences$Editor;

    check-cast v4, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    check-cast v3, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationSetting;

    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget-object p1, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "RECOMMENDATION_JS"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance p0, Lcom/perfectcorp/perfectlib/y3;

    invoke-direct {p0, v4, v1}, Lcom/perfectcorp/perfectlib/y3;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    new-instance p0, Ljava/util/ArrayList;

    sget p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->d:I

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;

    invoke-direct {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;-><init>()V

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v1, v3, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationSetting;->productIds:Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationSetting$1;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>()V

    iget-object v2, v2, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->j()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :pswitch_1
    check-cast p0, Landroid/content/SharedPreferences$Editor;

    check-cast v4, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    check-cast v3, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget-object p1, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "RECOMMENDATION_SETTING"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Lcom/perfectcorp/perfectlib/y3;

    const/4 v1, 0x5

    invoke-direct {v0, v4, v1}, Lcom/perfectcorp/perfectlib/y3;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationSetting;

    invoke-virtual {v0, p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationSetting;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$StringResponseBuilder;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationSetting;->scriptPath:Ljava/lang/String;

    sget-object v2, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->GET:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$StringResponseBuilder;-><init>(Ljava/lang/String;Lcom/perfectcorp/common/network/RequestTask$RequestMethod;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$StringResponseBuilder;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/c0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v4, p1, v2}, Lcom/perfectcorp/perfectlib/c0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    move-object v5, v4

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    check-cast v3, Lcom/perfectcorp/perfectlib/EffectConfig;

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/util/Pair;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/perfectcorp/perfectlib/p1;

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/perfectcorp/perfectlib/p1;-><init>(Ljava/lang/Object;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    goto :goto_3

    :cond_4
    move-object v4, p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_5

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/perfectcorp/perfectlib/p1;

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/perfectcorp/perfectlib/p1;-><init>(Ljava/lang/Object;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;III)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/x1;

    invoke-direct {p1, v3, v2}, Lcom/perfectcorp/perfectlib/x1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Ljava/util/List;)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->just(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    check-cast v3, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, v3, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {p0, v4, v0, p1, v2}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/util/List;Z)Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/ContentPreloader;

    check-cast v4, Ljava/io/File;

    check-cast v3, Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v4}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preload fun sticker content failed, id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentPreloader"

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/exceptions/FunStickerNotSupportedException;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader;->h:Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v3, p1}, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3, v0}, Lcom/perfectcorp/perfectlib/PerfectLib$InitialCallbackWrapper;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    new-instance p0, Lg8;

    const/4 p1, 0x2

    invoke-direct {p0, v3, p1}, Lg8;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
