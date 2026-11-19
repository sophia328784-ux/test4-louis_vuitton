.class public final Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;",
        "requireCachedConnectedObjectsConfigUseCase",
        "Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;",
        "trunkSpeakerRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;)V",
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

.field public final b:Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase;->b:Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase$run$1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase;->b:Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase$run$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    invoke-interface {p0, p1}, Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
