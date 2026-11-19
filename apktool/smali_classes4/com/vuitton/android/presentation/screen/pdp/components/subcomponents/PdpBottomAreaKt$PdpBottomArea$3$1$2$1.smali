.class final Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpBottomAreaKt$PdpBottomArea$3$1$2$1"
    f = "PdpBottomArea.kt"
    l = {
        0x83,
        0x86,
        0x8a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroidx/compose/animation/core/Animatable;

.field public g:I

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:Landroidx/compose/runtime/MutableState;

.field public final synthetic k:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public constructor <init>(ZZLandroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->h:Z

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->i:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->j:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->k:Landroidx/compose/animation/core/Animatable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->j:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->k:Landroidx/compose/animation/core/Animatable;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->h:Z

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->i:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;-><init>(ZZLandroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->g:I

    const/16 v8, 0xc8

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->j:Landroidx/compose/runtime/MutableState;

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v10, :cond_2

    if-eq v0, v12, :cond_1

    if-ne v0, v9, :cond_0

    iget v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->c:I

    iget v1, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->b:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->f:Landroidx/compose/animation/core/Animatable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v14, v1

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->e:I

    iget v1, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->d:I

    iget v2, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->c:I

    iget v3, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->b:I

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->f:Landroidx/compose/animation/core/Animatable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v13, v2

    move v14, v3

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->h:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->i:Z

    if-nez v0, :cond_7

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    const/16 v0, 0xc

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v2}, Lkotlin/time/DurationKt;->g(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    iput v10, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->g:I

    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/DelayKt;->c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->k:Landroidx/compose/animation/core/Animatable;

    move v14, v9

    move v13, v11

    :goto_1
    if-ge v13, v14, :cond_7

    new-instance v1, Ljava/lang/Float;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    sget-object v2, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-static {v8, v11, v2, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->f:Landroidx/compose/animation/core/Animatable;

    iput v14, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->b:I

    iput v13, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->c:I

    iput v13, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->d:I

    iput v11, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->e:I

    iput v12, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xc

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/Animatable;->c(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_5

    goto :goto_3

    :cond_5
    move-object v4, v0

    move v0, v11

    move v1, v13

    :goto_2
    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    sget-object v3, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-static {v8, v11, v3, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->f:Landroidx/compose/animation/core/Animatable;

    iput v14, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->b:I

    iput v13, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->c:I

    iput v1, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->d:I

    iput v0, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->e:I

    iput v9, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;->g:I

    move-object v1, v2

    move-object v2, v3

    const/4 v3, 0x0

    move-object v0, v4

    const/4 v4, 0x0

    const/16 v6, 0xc

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/Animatable;->c(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_6

    :goto_3
    return-object v7

    :cond_6
    move-object v2, v0

    move v0, v13

    :goto_4
    add-int/lit8 v13, v0, 0x1

    move-object v0, v2

    goto :goto_1

    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
