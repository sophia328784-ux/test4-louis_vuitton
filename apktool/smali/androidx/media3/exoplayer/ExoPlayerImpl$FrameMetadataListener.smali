.class final Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;
.implements Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;
.implements Landroidx/media3/exoplayer/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameMetadataListener"
.end annotation


# instance fields
.field public b:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field public c:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

.field public d:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field public e:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;


# virtual methods
.method public final a(J[F)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->e:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;->a(J[F)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->c:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;->a(J[F)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->e:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;->b()V

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->c:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;->b()V

    :cond_1
    return-void
.end method

.method public final d(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->d:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->d(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->b:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz p0, :cond_1

    invoke-interface/range {p0 .. p6}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->d(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public final q(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->d:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->e:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    return-void

    :cond_1
    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoFrameMetadataListener()Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->d:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getCameraMotionListener()Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->e:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    return-void

    :cond_2
    check-cast p2, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->c:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    return-void

    :cond_3
    check-cast p2, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->b:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    return-void
.end method
