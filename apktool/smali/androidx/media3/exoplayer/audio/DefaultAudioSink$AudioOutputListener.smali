.class final Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioOutput$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioOutputListener"
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

.field public final synthetic b:Landroidx/media3/exoplayer/audio/DefaultAudioSink;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->a:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz p0, :cond_1

    check-cast p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->V1:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->K1:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lxb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lxb;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz p0, :cond_1

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 14

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz p0, :cond_2

    iget-object p0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    div-int/2addr p0, v1

    int-to-long v1, p0

    iget-object p0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioOutput;->k()I

    move-result p0

    invoke-static {p0, v1, v2}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:J

    sub-long v12, v3, v5

    iget-object p0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget v9, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v10

    check-cast p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object v8, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->K1:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p0, v8, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz p0, :cond_2

    new-instance v7, Lwb;

    invoke-direct/range {v7 .. v13}, Lwb;-><init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;IJJ)V

    invoke-virtual {p0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final onReleased()V
    .locals 8

    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->a:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    iget v3, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    iget v4, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->c:I

    iget-boolean v5, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->d:Z

    iget-boolean v6, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->e:Z

    iget v7, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;-><init>(IIIZZI)V

    check-cast v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    iget-object p0, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->K1:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v2, Lyb;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lyb;-><init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
