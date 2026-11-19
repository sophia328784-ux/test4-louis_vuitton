.class final Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;
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
    c = "com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt$InAppBannerComposable$4$1$1"
    f = "InAppBannerComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

.field public final synthetic d:Landroidx/compose/animation/core/Animatable;

.field public final synthetic e:Landroidx/compose/animation/core/Animatable;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->c:Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

    iput-object p2, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->d:Landroidx/compose/animation/core/Animatable;

    iput-object p3, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->e:Landroidx/compose/animation/core/Animatable;

    iput-object p4, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->f:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->e:Landroidx/compose/animation/core/Animatable;

    iget-object v4, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->f:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->c:Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

    iget-object v2, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->d:Landroidx/compose/animation/core/Animatable;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;-><init>(Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->c:Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

    iget-boolean v1, p1, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x5dc

    :goto_0
    new-instance v2, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->d:Landroidx/compose/animation/core/Animatable;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1$1;-><init>(Landroidx/compose/animation/core/Animatable;ILkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v4, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1$2;

    iget-object v5, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->e:Landroidx/compose/animation/core/Animatable;

    invoke-direct {v2, v5, v1, v4}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1$2;-><init>(Landroidx/compose/animation/core/Animatable;ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v4, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1$3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v1, p1, p0, v4}, Lcom/vuitton/android/presentation/inappbanner/InAppBannerComposableKt$InAppBannerComposable$4$1$1$3;-><init>(ILcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v4, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
