.class final Landroidx/activity/compose/ComposePredictiveBackHandler;
.super Landroidx/activity/compose/internal/BackHandlerCompat;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/activity/compose/ComposePredictiveBackHandler;",
        "Landroidx/activity/compose/internal/BackHandlerCompat;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "Landroidx/activity/compose/PredictiveBackHandlerInfo;",
        "info",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;Landroidx/activity/compose/PredictiveBackHandlerInfo;)V",
        "activity-compose"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public d:Lkotlin/jvm/functions/Function2;

.field public e:Lkotlinx/coroutines/channels/BufferedChannel;

.field public f:Lkotlinx/coroutines/Job;

.field public g:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/activity/compose/PredictiveBackHandlerInfo;)V
    .locals 1

    invoke-direct {p0, p2}, Landroidx/activity/compose/internal/BackHandlerCompat;-><init>(Landroidx/navigationevent/NavigationEventInfo;)V

    iput-object p1, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Landroidx/activity/compose/ComposePredictiveBackHandler$currentOnBack$1;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-direct {p1, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->e:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "onBack cancelled"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->n(Ljava/lang/Throwable;Z)Z

    :cond_0
    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->f:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v1, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->e:Lkotlinx/coroutines/channels/BufferedChannel;

    iput-object v1, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->f:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->g:Z

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->e:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/compose/ComposePredictiveBackHandler;->b()V

    :cond_0
    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->e:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->g:Z

    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v3, 0x4

    const/4 v4, -0x2

    invoke-static {v4, v3, v0}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->e:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v0, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1;

    invoke-direct {v0, p0, v1}, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1;-><init>(Landroidx/activity/compose/ComposePredictiveBackHandler;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    iget-object v4, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v4, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->f:Lkotlinx/coroutines/Job;

    :cond_1
    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->e:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->l(Ljava/lang/Throwable;)Z

    :cond_2
    iput-boolean v2, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->g:Z

    return-void
.end method

.method public final d(Landroidx/activity/BackEventCompat;)V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->e:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlinx/coroutines/channels/ChannelResult;->b:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    invoke-virtual {p0}, Landroidx/activity/compose/ComposePredictiveBackHandler;->b()V

    invoke-super {p0}, Landroidx/activity/compose/internal/BackHandlerCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->g:Z

    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v1, 0x4

    const/4 v2, -0x2

    invoke-static {v2, v1, v0}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->e:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v0, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1;-><init>(Landroidx/activity/compose/ComposePredictiveBackHandler;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object v3, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v3, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->f:Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-super {p0}, Landroidx/activity/compose/internal/BackHandlerCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/activity/compose/ComposePredictiveBackHandler;->f:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/compose/ComposePredictiveBackHandler;->b()V

    :cond_0
    iget-object v0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->a:Landroidx/activity/compose/internal/BackHandlerCompat$onBackPressedCallback$1;

    invoke-virtual {v0, p1}, Landroidx/activity/OnBackPressedCallback;->f(Z)V

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->b:Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventHandler;->i(Z)V

    return-void
.end method
