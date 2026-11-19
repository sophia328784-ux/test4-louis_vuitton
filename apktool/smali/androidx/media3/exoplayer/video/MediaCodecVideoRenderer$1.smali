.class Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$Listener;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->b:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->b:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->b()V

    :cond_0
    return-void
.end method

.method public final b(Landroidx/media3/common/VideoSize;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 6

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->b:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    new-instance v5, Lkd0;

    invoke-direct {v5, v1, v0, v3, v4}, Lkd0;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e2:Z

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->b:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i1(II)V

    :cond_0
    return-void
.end method
