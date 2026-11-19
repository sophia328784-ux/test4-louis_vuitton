.class public interface abstract Landroidx/media3/exoplayer/audio/AudioOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;,
        Landroidx/media3/exoplayer/audio/AudioOutput$Listener;
    }
.end annotation


# virtual methods
.method public abstract a()Landroidx/media3/common/PlaybackParameters;
.end method

.method public abstract c()V
.end method

.method public abstract d(Landroidx/media3/common/PlaybackParameters;)V
.end method

.method public abstract f(II)V
.end method

.method public abstract g(F)V
.end method

.method public abstract getAudioSessionId()I
.end method

.method public h(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    return-void
.end method

.method public abstract i()J
.end method

.method public abstract j()Z
.end method

.method public abstract k()I
.end method

.method public abstract l(I)V
.end method

.method public abstract m()V
.end method

.method public abstract n(F)V
.end method

.method public abstract o()Z
.end method

.method public abstract p()J
.end method

.method public abstract pause()V
.end method

.method public abstract q(IJLjava/nio/ByteBuffer;)Z
.end method

.method public abstract release()V
.end method

.method public abstract setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
.end method

.method public abstract stop()V
.end method
