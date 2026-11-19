.class final Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoRendererEventListener;
.implements Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
.implements Landroidx/media3/exoplayer/text/TextOutput;
.implements Landroidx/media3/exoplayer/metadata/MetadataOutput;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;
.implements Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;
.implements Landroidx/media3/exoplayer/StreamVolumeManager$Listener;
.implements Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;
.implements Landroidx/media3/common/util/StuckPlayerDetector$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->x1()V

    return-void
.end method

.method public final B(Landroidx/media3/common/text/CueGroup;)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->f0:Landroidx/media3/common/text/CueGroup;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v0, Lfw;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lfw;-><init>(Ljava/lang/Object;I)V

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final C(Landroidx/media3/common/Metadata;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata;->a()Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v3

    invoke-interface {v4, v2}, Landroidx/media3/common/Metadata$Entry;->b(Landroidx/media3/common/MediaMetadata$Builder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/media3/common/MediaMetadata;

    invoke-direct {v3, v2}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->a1()Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/MediaMetadata;

    new-instance v0, Landroidx/media3/exoplayer/b;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Landroidx/media3/exoplayer/b;-><init>(Ljava/lang/Object;I)V

    const/16 p0, 0xe

    invoke-virtual {v1, p0, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1
    new-instance p0, Lfw;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lfw;-><init>(Ljava/lang/Object;I)V

    const/16 p1, 0x1c

    invoke-virtual {v1, p1, p0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ListenerSet;->b()V

    return-void
.end method

.method public final D(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 1

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->D(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method public final E(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->E(Ljava/lang/Exception;)V

    return-void
.end method

.method public final F(JJLjava/lang/String;)V
    .locals 6

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->F(JJLjava/lang/String;)V

    return-void
.end method

.method public final G(IJJ)V
    .locals 6

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->G(IJJ)V

    return-void
.end method

.method public final a(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->a(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public final b(Landroidx/media3/common/VideoSize;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l0:Landroidx/media3/common/VideoSize;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v0, Lps;

    invoke-direct {v0, p1}, Lps;-><init>(Landroidx/media3/common/VideoSize;)V

    const/16 p1, 0x19

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->d(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method public final e()V
    .locals 1

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(I)V
    .locals 5

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->C:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance v0, Lnw;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnw;-><init>(II)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v3}, Landroidx/media3/common/util/HandlerWrapper;->h()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v1, v4

    :cond_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->f:I

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->f:I

    new-instance v1, Lr6;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v0, v2}, Lr6;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Landroidx/media3/exoplayer/CodecParameters;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->G:Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;->a(Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;Landroidx/media3/exoplayer/CodecParameters;)V

    return-void
.end method

.method public final i(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->i(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method public final j(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 1

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->j(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public final k(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 1

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->k(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public final l(Z)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->e0:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->e0:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v0, Lwm;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lwm;-><init>(ZI)V

    const/16 p1, 0x17

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final m(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v0, Lc8;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lc8;-><init>(Ljava/util/List;I)V

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final o(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->o(J)V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->U:Landroid/view/Surface;

    invoke-virtual {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    sget p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    sget p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final p(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 1

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->p(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method public final q(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->q(Ljava/lang/Exception;)V

    return-void
.end method

.method public final r(JLjava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->r(JLjava/lang/Object;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->T:Ljava/lang/Object;

    if-ne p1, p3, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance p1, Lmt;

    const/16 p2, 0xf

    invoke-direct {p1, p2}, Lmt;-><init>(I)V

    const/16 p2, 0x1a

    invoke-virtual {p0, p2, p1}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 2

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v1(IZ)V

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    sget p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0, p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->X:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->X:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    return-void
.end method

.method public final t(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->t(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public final u(JJLjava/lang/String;)V
    .locals 6

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->u(JJLjava/lang/String;)V

    return-void
.end method

.method public final v(Landroidx/media3/exoplayer/CodecParameters;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->F:Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;->a(Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;Landroidx/media3/exoplayer/CodecParameters;)V

    return-void
.end method

.method public final w(IJ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->w(IJ)V

    return-void
.end method

.method public final x(Landroidx/media3/common/util/StuckPlayerException;)V
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x2

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, p1, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    sget p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->t1(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    return-void
.end method

.method public final y(IJ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->y(IJ)V

    return-void
.end method

.method public final z(Landroid/view/Surface;)V
    .locals 1

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    return-void
.end method
