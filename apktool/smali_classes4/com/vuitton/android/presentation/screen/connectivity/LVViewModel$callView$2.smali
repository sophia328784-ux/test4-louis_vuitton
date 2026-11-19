.class final Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;
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
    c = "com.vuitton.android.presentation.screen.connectivity.LVViewModel$callView$2"
    f = "LVViewModel.kt"
    l = {
        0x57
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlin/jvm/functions/Function1;

.field public c:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public d:Lkotlinx/coroutines/channels/ChannelIterator;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->j:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->k:Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->j:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->k:Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->i:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->h:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v7, :cond_0

    iget v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->g:I

    iget v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->f:I

    iget v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->e:I

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->d:Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->c:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->b:Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2$1;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->k:Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;

    invoke-direct {v6, p1, v8}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/coroutines/Continuation;)V

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    sget-object v4, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v5, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/ProduceKt;->b(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v5

    :try_start_1
    move-object p1, v5

    check-cast p1, Lkotlinx/coroutines/channels/ChannelCoroutine;

    iget-object p1, p1, Lkotlinx/coroutines/channels/ChannelCoroutine;->b:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->j:Lkotlin/jvm/functions/Function1;

    move-object v4, p1

    move v3, v1

    move-object v6, v2

    move v2, v3

    :goto_0
    :try_start_2
    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->i:Ljava/lang/Object;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->b:Lkotlin/jvm/functions/Function1;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->c:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->d:Lkotlinx/coroutines/channels/ChannelIterator;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->e:I

    iput v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->f:I

    iput v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->g:I

    iput v7, p0, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$callView$2;->h:I

    invoke-interface {v4, p0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v6, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    invoke-interface {v5, v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->cancel(Ljava/util/concurrent/CancellationException;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v5, p0}, Lkotlinx/coroutines/channels/ChannelsKt;->a(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw p1
.end method
