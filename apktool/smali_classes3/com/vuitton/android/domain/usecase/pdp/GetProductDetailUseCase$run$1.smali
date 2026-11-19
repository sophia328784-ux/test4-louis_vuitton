.class final Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;
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
    c = "com.vuitton.android.domain.usecase.pdp.GetProductDetailUseCase"
    f = "GetProductDetailUseCase.kt"
    l = {
        0x25,
        0x27,
        0x20,
        0x2a,
        0x2b,
        0x2c
    }
    m = "run-SdvDIM8"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/util/List;

.field public i:Z

.field public j:I

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;

.field public m:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->l:Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->k:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->l:Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->a(Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
