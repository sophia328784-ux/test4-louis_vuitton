.class final Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;
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
    c = "com.vuitton.android.presentation.screen.story.components.StoryProgressBarKt$StoryProgressBar$2$1"
    f = "StoryProgressBar.kt"
    l = {
        0x38,
        0x3a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:J

.field public final synthetic e:Landroidx/compose/animation/core/Animatable;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(ZJLandroidx/compose/animation/core/Animatable;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->c:Z

    iput-wide p2, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->d:J

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->e:Landroidx/compose/animation/core/Animatable;

    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->f:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->e:Landroidx/compose/animation/core/Animatable;

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->f:Z

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->c:Z

    iget-wide v2, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->d:J

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;-><init>(ZJLandroidx/compose/animation/core/Animatable;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->c:Z

    if-nez p1, :cond_4

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->d:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_4

    long-to-float p1, v6

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->e:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    mul-float/2addr v1, p1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x0

    sget-object v4, Landroidx/compose/animation/core/EasingKt;->d:Lov;

    invoke-static {p1, v1, v4, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->f:Z

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->e:Landroidx/compose/animation/core/Animatable;

    if-eqz p1, :cond_3

    iput v2, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->b:I

    invoke-virtual {v5, p0}, Landroidx/compose/animation/core/Animatable;->g(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/Float;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {v6, p1}, Ljava/lang/Float;-><init>(F)V

    iput v3, p0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$2$1;->b:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xc

    move-object v10, p0

    invoke-static/range {v5 .. v11}, Landroidx/compose/animation/core/Animatable;->c(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
