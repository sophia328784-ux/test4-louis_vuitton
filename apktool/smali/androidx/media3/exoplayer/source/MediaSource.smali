.class public interface abstract Landroidx/media3/exoplayer/source/MediaSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;,
        Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;,
        Landroidx/media3/exoplayer/source/MediaSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/os/Handler;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
.end method

.method public abstract b(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
.end method

.method public abstract c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
.end method

.method public abstract d()Landroidx/media3/common/MediaItem;
.end method

.method public abstract e(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V
.end method

.method public abstract f(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V
.end method

.method public abstract g(Landroidx/media3/exoplayer/source/MediaPeriod;)V
.end method

.method public abstract h(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/analytics/PlayerId;)V
.end method

.method public abstract j(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
.end method

.method public k(Landroidx/media3/common/MediaItem;)V
    .locals 0

    return-void
.end method

.method public abstract l(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract m(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract n()V
.end method

.method public o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public p()Landroidx/media3/common/Timeline;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public q(Landroidx/media3/common/MediaItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
