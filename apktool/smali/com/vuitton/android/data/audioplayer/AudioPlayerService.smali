.class public final Lcom/vuitton/android/data/audioplayer/AudioPlayerService;
.super Landroidx/media3/session/MediaSessionService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/audioplayer/AudioPlayerService$MediaSessionCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/data/audioplayer/AudioPlayerService;",
        "Landroidx/media3/session/MediaSessionService;",
        "<init>",
        "()V",
        "MediaSessionCallback",
        "data"
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
.field public k:Landroidx/media3/session/MediaSession;

.field public l:Landroidx/media3/exoplayer/ExoPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;->k:Landroidx/media3/session/MediaSession;

    return-object p0
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroidx/media3/session/MediaSessionService;->onCreate()V

    new-instance v0, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroidx/media3/common/AudioAttributes$Builder;->c:I

    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes$Builder;->a()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroidx/media3/common/Player;->p0(Landroidx/media3/common/AudioAttributes;Z)V

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->T0()V

    iput-object v2, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;->l:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v0, Landroidx/media3/session/MediaSession$Builder;

    iget-object v1, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;->l:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_0

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/MediaSession$Builder;-><init>(Landroid/content/Context;Landroidx/media3/common/Player;)V

    new-instance v1, Lcom/vuitton/android/data/audioplayer/AudioPlayerService$MediaSessionCallback;

    invoke-direct {v1, p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerService$MediaSessionCallback;-><init>(Lcom/vuitton/android/data/audioplayer/AudioPlayerService;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaSession$Builder;->b(Landroidx/media3/session/MediaSession$Callback;)V

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession$Builder;->a()Landroidx/media3/session/MediaSession;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;->k:Landroidx/media3/session/MediaSession;

    return-void

    :cond_0
    const-string p0, "exoPlayer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;->k:Landroidx/media3/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->a()Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->pause()V

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->a()Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->release()V

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;->k:Landroidx/media3/session/MediaSession;

    :cond_0
    invoke-super {p0}, Landroidx/media3/session/MediaSessionService;->onDestroy()V

    return-void
.end method

.method public final onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerService;->k:Landroidx/media3/session/MediaSession;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->a()Landroidx/media3/common/Player;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->a()Landroidx/media3/common/Player;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/Player;->stop()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void
.end method
