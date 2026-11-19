.class final Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase$run$1;
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
    c = "com.vuitton.android.domain.usecase.connectivity.watchv3.GetWatchV3TutorialUseCase"
    f = "GetWatchV3TutorialUseCase.kt"
    l = {
        0xc,
        0xc
    }
    m = "run"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/repository/WatchV3Repository;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase$run$1;->d:Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase$run$1;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase$run$1;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase$run$1;->e:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase$run$1;->d:Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
