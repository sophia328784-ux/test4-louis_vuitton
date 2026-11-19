.class final Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnFrameRenderedListener"
.end annotation


# instance fields
.field public final b:Landroid/os/Handler;

.field public final synthetic c:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;->c:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Landroidx/media3/common/util/Util;->r(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;->b:Landroid/os/Handler;

    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->e(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int p1, p1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;->b:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-static {p0, p2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;->b(J)V

    return-void
.end method

.method public final b(J)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;->c:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->w2:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;

    iget-object v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    if-ne p0, v1, :cond_6

    iget-object p0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-wide v3, 0x7fffffffffffffffL

    cmp-long p0, p1, v3

    const/4 v1, 0x1

    if-nez p0, :cond_1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w1:Z

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U0(J)V

    iget-object p0, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->r2:Landroidx/media3/common/VideoSize;

    sget-object v3, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    invoke-virtual {p0, v3}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s2:Landroidx/media3/common/VideoSize;

    invoke-virtual {p0, v3}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object p0, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s2:Landroidx/media3/common/VideoSize;

    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a(Landroidx/media3/common/VideoSize;)V

    :cond_2
    iget-object p0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y1:Landroidx/media3/exoplayer/DecoderCounters;

    iget v3, p0, Landroidx/media3/exoplayer/DecoderCounters;->e:I

    add-int/2addr v3, v1

    iput v3, p0, Landroidx/media3/exoplayer/DecoderCounters;->e:I

    iget-object p0, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iput v4, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    iget-object v4, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Landroidx/media3/common/util/Clock;

    invoke-interface {v4}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g:J

    if-eqz v3, :cond_5

    iget-object p0, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2:Landroid/view/Surface;

    if-eqz p0, :cond_5

    iget-object v3, v2, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v6, Lkd0;

    invoke-direct {v6, v2, p0, v4, v5}, Lkd0;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iput-boolean v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e2:Z

    :cond_5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z0(J)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iput-object p0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x1:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_6
    :goto_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    int-to-long v4, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;->b(J)V

    const/4 p0, 0x1

    return p0
.end method
