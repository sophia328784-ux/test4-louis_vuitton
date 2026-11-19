.class public final Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/LightUpRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/LightUpRepository;",
        "<init>",
        "()V",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc70;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lc70;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;->a:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;->l()Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->f:Ljava/lang/String;

    iget-object v6, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->g:Ljava/lang/String;

    iget-object v7, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->h:Ljava/lang/String;

    iget-object v8, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, p2}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;->c(Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/ArrayList;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;->j(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;->g(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Connected objects -> Faq missing for sneakers"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;
    .locals 1

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LightUpSection;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LightUpSection;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/HomePageContent;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/HomePageContent;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;->a:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "Connected objects -> Video is null for light up section"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;->j(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Connected objects -> Faq missing for keep all"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;->l()Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;->d(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final g(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/List;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LightUpSection;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LightUpSection;->b:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "Connected objects -> Faq missing for sneakers"

    invoke-static {p1, p0}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqCategoryMapperKt;->b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/ArrayList;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;->g(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final i(ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 9

    instance-of v0, p3, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$1;-><init>(Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p3, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;

    invoke-direct {v2, p1, p2, p0, v3}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$2;-><init>(ZZLcom/vuitton/android/data/repository/LightUpRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl$getLightUpProducts$1;->d:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;

    iget-object v1, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    iget-object v3, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->c:Ljava/lang/String;

    iget-object v4, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    iget-object v5, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->h:Ljava/lang/String;

    iget-object v6, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->e:Ljava/lang/String;

    iget-object v7, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->f:Ljava/lang/String;

    iget-object v8, p2, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public final j(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/List;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LightUpSection;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LightUpSection;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "Connected objects -> Faq missing for keep all"

    invoke-static {p1, p0}, Lcom/vuitton/android/data/dto/connectivity/common/mapper/FaqCategoryMapperKt;->b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;->l()Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->f:Ljava/lang/String;

    iget-object v6, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->g:Ljava/lang/String;

    iget-object v7, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->h:Ljava/lang/String;

    iget-object v8, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0, p2}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;->b(Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final l()Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/LightUpRepositoryImpl;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;

    return-object p0
.end method
