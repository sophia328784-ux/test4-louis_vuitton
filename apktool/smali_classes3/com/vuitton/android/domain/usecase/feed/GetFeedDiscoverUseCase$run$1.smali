.class final Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;
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
    c = "com.vuitton.android.domain.usecase.feed.GetFeedDiscoverUseCase"
    f = "GetFeedDiscoverUseCase.kt"
    l = {
        0x25,
        0x2c,
        0x36,
        0x4c
    }
    m = "run-BWLJW6A"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

.field public c:Lcom/vuitton/foundation/model/domain/model/feed/Feed;

.field public d:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public e:Z

.field public f:Z

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->h:Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->i:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase$run$1;->h:Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;

    invoke-virtual {v1, p1, v0, v0, p0}, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;->a(Lcom/vuitton/foundation/model/domain/model/common/Coordinates;ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
