.class final Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase$run$1;
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
    c = "com.vuitton.android.domain.usecase.pdp.customization.SaveCustomizationUseCase"
    f = "SaveCustomizationUseCase.kt"
    l = {
        0xc
    }
    m = "run-IiOnze8"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase$run$1;->c:Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase$run$1;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase$run$1;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase$run$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase$run$1;->c:Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
