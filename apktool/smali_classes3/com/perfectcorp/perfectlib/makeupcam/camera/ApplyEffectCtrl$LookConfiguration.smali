.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LookConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ListConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LookConfiguration"
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

.field public final c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 12

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    iget-boolean v0, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->d:Z

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$1;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iput-boolean v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$1;->a:Z

    iput-object p2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$1;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;)Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;

    move-result-object v4

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->b:Ljava/util/List;

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-static {v5, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->f(Ljava/lang/Iterable;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Ljava/util/ArrayList;

    move-result-object v5

    iget v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->e:F

    iget-object v8, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreator;

    iget-object v9, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter;

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;Ljava/util/ArrayList;FILcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreator;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v7, v11

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v3, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->c(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-static {v6, v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->f(Ljava/lang/Iterable;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v8, v5

    move-object v5, v6

    iget v6, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->e:F

    move-object v9, v8

    iget-object v8, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreator;

    move-object v10, v9

    iget-object v9, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter;

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a:Ljava/lang/String;

    invoke-static/range {v3 .. v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;Ljava/util/ArrayList;FILcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreator;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$SkuIdGetter;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p2, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-direct {v0, v3}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;->h()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lp3;

    const/4 v5, 0x2

    invoke-direct {v4, p2, v0, v5}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_SMOOTHER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->removeAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p1, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-direct {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ListConfiguration;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LookConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object p1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LookConfiguration;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LookConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LookConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$LookConfiguration;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ListConfiguration;->b()V

    return-void
.end method

.method public final isValid()Z
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ListConfiguration;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
