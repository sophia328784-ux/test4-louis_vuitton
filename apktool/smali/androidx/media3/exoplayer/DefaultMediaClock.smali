.class final Landroidx/media3/exoplayer/DefaultMediaClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;
    }
.end annotation


# instance fields
.field public final b:Landroidx/media3/exoplayer/StandaloneMediaClock;

.field public final c:Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;

.field public d:Landroidx/media3/exoplayer/Renderer;

.field public e:Landroidx/media3/exoplayer/MediaClock;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;Landroidx/media3/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->c:Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;

    new-instance p1, Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/StandaloneMediaClock;-><init>(Landroidx/media3/common/util/Clock;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->b:Landroidx/media3/exoplayer/StandaloneMediaClock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->e:Landroidx/media3/exoplayer/MediaClock;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/MediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->b:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->f:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public final b(Landroidx/media3/exoplayer/Renderer;)V
    .locals 2

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->I()Landroidx/media3/exoplayer/MediaClock;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->e:Landroidx/media3/exoplayer/MediaClock;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->e:Landroidx/media3/exoplayer/MediaClock;

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->d:Landroidx/media3/exoplayer/Renderer;

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->b:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->f:Landroidx/media3/common/PlaybackParameters;

    check-cast v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->d(Landroidx/media3/common/PlaybackParameters;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Multiple renderer media clocks enabled."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v0, 0x2

    const/16 v1, 0x3e8

    invoke-direct {p1, v0, p0, v1}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    throw p1

    :cond_1
    return-void
.end method

.method public final d(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->e:Landroidx/media3/exoplayer/MediaClock;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/MediaClock;->d(Landroidx/media3/common/PlaybackParameters;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->e:Landroidx/media3/exoplayer/MediaClock;

    invoke-interface {p1}, Landroidx/media3/exoplayer/MediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->b:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->d(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public final i()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->f:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->b:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->i()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->e:Landroidx/media3/exoplayer/MediaClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/exoplayer/MediaClock;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->f:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->b:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->e:Landroidx/media3/exoplayer/MediaClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/exoplayer/MediaClock;->p()Z

    move-result p0

    return p0
.end method
