.class final Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase"
    f = "IsFeatureAvailableUseCase.kt"
    l = {
        0x1d,
        0x1f
    }
    m = "runSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->h:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->i:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase$runSuspend$1;->h:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v1, p1, v0, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
