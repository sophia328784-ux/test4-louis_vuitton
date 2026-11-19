.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$handleShadeFinderScanResult$1"
    f = "BeautyVtoViewModelImpl.kt"
    l = {
        0x3a8
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;->d:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;->d:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    const-wide/16 v3, 0x1f4

    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, v4, p1}, Lkotlin/time/DurationKt;->h(JLkotlin/time/DurationUnit;)J

    move-result-wide v3

    iput v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;->b:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->n0:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;->d:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;->getLightingQuality()Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;

    move-result-object v4

    sget-object v5, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;->GOOD:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;

    const/4 v6, 0x0

    if-eq v4, v5, :cond_5

    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;->getLightingQuality()Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;

    move-result-object v4

    sget-object v5, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;->NORMAL:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$LightingQuality;

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v2

    :goto_2
    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;->getFrontalFaceQuality()Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceFrontalQuality;

    move-result-object v5

    sget-object v7, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceFrontalQuality;->GOOD:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceFrontalQuality;

    if-ne v5, v7, :cond_6

    move v5, v2

    goto :goto_3

    :cond_6
    move v5, v6

    :goto_3
    invoke-virtual {v3}, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;->getFaceAreaQuality()Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;

    move-result-object v3

    sget-object v7, Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;->GOOD:Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck$FaceAreaQuality;

    if-ne v3, v7, :cond_7

    move v6, v2

    :cond_7
    invoke-direct {v1, v4, v5, v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;-><init>(ZZZ)V

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
