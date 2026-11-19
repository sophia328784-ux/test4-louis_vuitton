.class final Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;
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
    c = "com.vuitton.android.domain.usecase.plp.GetExclusivePLPUseCase"
    f = "GetExclusivePLPUseCase.kt"
    l = {
        0x14,
        0x11
    }
    m = "run-0E7RQCE"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/repository/CatalogRepository;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;

.field public h:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->g:Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->h:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase$run$1;->g:Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;

    invoke-virtual {v1, p1, v0, p0}, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;->a(Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
