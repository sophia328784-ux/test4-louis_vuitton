.class final Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;
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
    c = "com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt$LVRadioButtonInternal$1$1"
    f = "LVRadioButton.kt"
    l = {
        0x81,
        0x86
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/airbnb/lottie/compose/LottieAnimatable;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/runtime/MutableState;

.field public final synthetic f:Lcom/airbnb/lottie/compose/LottieCompositionResult;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/compose/LottieAnimatable;ZLandroidx/compose/runtime/MutableState;Lcom/airbnb/lottie/compose/LottieCompositionResult;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->c:Lcom/airbnb/lottie/compose/LottieAnimatable;

    iput-boolean p2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->d:Z

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->e:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->f:Lcom/airbnb/lottie/compose/LottieCompositionResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;

    iget-object v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->e:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->f:Lcom/airbnb/lottie/compose/LottieCompositionResult;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->c:Lcom/airbnb/lottie/compose/LottieAnimatable;

    iget-boolean v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->d:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatable;ZLandroidx/compose/runtime/MutableState;Lcom/airbnb/lottie/compose/LottieCompositionResult;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->b:I

    iget-object v11, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->e:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_5

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-boolean v4, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->d:Z

    iget-object v5, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->f:Lcom/airbnb/lottie/compose/LottieCompositionResult;

    move v6, v0

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->c:Lcom/airbnb/lottie/compose/LottieAnimatable;

    if-eqz v6, :cond_4

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput v2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->b:I

    const/16 v2, 0xc

    invoke-static {v0, v1, v3, p0, v2}, Lcom/airbnb/lottie/compose/LottieAnimatable$DefaultImpls;->b(Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/airbnb/lottie/LottieComposition;FLkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_6

    goto :goto_4

    :cond_4
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieComposition;

    if-eqz v4, :cond_5

    :goto_2
    move v4, v3

    goto :goto_3

    :cond_5
    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_2

    :goto_3
    iput v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt$LVRadioButtonInternal$1$1;->b:I

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x7ee

    move-object v8, p0

    invoke-static/range {v0 .. v9}, Lcom/airbnb/lottie/compose/LottieAnimatable$DefaultImpls;->a(Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/airbnb/lottie/LottieComposition;IZFLcom/airbnb/lottie/compose/LottieClipSpec;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_6

    :goto_4
    return-object v10

    :cond_6
    :goto_5
    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
