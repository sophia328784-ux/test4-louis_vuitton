.class public interface abstract Landroidx/media3/exoplayer/audio/AudioSink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioSink$OffloadMode;,
        Landroidx/media3/exoplayer/audio/AudioSink$SinkFormatSupport;,
        Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;,
        Landroidx/media3/exoplayer/audio/AudioSink$WriteException;,
        Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;,
        Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;,
        Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;,
        Landroidx/media3/exoplayer/audio/AudioSink$Listener;
    }
.end annotation


# virtual methods
.method public abstract A(Landroidx/media3/common/Format;)I
.end method

.method public abstract B(Z)V
.end method

.method public abstract C(Landroidx/media3/common/AuxEffectInfo;)V
.end method

.method public abstract a()Landroidx/media3/common/PlaybackParameters;
.end method

.method public abstract b(Landroidx/media3/common/Format;)Z
.end method

.method public abstract c()V
.end method

.method public abstract d(Landroidx/media3/common/PlaybackParameters;)V
.end method

.method public abstract e()Z
.end method

.method public f(II)V
    .locals 0

    return-void
.end method

.method public abstract flush()V
.end method

.method public abstract g(F)V
.end method

.method public h(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    return-void
.end method

.method public i(Landroidx/media3/common/util/Clock;)V
    .locals 0

    return-void
.end method

.method public abstract j(Landroidx/media3/common/AudioAttributes;)V
.end method

.method public k(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 0

    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0
.end method

.method public abstract l()Z
.end method

.method public abstract m(I)V
.end method

.method public abstract n()J
.end method

.method public abstract o(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V
.end method

.method public p(I)V
    .locals 0

    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract q()V
.end method

.method public r(Landroidx/media3/exoplayer/audio/AudioOutputProvider;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "AudioSink doesn\'t support setAudioOutputProvider"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public abstract reset()V
.end method

.method public s(I)V
    .locals 0

    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public abstract t()J
.end method

.method public abstract u()V
.end method

.method public abstract v(IJLjava/nio/ByteBuffer;)Z
.end method

.method public abstract w(Landroidx/media3/common/Format;[I)V
.end method

.method public abstract x()V
.end method

.method public abstract y()V
.end method

.method public z()Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
