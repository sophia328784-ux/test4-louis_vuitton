.class public final Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;",
        "requireCachedConnectedObjectsConfigUseCase",
        "Lcom/vuitton/android/domain/repository/WatchRepository;",
        "watchRepository",
        "Lcom/vuitton/android/domain/repository/LightUpRepository;",
        "lightUpRepository",
        "Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;",
        "trunkSpeakerRepository",
        "Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;",
        "horizonSpeakerRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;Lcom/vuitton/android/domain/repository/LightUpRepository;Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

.field public final b:Lcom/vuitton/android/domain/repository/WatchRepository;

.field public final c:Lcom/vuitton/android/domain/repository/LightUpRepository;

.field public final d:Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;

.field public final e:Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;Lcom/vuitton/android/domain/repository/LightUpRepository;Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;->b:Lcom/vuitton/android/domain/repository/WatchRepository;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;->c:Lcom/vuitton/android/domain/repository/LightUpRepository;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;->d:Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;

    iput-object p5, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;->e:Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    invoke-virtual {p2, v0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    sget-object v2, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v5, :cond_9

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;->c:Lcom/vuitton/android/domain/repository/LightUpRepository;

    if-eq p1, v4, :cond_8

    const/4 v1, 0x3

    if-eq p1, v1, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;->e:Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;

    invoke-interface {p0, p2}, Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;->d:Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;

    invoke-interface {p0, p2}, Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;->b(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-interface {v0, p2}, Lcom/vuitton/android/domain/repository/LightUpRepository;->h(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-interface {v0, p2}, Lcom/vuitton/android/domain/repository/LightUpRepository;->b(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_9
    iput-object v3, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase$run$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;->b:Lcom/vuitton/android/domain/repository/WatchRepository;

    invoke-interface {p0, p2}, Lcom/vuitton/android/domain/repository/WatchRepository;->i(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/ArrayList;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_2
    return-object v1

    :cond_a
    return-object p0
.end method
