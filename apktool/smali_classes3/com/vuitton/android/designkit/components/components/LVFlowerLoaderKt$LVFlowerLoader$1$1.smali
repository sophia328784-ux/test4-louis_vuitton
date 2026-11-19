.class final Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;
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
    c = "com.vuitton.android.designkit.components.components.LVFlowerLoaderKt$LVFlowerLoader$1$1"
    f = "LVFlowerLoader.kt"
    l = {
        0x3a,
        0x42,
        0x48,
        0x4b,
        0x51,
        0x57
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:F

.field public c:I

.field public final synthetic d:Lcom/airbnb/lottie/compose/LottieAnimatable;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/compose/LottieAnimatable;ZLcom/airbnb/lottie/compose/LottieCompositionResultImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->d:Lcom/airbnb/lottie/compose/LottieAnimatable;

    iput-boolean p2, p0, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->e:Z

    iput-object p3, p0, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->f:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;

    iget-boolean v0, p0, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->e:Z

    iget-object v1, p0, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->f:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    iget-object p0, p0, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->d:Lcom/airbnb/lottie/compose/LottieAnimatable;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatable;ZLcom/airbnb/lottie/compose/LottieCompositionResultImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v8, p0

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->c:I

    const/16 v11, 0xc

    iget-object v12, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->d:Lcom/airbnb/lottie/compose/LottieAnimatable;

    const/high16 v13, 0x3f000000    # 0.5f

    iget-object v14, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->f:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    packed-switch v0, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget v0, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->b:F

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    iget v0, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->b:F

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v15, v0

    goto/16 :goto_1

    :pswitch_2
    iget v0, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->b:F

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_0
    invoke-interface {v12}, Lcom/airbnb/lottie/compose/LottieAnimationState;->c()F

    move-result v15

    iget-boolean v0, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->e:Z

    move v1, v0

    iget-object v0, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->d:Lcom/airbnb/lottie/compose/LottieAnimatable;

    if-nez v1, :cond_1

    invoke-virtual {v14}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    iput v15, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->b:F

    const/4 v2, 0x1

    iput v2, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->c:I

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x7ea

    invoke-static/range {v0 .. v9}, Lcom/airbnb/lottie/compose/LottieAnimatable$DefaultImpls;->a(Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/airbnb/lottie/LottieComposition;IZFLcom/airbnb/lottie/compose/LottieClipSpec;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_6

    goto/16 :goto_3

    :cond_1
    const v1, 0x3eff7cee    # 0.499f

    cmpg-float v1, v15, v1

    if-gez v1, :cond_3

    invoke-virtual {v14}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    new-instance v5, Lcom/airbnb/lottie/compose/LottieClipSpec$Progress;

    invoke-direct {v5, v15, v13}, Lcom/airbnb/lottie/compose/LottieClipSpec$Progress;-><init>(FF)V

    iput v15, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->b:F

    const/4 v2, 0x2

    iput v2, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x7ca

    invoke-static/range {v0 .. v9}, Lcom/airbnb/lottie/compose/LottieAnimatable$DefaultImpls;->a(Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/airbnb/lottie/LottieComposition;IZFLcom/airbnb/lottie/compose/LottieClipSpec;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_2

    goto :goto_3

    :cond_2
    move v0, v15

    :goto_0
    invoke-virtual {v14}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    iput v0, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->b:F

    const/4 v0, 0x3

    iput v0, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->c:I

    invoke-static {v12, v1, v13, v8, v11}, Lcom/airbnb/lottie/compose/LottieAnimatable$DefaultImpls;->b(Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/airbnb/lottie/LottieComposition;FLkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_6

    goto :goto_3

    :cond_3
    invoke-virtual {v14}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    new-instance v5, Lcom/airbnb/lottie/compose/LottieClipSpec$Progress;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v5, v15, v2}, Lcom/airbnb/lottie/compose/LottieClipSpec$Progress;-><init>(FF)V

    iput v15, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->b:F

    const/4 v2, 0x4

    iput v2, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x7ca

    invoke-static/range {v0 .. v9}, Lcom/airbnb/lottie/compose/LottieAnimatable$DefaultImpls;->a(Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/airbnb/lottie/LottieComposition;IZFLcom/airbnb/lottie/compose/LottieClipSpec;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    invoke-virtual {v14}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    new-instance v5, Lcom/airbnb/lottie/compose/LottieClipSpec$Progress;

    const/4 v0, 0x0

    invoke-direct {v5, v0, v13}, Lcom/airbnb/lottie/compose/LottieClipSpec$Progress;-><init>(FF)V

    iput v15, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->b:F

    const/4 v0, 0x5

    iput v0, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->c:I

    iget-object v0, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->d:Lcom/airbnb/lottie/compose/LottieAnimatable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x7ca

    invoke-static/range {v0 .. v9}, Lcom/airbnb/lottie/compose/LottieAnimatable$DefaultImpls;->a(Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/airbnb/lottie/LottieComposition;IZFLcom/airbnb/lottie/compose/LottieClipSpec;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_5

    goto :goto_3

    :cond_5
    move v0, v15

    :goto_2
    invoke-virtual {v14}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    iput v0, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->b:F

    const/4 v0, 0x6

    iput v0, v8, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt$LVFlowerLoader$1$1;->c:I

    invoke-static {v12, v1, v13, v8, v11}, Lcom/airbnb/lottie/compose/LottieAnimatable$DefaultImpls;->b(Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/airbnb/lottie/LottieComposition;FLkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_6

    :goto_3
    return-object v10

    :cond_6
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
