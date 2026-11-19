.class final Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$getProductDetailsForCustomization$1"
    f = "PdpViewModelImpl.kt"
    l = {
        0x4ca
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->e:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->e:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->b:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->e:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;)Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    move-result-object v1

    iput v5, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;->b:I

    invoke-virtual {p1, v3, v1, p0}, Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {v4, v3, v2, v5}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->l6(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
