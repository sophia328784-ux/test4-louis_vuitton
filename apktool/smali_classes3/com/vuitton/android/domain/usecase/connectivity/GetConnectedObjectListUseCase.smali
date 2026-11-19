.class public final Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/repository/LightUpRepository;",
        "lightUpRepository",
        "Lcom/vuitton/android/domain/repository/WatchRepository;",
        "watchRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/repository/LightUpRepository;Lcom/vuitton/android/domain/repository/WatchRepository;)V",
        "Params",
        "domain"
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
.field public final a:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final b:Lcom/vuitton/android/domain/repository/LightUpRepository;

.field public final c:Lcom/vuitton/android/domain/repository/WatchRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/repository/LightUpRepository;Lcom/vuitton/android/domain/repository/WatchRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;->a:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;->b:Lcom/vuitton/android/domain/repository/LightUpRepository;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;->c:Lcom/vuitton/android/domain/repository/WatchRepository;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 8

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->c:Ljava/util/List;

    check-cast p0, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p2, p1, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;->a:Z

    if-eqz p2, :cond_5

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->KEEP_ALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p2

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;->a:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v2, p2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result p2

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SNEAKERS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v6}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v2

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->f:I

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;->b:Lcom/vuitton/android/domain/repository/LightUpRepository;

    invoke-interface {v3, p2, v2, v0}, Lcom/vuitton/android/domain/repository/LightUpRepository;->i(ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    goto :goto_2

    :cond_5
    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_2
    iget-boolean p1, p1, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;->b:Z

    iput-object v4, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->b:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;

    move-object v2, p2

    check-cast v2, Ljava/util/List;

    iput-object v2, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->c:Ljava/util/List;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->f:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;->c:Lcom/vuitton/android/domain/repository/WatchRepository;

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/domain/repository/WatchRepository;->b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_3
    return-object v1

    :cond_6
    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    :goto_4
    check-cast p2, Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
