.class final Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;
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
    c = "com.vuitton.android.presentation.screen.livevideo.LiveVideoActivity$onCreate$1$1$1"
    f = "LiveVideoActivity.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->c:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->c:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->q:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->d:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->c:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->B()Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;->d:Landroid/content/Context;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p0

    sget-object v1, Landroidx/media3/common/MediaItem;->g:Landroidx/media3/common/MediaItem;

    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaItem$Builder;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v1, p1}, Landroidx/media3/common/BasePlayer;->R(Landroidx/media3/common/MediaItem;)V

    invoke-interface {p0}, Landroidx/media3/common/Player;->f()V

    invoke-interface {p0, v2}, Landroidx/media3/common/Player;->P(Z)V

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;->K6(Landroidx/media3/exoplayer/ExoPlayer;)V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->d:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/media3/common/Player;->O0()Landroidx/media3/common/MediaItem;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->d:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/media3/common/Player;->stop()V

    invoke-interface {p0}, Landroidx/media3/common/Player;->D()V

    sget-object v0, Landroidx/media3/common/MediaItem;->g:Landroidx/media3/common/MediaItem;

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$Builder;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/common/Player;->R(Landroidx/media3/common/MediaItem;)V

    invoke-interface {p0}, Landroidx/media3/common/Player;->f()V

    invoke-interface {p0, v2}, Landroidx/media3/common/Player;->P(Z)V

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
