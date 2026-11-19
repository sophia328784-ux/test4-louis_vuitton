.class final Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;
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
    c = "com.vuitton.android.domain.usecase.connectivity.watch.pairing.PairWatchV2UseCase"
    f = "PairWatchV2UseCase.kt"
    l = {
        0x12,
        0x16,
        0x17
    }
    m = "run"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;

.field public c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;

.field public h:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->g:Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->h:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase$run$1;->g:Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/watch/PairWatchV2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
