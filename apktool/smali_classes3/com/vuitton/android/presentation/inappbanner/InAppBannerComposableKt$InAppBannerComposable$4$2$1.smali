.class final Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;
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
    c = "com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt$InAppBannerComposable$4$2$1"
    f = "InAppBannerComposable.kt"
    l = {
        0x4a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

.field public final synthetic e:Landroidx/compose/animation/core/Animatable;

.field public final synthetic f:Landroidx/compose/animation/core/Animatable;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->d:Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

    iput-object p2, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->e:Landroidx/compose/animation/core/Animatable;

    iput-object p3, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->f:Landroidx/compose/animation/core/Animatable;

    iput-object p4, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->g:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->f:Landroidx/compose/animation/core/Animatable;

    iget-object v4, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->g:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->d:Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

    iget-object v2, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->e:Landroidx/compose/animation/core/Animatable;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;-><init>(Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->d:Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;->d:Ljava/time/Instant;

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-object v0, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->c:Ljava/lang/Object;

    iput v3, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->b:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    new-instance p1, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->e:Landroidx/compose/animation/core/Animatable;

    invoke-direct {p1, v1, v4}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1$1;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {v0, v4, v4, p1, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1$2;

    iget-object v2, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->f:Landroidx/compose/animation/core/Animatable;

    invoke-direct {p1, v2, v4}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1$2;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v4, v4, p1, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1$3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1;->g:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, p0, v4}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$2$1$3;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v4, v4, p1, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
