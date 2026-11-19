.class public interface abstract Landroidx/media3/exoplayer/Renderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/Renderer$State;,
        Landroidx/media3/exoplayer/Renderer$MessageType;,
        Landroidx/media3/exoplayer/Renderer$WakeupListener;
    }
.end annotation


# virtual methods
.method public abstract A(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;ZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
.end method

.method public abstract B()Landroidx/media3/exoplayer/BaseRenderer;
.end method

.method public D(FF)V
    .locals 0

    return-void
.end method

.method public abstract G()Landroidx/media3/exoplayer/source/SampleStream;
.end method

.method public abstract H()J
.end method

.method public abstract I()Landroidx/media3/exoplayer/MediaClock;
.end method

.method public abstract c()V
.end method

.method public abstract e()Z
.end method

.method public abstract f()I
.end method

.method public abstract g(JJ)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getState()I
.end method

.method public abstract isReady()Z
.end method

.method public abstract j()Z
.end method

.method public abstract l(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/Clock;)V
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public abstract n()V
.end method

.method public abstract r([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract s()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract u()Z
.end method

.method public v(J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public x(JJ)J
    .locals 0

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-wide/32 p0, 0xf4240

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x2710

    return-wide p0
.end method

.method public abstract y(Landroidx/media3/common/Timeline;)V
.end method

.method public abstract z(JZ)V
.end method
