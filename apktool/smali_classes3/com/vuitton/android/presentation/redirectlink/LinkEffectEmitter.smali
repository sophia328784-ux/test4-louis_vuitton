.class public final Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;",
        "",
        "<init>",
        "()V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final b:Lkotlinx/coroutines/flow/StateFlow;

.field public final c:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final d:Lkotlinx/coroutines/flow/Flow;

.field public final e:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final f:Lkotlinx/coroutines/flow/SharedFlow;


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->b:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v0, -0x2

    const/4 v2, 0x6

    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->d:Lkotlinx/coroutines/flow/Flow;

    const/4 v0, 0x7

    invoke-static {v1, v1, v3, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->e:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->f:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method
