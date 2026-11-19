.class final Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;
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
    c = "com.vuitton.android.presentation.compose.components.LVLiveCountdownKt$LVLiveCountdown$1$1"
    f = "LVLiveCountdown.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Ljava/time/Instant;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/compose/runtime/MutableLongState;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/time/Instant;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->c:Ljava/time/Instant;

    iput-object p2, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->e:Landroidx/compose/runtime/MutableLongState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->f:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->e:Landroidx/compose/runtime/MutableLongState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->f:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->c:Ljava/time/Instant;

    iget-object v2, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->d:Lkotlin/jvm/functions/Function0;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;-><init>(Ljava/time/Instant;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableLongState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->b:I

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->c:Ljava/time/Instant;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->e:Landroidx/compose/runtime/MutableLongState;

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v2

    sub-long/2addr v7, v9

    invoke-interface {v6, v7, v8}, Landroidx/compose/runtime/MutableLongState;->D(J)V

    :goto_0
    invoke-interface {v6}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long p1, v7, v9

    if-lez p1, :cond_3

    sget-object p1, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    sget-object p1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, p1}, Lkotlin/time/DurationKt;->g(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    iput v5, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->b:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v2

    sub-long/2addr v7, v9

    invoke-interface {v6, v7, v8}, Landroidx/compose/runtime/MutableLongState;->D(J)V

    invoke-interface {v6}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt;->c(J)Lcom/vuitton/android/presentation/compose/components/LiveEventState;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/components/LVLiveCountdownKt$LVLiveCountdown$1$1;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
