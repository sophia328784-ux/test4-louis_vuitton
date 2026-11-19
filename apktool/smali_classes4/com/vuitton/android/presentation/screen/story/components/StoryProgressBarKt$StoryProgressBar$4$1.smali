.class final Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;
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
    c = "com.vuitton.android.presentation.screen.story.components.StoryProgressBarKt$StoryProgressBar$4$1"
    f = "StoryProgressBar.kt"
    l = {
        0x48,
        0x4e
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/animation/core/Animatable;

.field public final synthetic e:J


# direct methods
.method public constructor <init>(ZLandroidx/compose/animation/core/Animatable;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->c:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->d:Landroidx/compose/animation/core/Animatable;

    iput-wide p3, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->d:Landroidx/compose/animation/core/Animatable;

    iget-wide v3, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->e:J

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->c:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;-><init>(ZLandroidx/compose/animation/core/Animatable;JLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->c:Z

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->d:Landroidx/compose/animation/core/Animatable;

    if-eqz p1, :cond_3

    iput v2, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->b:I

    invoke-virtual {v4, p0}, Landroidx/compose/animation/core/Animatable;->g(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_3
    iget-wide v1, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->e:J

    long-to-float p1, v1

    invoke-virtual {v4}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    mul-float/2addr v1, p1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    invoke-static {p1, v1, v2, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    new-instance v5, Ljava/lang/Float;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    iput v3, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$4$1;->b:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0xc

    move-object v9, p0

    invoke-static/range {v4 .. v10}, Landroidx/compose/animation/core/Animatable;->c(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_0
    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
