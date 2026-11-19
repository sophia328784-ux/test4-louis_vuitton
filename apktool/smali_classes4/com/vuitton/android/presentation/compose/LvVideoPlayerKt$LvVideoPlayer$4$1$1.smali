.class final Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;
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
    c = "com.vuitton.android.presentation.compose.LvVideoPlayerKt$LvVideoPlayer$4$1$1"
    f = "LvVideoPlayer.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/media3/exoplayer/ExoPlayer;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(ZLandroidx/media3/exoplayer/ExoPlayer;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;->b:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;->c:Landroidx/media3/exoplayer/ExoPlayer;

    iput-object p3, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;->d:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;->c:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;->d:Landroidx/compose/runtime/MutableState;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;->b:Z

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;-><init>(ZLandroidx/media3/exoplayer/ExoPlayer;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;->b:Z

    iget-object v0, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;->c:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->c()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->pause()V

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$4$1$1;->d:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
