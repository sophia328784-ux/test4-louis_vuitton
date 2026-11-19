.class public final Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "runtime"
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
.field public final synthetic a:Landroidx/media3/exoplayer/ExoPlayer;

.field public final synthetic b:Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$2$1$listener$1;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$2$1$listener$1;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1;->a:Landroidx/media3/exoplayer/ExoPlayer;

    iput-object p2, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1;->b:Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$2$1$listener$1;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1;->c:Z

    iput-object p4, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1;->b:Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$2$1$listener$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1;->a:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->V(Landroidx/media3/common/Player$Listener;)V

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1;->c:Z

    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroidx/media3/common/Player;->release()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LocalLvVideoPlayerWithFade$lambda$8$0$$inlined$onDispose$1;->d:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
