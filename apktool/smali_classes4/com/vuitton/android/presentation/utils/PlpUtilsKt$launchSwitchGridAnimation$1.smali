.class final Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;
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
    c = "com.vuitton.android.presentation.utils.PlpUtilsKt$launchSwitchGridAnimation$1"
    f = "PlpUtils.kt"
    l = {
        0x2d,
        0x34,
        0x35
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Landroidx/compose/animation/core/Animatable;

.field public final synthetic h:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->f:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->g:Landroidx/compose/animation/core/Animatable;

    iput-object p3, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->h:Landroidx/compose/animation/core/Animatable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->g:Landroidx/compose/animation/core/Animatable;

    iget-object v2, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->h:Landroidx/compose/animation/core/Animatable;

    iget-object p0, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->f:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->d:I

    iget-object v3, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->f:Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Job;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1$firstJob$1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->g:Landroidx/compose/animation/core/Animatable;

    invoke-direct {p1, v2, v7}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1$firstJob$1;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, v7, p1, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v2

    iput-object v0, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->e:Ljava/lang/Object;

    iput-object v2, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->b:Ljava/lang/Object;

    iput v6, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->d:I

    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    new-instance p1, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1$secondJob$1;

    iget-object v6, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->h:Landroidx/compose/animation/core/Animatable;

    invoke-direct {p1, v6, v7}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1$secondJob$1;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, v7, p1, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v7, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->e:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->c:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->d:I

    invoke-interface {v2, p0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    iput-object v7, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->e:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->b:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/utils/PlpUtilsKt$launchSwitchGridAnimation$1;->d:I

    invoke-interface {v0, p0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
