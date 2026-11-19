.class final Landroidx/media3/exoplayer/ExoPlayerImpl;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;
    }
.end annotation


# static fields
.field public static final synthetic t0:I


# instance fields
.field public final A:Landroidx/media3/common/util/WifiLockManager;

.field public final B:J

.field public final C:Landroidx/media3/common/util/BackgroundThreadStateHandler;

.field public final D:Landroidx/media3/common/util/StuckPlayerDetector;

.field public final E:Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;

.field public final F:Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

.field public final G:Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

.field public H:I

.field public I:Z

.field public J:I

.field public K:I

.field public L:Z

.field public M:Z

.field public N:Lcom/google/common/collect/ImmutableSet;

.field public final O:Landroidx/media3/exoplayer/ScrubbingModeParameters;

.field public P:Landroidx/media3/exoplayer/source/ShuffleOrder;

.field public Q:Landroidx/media3/common/Player$Commands;

.field public R:Landroidx/media3/common/MediaMetadata;

.field public S:Landroidx/media3/common/MediaMetadata;

.field public T:Ljava/lang/Object;

.field public U:Landroid/view/Surface;

.field public V:Landroid/view/SurfaceHolder;

.field public W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field public X:Z

.field public Y:Landroid/view/TextureView;

.field public Z:I

.field public a0:Landroidx/media3/common/util/Size;

.field public final b:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public b0:Landroidx/media3/common/AudioAttributes;

.field public final c:Landroidx/media3/common/Player$Commands;

.field public c0:F

.field public final d:Landroidx/media3/common/util/ConditionVariable;

.field public d0:F

.field public final e:Landroid/content/Context;

.field public e0:Z

.field public final f:Landroidx/media3/common/Player;

.field public f0:Landroidx/media3/common/text/CueGroup;

.field public final g:[Landroidx/media3/exoplayer/Renderer;

.field public final g0:Z

.field public final h:[Landroidx/media3/exoplayer/Renderer;

.field public h0:Z

.field public final i:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field public final i0:I

.field public final j:Landroidx/media3/common/util/HandlerWrapper;

.field public j0:Z

.field public final k:Landroidx/media3/exoplayer/e;

.field public final k0:Landroidx/media3/common/DeviceInfo;

.field public final l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public l0:Landroidx/media3/common/VideoSize;

.field public final m:Landroidx/media3/common/util/ListenerSet;

.field public final m0:J

.field public final n:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final n0:J

.field public final o:Landroidx/media3/common/Timeline$Period;

.field public final o0:J

.field public final p:Ljava/util/ArrayList;

.field public p0:Landroidx/media3/common/MediaMetadata;

.field public final q:Z

.field public q0:Landroidx/media3/exoplayer/PlaybackInfo;

.field public final r:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field public r0:I

.field public final s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field public s0:J

.field public final t:Landroid/os/Looper;

.field public final u:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field public final v:Landroidx/media3/common/util/SystemClock;

.field public final w:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field public final x:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

.field public final y:Landroidx/media3/common/audio/AudioBecomingNoisyManager;

.field public final z:Landroidx/media3/common/util/WakeLockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;Landroidx/media3/common/Player;)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v2, " [AndroidXMedia3/1.10.1] ["

    const-string v4, "Init "

    invoke-direct {v1}, Landroidx/media3/common/BasePlayer;-><init>()V

    new-instance v5, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v5}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->d:Landroidx/media3/common/util/ConditionVariable;

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a:Landroid/content/Context;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->i:Landroid/os/Looper;

    iget-object v15, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->b:Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->e:Landroid/content/Context;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->h:Lcom/google/common/base/Function;

    invoke-interface {v2, v15}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->j:I

    iput v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->i0:I

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->k:Landroidx/media3/common/AudioAttributes;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->b0:Landroidx/media3/common/AudioAttributes;

    iget v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->l:I

    iput v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->Z:I

    iput-boolean v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->e0:Z

    iget-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->u:J

    iput-wide v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->B:J

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->x:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->c:Lcom/google/common/base/Supplier;

    invoke-interface {v6}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Landroidx/media3/exoplayer/RenderersFactory;

    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v18, v2

    move-object/from16 v17, v4

    invoke-interface/range {v16 .. v21}, Landroidx/media3/exoplayer/RenderersFactory;->a(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;

    move-result-object v2

    move-object/from16 v6, v16

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->g:[Landroidx/media3/exoplayer/Renderer;

    array-length v4, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v8

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->q(Z)V

    array-length v2, v2

    new-array v2, v2, [Landroidx/media3/exoplayer/Renderer;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->h:[Landroidx/media3/exoplayer/Renderer;

    move v2, v8

    :goto_1
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->h:[Landroidx/media3/exoplayer/Renderer;

    array-length v10, v4

    const/4 v11, 0x0

    if-ge v2, v10, :cond_1

    iget-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->g:[Landroidx/media3/exoplayer/Renderer;

    aget-object v10, v10, v2

    invoke-interface {v6, v10}, Landroidx/media3/exoplayer/RenderersFactory;->b(Landroidx/media3/exoplayer/Renderer;)V

    aput-object v11, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->e:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iput-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->i:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->d:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->g:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->u:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->m:Z

    iput-boolean v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q:Z

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->n:Landroidx/media3/exoplayer/SeekParameters;

    iget-wide v12, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->p:J

    iput-wide v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0:J

    iget-wide v12, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->q:J

    iput-wide v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:J

    iget-wide v12, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->r:J

    iput-wide v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0:J

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->o:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->O:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->t:Landroid/os/Looper;

    iput-object v15, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->v:Landroidx/media3/common/util/SystemClock;

    if-nez p2, :cond_2

    move-object v10, v1

    goto :goto_2

    :cond_2
    move-object/from16 v10, p2

    :goto_2
    iput-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->f:Landroidx/media3/common/Player;

    new-instance v12, Landroidx/media3/common/util/ListenerSet;

    new-instance v13, Landroidx/media3/exoplayer/e;

    invoke-direct {v13, v1, v8}, Landroidx/media3/exoplayer/e;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;I)V

    invoke-direct {v12, v5, v15, v13}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v12, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v12}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    new-instance v13, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v13, v8}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    iput-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    sget-object v32, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;->b:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    new-instance v13, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->g:[Landroidx/media3/exoplayer/Renderer;

    array-length v8, v7

    new-array v8, v8, [Landroidx/media3/exoplayer/RendererConfiguration;

    array-length v7, v7

    new-array v7, v7, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-object/from16 v17, v2

    sget-object v2, Landroidx/media3/common/Tracks;->b:Landroidx/media3/common/Tracks;

    invoke-direct {v13, v8, v7, v2, v11}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    iput-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->b:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    new-instance v2, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const/16 v7, 0x14

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    iget-object v8, v2, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v8, v7}, Landroidx/media3/common/FlagSet$Builder;->b([I)V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v14, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    const/16 v8, 0x1d

    invoke-virtual {v2, v8, v7}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    const/16 v7, 0x17

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    const/16 v7, 0x19

    invoke-virtual {v2, v7, v8}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    const/16 v7, 0x21

    invoke-virtual {v2, v7, v8}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    const/16 v7, 0x1a

    invoke-virtual {v2, v7, v8}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    const/16 v7, 0x22

    invoke-virtual {v2, v7, v8}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    invoke-virtual {v2}, Landroidx/media3/common/Player$Commands$Builder;->c()Landroidx/media3/common/Player$Commands;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->c:Landroidx/media3/common/Player$Commands;

    new-instance v8, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v8}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    iget-object v7, v8, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    iget-object v2, v2, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v36, v3

    const/4 v11, 0x0

    :goto_3
    iget-object v3, v2, Landroidx/media3/common/FlagSet;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v11, v3, :cond_3

    invoke-virtual {v2, v11}, Landroidx/media3/common/FlagSet;->b(I)I

    move-result v3

    invoke-virtual {v7, v3}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    const/16 v3, 0xa

    invoke-virtual {v7, v3}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    invoke-virtual {v8}, Landroidx/media3/common/Player$Commands$Builder;->c()Landroidx/media3/common/Player$Commands;

    move-result-object v3

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->Q:Landroidx/media3/common/Player$Commands;

    const/4 v3, 0x0

    invoke-virtual {v15, v5, v3}, Landroidx/media3/common/util/SystemClock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v7

    iput-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->j:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v7, Landroidx/media3/exoplayer/e;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v8}, Landroidx/media3/exoplayer/e;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;I)V

    iput-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->k:Landroidx/media3/exoplayer/e;

    invoke-static {v13}, Landroidx/media3/exoplayer/PlaybackInfo;->k(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v8

    iput-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v8, v10, v5}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->w0(Landroidx/media3/common/Player;Landroid/os/Looper;)V

    new-instance v8, Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->B:Ljava/lang/String;

    invoke-direct {v8, v10}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->e:Landroid/content/Context;

    move-object/from16 v16, v12

    iget-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->g:[Landroidx/media3/exoplayer/Renderer;

    move-object/from16 v28, v15

    move-object v15, v13

    iget-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->h:[Landroidx/media3/exoplayer/Renderer;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->f:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/LoadControl;

    iget v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:I

    move-object/from16 v19, v2

    iget-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:Z

    move/from16 v20, v2

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-object/from16 v21, v2

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->s:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    move-object/from16 v23, v2

    move/from16 v22, v3

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->t:J

    move-wide/from16 v24, v2

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->x:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->D:Z

    move/from16 v18, v22

    move-object/from16 v22, v23

    move-wide/from16 v23, v24

    const/16 v26, 0x0

    const/16 v25, 0x0

    move-object/from16 v27, v26

    const/16 v26, 0x0

    const/16 v31, 0x0

    move-object/from16 v33, v2

    move/from16 v34, v3

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v2, v16

    move-object/from16 v16, v19

    move/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v8, v27

    move-object/from16 v21, v4

    move-object/from16 v27, v5

    invoke-direct/range {v10 .. v34}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;-><init>(Landroid/content/Context;[Landroidx/media3/exoplayer/Renderer;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/LivePlaybackSpeedControl;JZZLandroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/PlaybackLooperProvider;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;Z)V

    move-object/from16 v3, v17

    move-object/from16 v15, v28

    move-object/from16 v4, v30

    iget-object v11, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    iput-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v12, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:Landroid/os/Looper;

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->c0:F

    const/4 v7, 0x0

    iput v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:I

    sget-object v7, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    iput-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/MediaMetadata;

    iput-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    iput-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:Landroidx/media3/common/MediaMetadata;

    const/4 v13, -0x1

    iput v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->r0:I

    sget-object v7, Landroidx/media3/common/text/CueGroup;->d:Landroidx/media3/common/text/CueGroup;

    iput-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->f0:Landroidx/media3/common/text/CueGroup;

    const/4 v7, 0x1

    iput-boolean v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->g0:Z

    iget-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-virtual {v1, v14}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y(Landroidx/media3/common/Player$Listener;)V

    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v3, v14, v7}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->c(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v14, v2, :cond_4

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->e:Landroid/content/Context;

    iget-boolean v7, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->z:Z

    iget-object v10, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:Landroid/os/Looper;

    invoke-virtual {v15, v10, v8}, Landroidx/media3/common/util/SystemClock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v10

    new-instance v2, Landroidx/media3/exoplayer/l;

    invoke-direct {v2, v3, v7, v1, v4}, Landroidx/media3/exoplayer/l;-><init>(Landroid/content/Context;ZLandroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    invoke-interface {v10, v2}, Landroidx/media3/common/util/HandlerWrapper;->k(Ljava/lang/Runnable;)Z

    :cond_4
    new-instance v2, Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance v7, Landroidx/media3/exoplayer/e;

    const/4 v10, 0x2

    invoke-direct {v7, v1, v10}, Landroidx/media3/exoplayer/e;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;I)V

    move-object v4, v12

    move-object/from16 v3, v36

    const/16 v16, 0x1f

    const/16 v35, 0x1

    const/16 v37, 0x4

    move-object v12, v6

    move-object v6, v15

    const/16 v15, 0x22

    invoke-direct/range {v2 .. v7}, Landroidx/media3/common/util/BackgroundThreadStateHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;)V

    move-object/from16 v28, v6

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->C:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    new-instance v5, Landroidx/media3/exoplayer/f;

    invoke-direct {v5, v1}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->a(Ljava/lang/Runnable;)V

    move v2, v10

    new-instance v10, Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    move-object v5, v11

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a:Landroid/content/Context;

    move v6, v13

    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->i:Landroid/os/Looper;

    move v7, v14

    iget-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    move-object v2, v12

    move/from16 v8, v35

    move-object v12, v4

    move v4, v15

    move-object/from16 v15, v28

    invoke-direct/range {v10 .. v15}, Landroidx/media3/common/audio/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;Landroidx/media3/common/util/Clock;)V

    iput-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->y:Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->a(Z)V

    iget v10, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->v:I

    const v11, 0x7fffffff

    if-eq v10, v11, :cond_6

    iget v10, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->w:I

    if-eq v10, v11, :cond_6

    iget v10, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->x:I

    if-eq v10, v11, :cond_6

    iget v10, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->y:I

    if-ne v10, v11, :cond_5

    goto :goto_4

    :cond_5
    move v10, v8

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v10, 0x0

    :goto_5
    new-instance v11, Landroidx/media3/common/util/WakeLockManager;

    invoke-direct {v11, v9, v12, v15}, Landroidx/media3/common/util/WakeLockManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V

    iput-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->z:Landroidx/media3/common/util/WakeLockManager;

    iget-boolean v13, v11, Landroidx/media3/common/util/WakeLockManager;->d:Z

    if-ne v13, v10, :cond_7

    goto :goto_6

    :cond_7
    iput-boolean v10, v11, Landroidx/media3/common/util/WakeLockManager;->d:Z

    iget-boolean v13, v11, Landroidx/media3/common/util/WakeLockManager;->e:Z

    invoke-virtual {v11, v10, v13}, Landroidx/media3/common/util/WakeLockManager;->a(ZZ)V

    :goto_6
    new-instance v10, Landroidx/media3/common/util/WifiLockManager;

    invoke-direct {v10, v9, v12, v15}, Landroidx/media3/common/util/WifiLockManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V

    iput-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->A:Landroidx/media3/common/util/WifiLockManager;

    sget-object v10, Landroidx/media3/common/DeviceInfo;->e:Landroidx/media3/common/DeviceInfo;

    iput-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->k0:Landroidx/media3/common/DeviceInfo;

    sget-object v10, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    iput-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->l0:Landroidx/media3/common/VideoSize;

    sget-object v10, Landroidx/media3/common/util/Size;->c:Landroidx/media3/common/util/Size;

    iput-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->a0:Landroidx/media3/common/util/Size;

    if-lt v7, v4, :cond_8

    new-instance v11, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;

    invoke-direct {v11, v1, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroid/content/Context;)V

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    :goto_7
    iput-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->E:Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

    invoke-direct {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;-><init>()V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->F:Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

    invoke-direct {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;-><init>()V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->G:Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

    new-instance v4, Landroidx/media3/common/util/StuckPlayerDetector;

    move-object v12, v2

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    move-object v7, v4

    iget v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->v:I

    move-object v9, v5

    iget v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->w:I

    move v10, v6

    iget v6, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->x:I

    iget v0, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->y:I

    move-object v11, v7

    move v7, v0

    move-object v0, v11

    move v13, v10

    move/from16 v11, v16

    move/from16 v14, v37

    move-object v10, v9

    move-object v9, v3

    move-object v3, v15

    invoke-direct/range {v0 .. v7}, Landroidx/media3/common/util/StuckPlayerDetector;-><init>(Landroidx/media3/common/Player;Landroidx/media3/common/util/StuckPlayerDetector$Callback;Landroidx/media3/common/util/Clock;IIII)V

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->D:Landroidx/media3/common/util/StuckPlayerDetector;

    const/16 v0, 0x26

    invoke-interface {v10, v0, v12}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->b0:Landroidx/media3/common/AudioAttributes;

    const/4 v7, 0x0

    invoke-interface {v10, v11, v7, v7, v0}, Landroidx/media3/common/util/HandlerWrapper;->f(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->b0:Landroidx/media3/common/AudioAttributes;

    const/4 v2, 0x3

    invoke-virtual {v1, v8, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(IILjava/lang/Object;)V

    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->Z:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v14, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(IILjava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {v1, v2, v0, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(IILjava/lang/Object;)V

    iget-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->e0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v1, v8, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(IILjava/lang/Object;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->x:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(IILjava/lang/Object;)V

    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->i0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v1, v13, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->d:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->d()Z

    return-void

    :goto_8
    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->d:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v1}, Landroidx/media3/common/util/ConditionVariable;->d()Z

    throw v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static i1(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 6

    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iget-object v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget v1, v1, Landroidx/media3/common/Timeline$Period;->c:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->l:J

    return-wide v0

    :cond_0
    iget-wide v0, v1, Landroidx/media3/common/Timeline$Period;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static j1(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->b(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/media3/common/MediaMetadata;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public final A0(ILjava/util/List;)V
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->p()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r0:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    move-object v1, v2

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q1(Ljava/util/List;IJZ)V

    return-void

    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v3, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Z0(Landroidx/media3/exoplayer/PlaybackInfo;ILjava/util/ArrayList;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final B(Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o1()V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    return-void
.end method

.method public final B0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public final C()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final C0()Landroidx/media3/common/MediaMetadata;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public final E0(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroidx/media3/common/util/HandlerWrapper;->i(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    new-instance v0, Landroidx/media3/exoplayer/i;

    invoke-direct {v0, p1, v2}, Landroidx/media3/exoplayer/i;-><init>(II)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->u1()V

    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_0
    return-void
.end method

.method public final F0(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->i:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d0()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->M:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroidx/media3/common/TrackSelectionParameters;->I:Lcom/google/common/collect/ImmutableSet;

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->N:Lcom/google/common/collect/ImmutableSet;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->O:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    iget-object v2, v2, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters;->a()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->m(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->b()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->b()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->h(Landroidx/media3/common/TrackSelectionParameters;)V

    :cond_3
    invoke-virtual {v1, p1}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroidx/media3/exoplayer/b;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/b;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x13

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final G(IZ)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    return-void
.end method

.method public final G0(Landroid/view/SurfaceView;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->b1()V

    :cond_1
    return-void
.end method

.method public final H()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    return-void
.end method

.method public final I(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    return-void
.end method

.method public final I0(III)V
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    if-ltz p3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v1, v7, p1

    sub-int v1, v5, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge p1, v5, :cond_2

    if-eq p1, v7, :cond_2

    if-ne p1, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p()Landroidx/media3/common/Timeline;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    invoke-static {v4, p1, v7, v8}, Landroidx/media3/common/util/Util;->Q(Ljava/util/ArrayList;III)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/ShuffleOrder;->d()Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    new-instance v2, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-direct {v2, v4, v3}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    iget-object v9, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h1(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {p0, v9, v2, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-direct {v4, p1, v7, v8, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;-><init>(IIILandroidx/media3/exoplayer/source/ShuffleOrder;)V

    iget-object v2, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v3, 0x13

    invoke-interface {v2, v3, v4}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final J(Landroid/view/SurfaceView;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    instance-of v0, p1, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o1()V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r1(Landroid/view/SurfaceHolder;)V

    return-void

    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o1()V

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->x:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d1(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlayerMessage;->i:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    const/16 v1, 0x2710

    iput v1, v0, Landroidx/media3/exoplayer/PlayerMessage;->e:I

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/PlayerMessage;->i:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object v1, v0, Landroidx/media3/exoplayer/PlayerMessage;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->b()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r1(Landroid/view/SurfaceHolder;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->O(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final K(IILjava/util/List;)V
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le p1, v7, :cond_1

    return-void

    :cond_1
    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v7, v2, p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_2

    goto :goto_2

    :cond_2
    move v7, p1

    :goto_1
    if-ge v7, v2, :cond_6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v8, v8, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->b:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    sub-int v9, v7, p1

    invoke-interface {p3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/MediaItem;

    iget-object v8, v8, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-interface {v8, v9}, Landroidx/media3/exoplayer/source/MediaSource;->q(Landroidx/media3/common/MediaItem;)Z

    move-result v8

    if-nez v8, :cond_5

    :goto_2
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r0:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q1(Ljava/util/List;IJZ)V

    return-void

    :cond_4
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v3, v2, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Z0(Landroidx/media3/exoplayer/PlaybackInfo;ILjava/util/ArrayList;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n1(Landroidx/media3/exoplayer/PlaybackInfo;II)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    add-int/2addr v1, v5

    iput v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v4, 0x1b

    invoke-interface {v1, v4, p1, v2, p3}, Landroidx/media3/common/util/HandlerWrapper;->f(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    move v1, p1

    :goto_4
    if-ge v1, v2, :cond_8

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v5, v4, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->c:Landroidx/media3/common/Timeline;

    sub-int v7, v1, p1

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem;

    instance-of v9, v5, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    if-eqz v9, :cond_7

    new-instance v9, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    check-cast v5, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    iget-object v5, v5, Landroidx/media3/exoplayer/source/ForwardingTimeline;->e:Landroidx/media3/common/Timeline;

    invoke-direct {v9, v5, v7}, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V

    goto :goto_5

    :cond_7
    new-instance v9, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    invoke-direct {v9, v5, v7}, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V

    :goto_5
    iput-object v9, v4, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->c:Landroidx/media3/common/Timeline;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    new-instance v1, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-direct {v1, v6, v2}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->j(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final K0()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 p0, 0x0

    return p0
.end method

.method public final L(Landroidx/media3/common/MediaMetadata;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    new-instance p1, Landroidx/media3/exoplayer/e;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Landroidx/media3/exoplayer/e;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final L0(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    return-void
.end method

.method public final M0(Ljava/util/List;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final N(II)V
    .locals 11

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, v1, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v1, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n1(Landroidx/media3/exoplayer/PlaybackInfo;II)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    iget-object p1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final N0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0:J

    return-wide v0
.end method

.method public final O(Landroid/view/SurfaceHolder;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->b1()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o1()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->X:Z

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    return-void
.end method

.method public final P(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v1(IZ)V

    return-void
.end method

.method public final P0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Z:I

    const/4 v1, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(IILjava/lang/Object;)V

    return-void
.end method

.method public final Q()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->c0:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->d0:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g(F)V

    :cond_0
    return-void
.end method

.method public final T(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    return-void
.end method

.method public final T0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->j0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->y:Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->a(Z)V

    return-void
.end method

.method public final V(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->e(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public final W()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final X(Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    return-void
.end method

.method public final X0(JIZ)V
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ltz p3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->o()I

    move-result v4

    if-lt p3, v4, :cond_2

    :goto_1
    return-void

    :cond_2
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v4}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->M()V

    iget v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    add-int/2addr v4, v2

    iput v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "seekTo ignored because an ad is playing"

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v1, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->k:Landroidx/media3/exoplayer/e;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/e;->b(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void

    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    :cond_5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v()I

    move-result v7

    invoke-virtual {p0, v3, p3, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->l1(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v8

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v4, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v6, v3, p3, v8, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    invoke-interface {v4, v5, v6}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    const/4 v4, 0x1

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v5

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final Y(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final Z()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    return p0
.end method

.method public final Z0(Landroidx/media3/exoplayer/PlaybackInfo;ILjava/util/ArrayList;)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 9

    iget-object v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    move v0, v8

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    if-ge v0, v2, :cond_0

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/MediaSource;

    iget-boolean v5, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q:Z

    invoke-direct {v2, v4, v5}, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v4, v0, p2

    new-instance v5, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v7, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->b:Ljava/lang/Object;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-direct {v5, v7, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MaskingMediaSource;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p3, p2, v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->i(II)Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    new-instance v2, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-direct {v2, v3, p3}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v3

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h1(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {v0, p1, v2, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p0

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    iget-object p1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const/4 v5, -0x1

    move-object v3, v6

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder;IJ)V

    const/16 p3, 0x12

    invoke-interface {p1, p3, p2, v8, v2}, Landroidx/media3/common/util/HandlerWrapper;->f(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    return-object p0
.end method

.method public final a()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public final a0()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t:Landroid/os/Looper;

    return-object p0
.end method

.method public final a1()Landroidx/media3/common/MediaMetadata;
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:Landroidx/media3/common/MediaMetadata;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p0}, Landroidx/media3/common/MediaMetadata;->a()Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object p0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->K:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->k:[B

    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->a:Ljava/lang/CharSequence;

    :cond_2
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->b:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->b:Ljava/lang/CharSequence;

    :cond_3
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->c:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->c:Ljava/lang/CharSequence;

    :cond_4
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->d:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->d:Ljava/lang/CharSequence;

    :cond_5
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->e:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->e:Ljava/lang/CharSequence;

    :cond_6
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->f:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->f:Ljava/lang/CharSequence;

    :cond_7
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->g:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->g:Ljava/lang/CharSequence;

    :cond_8
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->h:Ljava/lang/Long;

    if-eqz v3, :cond_9

    invoke-virtual {p0, v3}, Landroidx/media3/common/MediaMetadata$Builder;->c(Ljava/lang/Long;)V

    :cond_9
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->i:Landroidx/media3/common/Rating;

    if-eqz v3, :cond_a

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->i:Landroidx/media3/common/Rating;

    :cond_a
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->j:Landroidx/media3/common/Rating;

    if-eqz v3, :cond_b

    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->j:Landroidx/media3/common/Rating;

    :cond_b
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->n:Landroid/net/Uri;

    if-nez v3, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->n:Landroid/net/Uri;

    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->m:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Landroidx/media3/common/MediaMetadata$Builder;->b([BLjava/lang/Integer;)V

    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->l:Landroidx/media3/common/BundleableByteArray;

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->l:Landroidx/media3/common/BundleableByteArray;

    :cond_d
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->o:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->o:Ljava/lang/Integer;

    :cond_e
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->p:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->p:Ljava/lang/Integer;

    :cond_f
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->q:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->q:Ljava/lang/Integer;

    :cond_10
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->r:Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->r:Ljava/lang/Boolean;

    :cond_11
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->s:Ljava/lang/Boolean;

    if-eqz v2, :cond_12

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->s:Ljava/lang/Boolean;

    :cond_12
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->t:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->t:Ljava/lang/Integer;

    :cond_13
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->u:Ljava/lang/Integer;

    if-eqz v2, :cond_14

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->t:Ljava/lang/Integer;

    :cond_14
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->v:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->u:Ljava/lang/Integer;

    :cond_15
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->w:Ljava/lang/Integer;

    if-eqz v2, :cond_16

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->v:Ljava/lang/Integer;

    :cond_16
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->x:Ljava/lang/Integer;

    if-eqz v2, :cond_17

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->w:Ljava/lang/Integer;

    :cond_17
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->y:Ljava/lang/Integer;

    if-eqz v2, :cond_18

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->x:Ljava/lang/Integer;

    :cond_18
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->z:Ljava/lang/Integer;

    if-eqz v2, :cond_19

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->y:Ljava/lang/Integer;

    :cond_19
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->A:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1a

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->z:Ljava/lang/CharSequence;

    :cond_1a
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->B:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1b

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->A:Ljava/lang/CharSequence;

    :cond_1b
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->C:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1c

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->B:Ljava/lang/CharSequence;

    :cond_1c
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->D:Ljava/lang/Integer;

    if-eqz v2, :cond_1d

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->C:Ljava/lang/Integer;

    :cond_1d
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->E:Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->D:Ljava/lang/Integer;

    :cond_1e
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->F:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1f

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->E:Ljava/lang/CharSequence;

    :cond_1f
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->G:Ljava/lang/CharSequence;

    if-eqz v2, :cond_20

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->F:Ljava/lang/CharSequence;

    :cond_20
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->H:Ljava/lang/CharSequence;

    if-eqz v2, :cond_21

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->G:Ljava/lang/CharSequence;

    :cond_21
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->I:Ljava/lang/Integer;

    if-eqz v2, :cond_22

    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->H:Ljava/lang/Integer;

    :cond_22
    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->J:Landroid/os/Bundle;

    if-eqz v0, :cond_23

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->I:Landroid/os/Bundle;

    :cond_23
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->J:Lcom/google/common/collect/ImmutableList;

    :cond_24
    :goto_0
    new-instance v0, Landroidx/media3/common/MediaMetadata;

    invoke-direct {v0, p0}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    return-object v0
.end method

.method public final b(Landroidx/media3/exoplayer/source/ProgressiveMediaSource;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final b0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->c0:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g(F)V

    :cond_0
    return-void
.end method

.method public final b1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    return-void
.end method

.method public final c0()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    return-void
.end method

.method public final c1(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/MediaItem;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->c(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final d(Landroidx/media3/common/PlaybackParameters;)V
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->g(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final d0()Landroidx/media3/common/TrackSelectionParameters;
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->i:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->b()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->M:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->a()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->N:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->g(Ljava/util/Set;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->b()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final d1(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v0

    new-instance v1, Landroidx/media3/exoplayer/PlayerMessage;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->v:Landroidx/media3/common/util/SystemClock;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v7, v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:Landroid/os/Looper;

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/PlayerMessage;-><init>(Landroidx/media3/exoplayer/PlayerMessage$Sender;Landroidx/media3/exoplayer/PlayerMessage$Target;Landroidx/media3/common/Timeline;ILandroidx/media3/common/util/Clock;Landroid/os/Looper;)V

    return-object v1
.end method

.method public final bridge synthetic e()Landroidx/media3/common/PlaybackException;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public final e()Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    return-object p0
.end method

.method public final e0(Landroid/view/TextureView;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->b1()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o1()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Replacing existing SurfaceTextureListener."

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    return-void

    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->U:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    return-void
.end method

.method public final e1(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 7

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    iget-object v3, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3, v0, v4}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result p1

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v0, 0x0

    invoke-virtual {v3, p1, p0, v0, v1}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-wide p0, p0, Landroidx/media3/common/Timeline$Window;->l:J

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-wide p0, v4, Landroidx/media3/common/Timeline$Period;->e:J

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide p0

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v0

    add-long/2addr v0, p0

    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final f()V
    .locals 12

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j1(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v4

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->b(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final f0()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 p0, 0x0

    return p0
.end method

.method public final f1(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 3

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s0:J

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlaybackInfo;->l()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    :goto_0
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    return-wide v0

    :cond_2
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, p1, p0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide p0, p0, Landroidx/media3/common/Timeline$Period;->e:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public final g(F)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroidx/media3/common/util/Util;->i(FFF)F

    move-result p1

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->c0:F

    cmpl-float v2, v0, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    move v0, p1

    :cond_1
    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->d0:F

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->c0:F

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x20

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    new-instance v0, Landroidx/media3/exoplayer/h;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/h;-><init>(F)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x16

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final g1(Landroidx/media3/exoplayer/PlaybackInfo;)I
    .locals 1

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r0:I

    return p0

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, p1, p0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/Timeline$Period;->c:I

    return p0
.end method

.method public final getCurrentPosition()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDuration()J
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v2, p0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v0, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    iget v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/Timeline$Period;->a(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->m0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    return p0
.end method

.method public final h1(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    if-nez v1, :cond_3

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-static/range {p4 .. p5}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v15

    iget-object v12, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    move-object/from16 v11, p1

    move/from16 v14, p3

    invoke-virtual/range {v11 .. v16}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v5}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v10, :cond_1

    return-object v1

    :cond_1
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:I

    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:Z

    iget-object v1, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a0(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I

    move-result v1

    if-eq v1, v10, :cond_2

    const-wide/16 v2, 0x0

    iget-object v4, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v7, v1, v4, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    iget-wide v2, v4, Landroidx/media3/common/Timeline$Window;->l:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v2

    invoke-virtual {v0, v7, v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->l1(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0, v7, v10, v8, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->l1(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v10, p3

    :goto_2
    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-wide/from16 v8, p4

    :goto_3
    invoke-virtual {v0, v7, v10, v8, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->l1(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final i()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:I

    return p0
.end method

.method public final i0()Landroidx/media3/common/Player$Commands;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Q:Landroidx/media3/common/Player$Commands;

    return-object p0
.end method

.method public final isScrubbingModeEnabled()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->M:Z

    return p0
.end method

.method public final j()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result p0

    return p0
.end method

.method public final j0(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroidx/media3/common/util/HandlerWrapper;->i(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    new-instance v0, Landroidx/media3/exoplayer/j;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/j;-><init>(Z)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->u1()V

    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_0
    return-void
.end method

.method public final k0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0:J

    return-wide v0
.end method

.method public final k1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->g(Z)V

    move-object/from16 v3, p1

    iget-object v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p2}, Landroidx/media3/exoplayer/PlaybackInfo;->j(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v9

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v10, Landroidx/media3/exoplayer/PlaybackInfo;->u:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s0:J

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v11

    sget-object v19, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->b:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    const-wide/16 v17, 0x0

    move-wide v13, v11

    move-wide v15, v11

    move-object/from16 v20, v0

    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    return-object v0

    :cond_2
    iget-object v3, v9, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    sget-object v10, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v11, v12}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v11, v9, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_2
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v7

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v6, v3, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget-wide v14, v2, Landroidx/media3/common/Timeline$Period;->e:J

    sub-long/2addr v7, v14

    if-eqz v10, :cond_4

    sub-long v14, v7, v12

    const-wide/16 v16, 0x1

    cmp-long v2, v14, v16

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v6, v3, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget-wide v2, v2, Landroidx/media3/common/Timeline$Period;->d:J

    cmp-long v2, v7, v2

    if-nez v2, :cond_4

    sub-long v7, v7, v16

    :cond_4
    if-eqz v10, :cond_5

    cmp-long v2, v12, v7

    if-gez v2, :cond_6

    :cond_5
    move v1, v10

    move-object v10, v11

    move-wide v11, v12

    goto/16 :goto_6

    :cond_6
    if-nez v2, :cond_a

    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object v3, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->c:I

    if-eq v2, v3, :cond_7

    goto :goto_3

    :cond_7
    return-object v9

    :cond_8
    :goto_3
    iget-object v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v1

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    if-eqz v1, :cond_9

    iget v1, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    iget v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline$Period;->a(II)J

    move-result-wide v0

    :goto_4
    move-object v10, v11

    goto :goto_5

    :cond_9
    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->d:J

    goto :goto_4

    :goto_5
    iget-wide v11, v9, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    iget-wide v13, v9, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    iget-wide v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    iget-wide v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    sub-long v17, v0, v4

    iget-object v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->h:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v5, v9, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v6, v9, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    move-wide v15, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-wide v0, v2, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    return-object v2

    :cond_a
    move-object v10, v11

    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-wide v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    sub-long v2, v12, v7

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    iget-wide v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v9, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    add-long v0, v12, v17

    :cond_b
    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->h:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v3, v9, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    move-wide v11, v12

    move-wide v13, v11

    move-wide v15, v11

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-wide v0, v2, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    return-object v2

    :goto_6
    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    if-nez v1, :cond_c

    sget-object v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    :goto_7
    move-object/from16 v19, v2

    goto :goto_8

    :cond_c
    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->h:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_7

    :goto_8
    if-nez v1, :cond_d

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->b:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_9
    move-object/from16 v20, v0

    goto :goto_a

    :cond_d
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_9

    :goto_a
    if-nez v1, :cond_e

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_b
    move-object/from16 v21, v0

    goto :goto_c

    :cond_e
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    goto :goto_b

    :goto_c
    const-wide/16 v17, 0x0

    move-wide v13, v11

    move-wide v15, v11

    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-wide v11, v0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    return-object v0
.end method

.method public final l1(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;
    .locals 6

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r0:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s0:J

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->o()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, p2

    goto :goto_2

    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:Z

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->a(Z)I

    move-result p2

    iget-object p3, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, p3, v1, v2}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p3

    iget-wide p3, p3, Landroidx/media3/common/Timeline$Window;->l:J

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide p3

    goto :goto_0

    :goto_2
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v4

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final m()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    return p0
.end method

.method public final m1(II)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->a0:Landroidx/media3/common/util/Size;

    iget v1, v0, Landroidx/media3/common/util/Size;->a:I

    if-ne p1, v1, :cond_1

    iget v0, v0, Landroidx/media3/common/util/Size;->b:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->a0:Landroidx/media3/common/util/Size;

    new-instance v0, Landroidx/media3/exoplayer/g;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/g;-><init>(II)V

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(IILjava/lang/Object;)V

    return-void
.end method

.method public final n()Landroidx/media3/common/Tracks;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->d:Landroidx/media3/common/Tracks;

    return-object p0
.end method

.method public final n0()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r0:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final n1(Landroidx/media3/exoplayer/PlaybackInfo;II)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v3

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v4

    iget-object v14, v6, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    iput v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    add-int/lit8 v1, v8, -0x1

    :goto_0
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    if-lt v1, v7, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {v1, v7, v8}, Landroidx/media3/exoplayer/source/ShuffleOrder;->a(II)Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    new-instance v15, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-direct {v15, v2, v1}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    move-object v1, v14

    move-object v2, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h1(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v0, v6, v15, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iget v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-eq v2, v9, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    if-lt v3, v7, :cond_1

    if-ge v3, v8, :cond_1

    iget-object v2, v6, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v13, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget v11, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:I

    iget-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:Z

    iget-object v9, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-static/range {v9 .. v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a0(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-static {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j1(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v3, 0x14

    invoke-interface {v0, v3, v7, v8, v2}, Landroidx/media3/common/util/HandlerWrapper;->f(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    return-object v1
.end method

.method public final o()Landroidx/media3/common/text/CueGroup;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->f0:Landroidx/media3/common/text/CueGroup;

    return-object p0
.end method

.method public final o0(Landroid/view/TextureView;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->b1()V

    :cond_0
    return-void
.end method

.method public final o1()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->x:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d1(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    iget-boolean v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->i:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    const/16 v3, 0x2710

    iput v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->e:I

    iget-boolean v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->i:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object v2, v0, Landroidx/media3/exoplayer/PlayerMessage;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->b()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eq v0, v1, :cond_1

    const-string v0, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y:Landroid/view/TextureView;

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method public final p()Landroidx/media3/common/Timeline;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public final p0(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->j0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->b0:Landroidx/media3/common/AudioAttributes;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->b0:Landroidx/media3/common/AudioAttributes;

    const/4 v0, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(IILjava/lang/Object;)V

    new-instance v0, Landroidx/media3/exoplayer/b;

    invoke-direct {v0, p1, v2}, Landroidx/media3/exoplayer/b;-><init>(Ljava/lang/Object;I)V

    const/16 p1, 0x14

    invoke-virtual {v1, p1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->b0:Landroidx/media3/common/AudioAttributes;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v0, 0x1f

    const/4 v2, 0x0

    invoke-interface {p0, v0, p2, v2, p1}, Landroidx/media3/common/util/HandlerWrapper;->f(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    invoke-virtual {v1}, Landroidx/media3/common/util/ListenerSet;->b()V

    return-void
.end method

.method public final p1(IILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->g:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    if-eq p1, v4, :cond_0

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v4

    if-ne v4, p1, :cond_1

    :cond_0
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d1(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v4

    iget-boolean v5, v4, Landroidx/media3/exoplayer/PlayerMessage;->i:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput p2, v4, Landroidx/media3/exoplayer/PlayerMessage;->e:I

    iget-boolean v5, v4, Landroidx/media3/exoplayer/PlayerMessage;->i:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p3, v4, Landroidx/media3/exoplayer/PlayerMessage;->f:Ljava/lang/Object;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/PlayerMessage;->b()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->h:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    if-eqz v3, :cond_4

    if-eq p1, v4, :cond_3

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v5

    if-ne v5, p1, :cond_4

    :cond_3
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d1(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v3

    iget-boolean v5, v3, Landroidx/media3/exoplayer/PlayerMessage;->i:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput p2, v3, Landroidx/media3/exoplayer/PlayerMessage;->e:I

    iget-boolean v5, v3, Landroidx/media3/exoplayer/PlayerMessage;->i:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object p3, v3, Landroidx/media3/exoplayer/PlayerMessage;->f:Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlayerMessage;->b()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final q0()F
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->c0:F

    return p0
.end method

.method public final q1(Ljava/util/List;IJZ)V
    .locals 14

    move/from16 v1, p2

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v3

    iget v5, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    move v7, v13

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_0

    new-instance v9, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/exoplayer/source/MediaSource;

    iget-boolean v12, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q:Z

    invoke-direct {v9, v11, v12}, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v12, v9, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->b:Ljava/lang/Object;

    iget-object v9, v9, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-direct {v11, v12, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MaskingMediaSource;)V

    invoke-virtual {v5, v7, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-interface {v7, v9}, Landroidx/media3/exoplayer/source/ShuffleOrder;->h(I)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object v7

    iput-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    new-instance v7, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v9, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-direct {v7, v5, v9}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->p()Z

    move-result v5

    iget v9, v7, Landroidx/media3/exoplayer/PlaylistTimeline;->i:I

    if-nez v5, :cond_1

    if-ge v1, v9, :cond_2

    :cond_1
    move-wide/from16 v10, p3

    goto :goto_1

    :cond_2
    new-instance v0, Landroidx/media3/common/IllegalSeekPositionException;

    move-wide/from16 v10, p3

    invoke-direct {v0, v7, v1, v10, v11}, Landroidx/media3/common/IllegalSeekPositionException;-><init>(Landroidx/media3/common/Timeline;IJ)V

    throw v0

    :goto_1
    const/4 v5, -0x1

    if-eqz p5, :cond_3

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:Z

    invoke-virtual {v7, v1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->a(Z)I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    move v10, v1

    goto :goto_3

    :cond_3
    if-ne v1, v5, :cond_4

    move v10, v2

    move-wide v2, v3

    goto :goto_3

    :cond_4
    move-wide v2, v10

    goto :goto_2

    :goto_3
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v7, v10, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->l1(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {p0, v1, v7, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iget v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-ne v4, v6, :cond_5

    move v4, v6

    goto :goto_5

    :cond_5
    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->p()Z

    move-result v7

    const/4 v11, 0x4

    if-eqz v7, :cond_6

    :goto_4
    move v4, v11

    goto :goto_5

    :cond_6
    if-ne v10, v5, :cond_7

    goto :goto_5

    :cond_7
    if-lt v10, v9, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x2

    :goto_5
    invoke-static {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j1(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v11

    iget-object v9, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v2, v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    invoke-direct/range {v7 .. v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder;IJ)V

    const/16 v3, 0x11

    invoke-interface {v2, v3, v7}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-nez v2, :cond_9

    move v3, v6

    goto :goto_6

    :cond_9
    move v3, v13

    :goto_6
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final r()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    return p0
.end method

.method public final r0()Landroidx/media3/common/AudioAttributes;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->b0:Landroidx/media3/common/AudioAttributes;

    return-object p0
.end method

.method public final r1(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->X:Z

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1(II)V

    return-void
.end method

.method public final release()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Release "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [AndroidXMedia3/1.10.1] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    const-class v1, Landroidx/media3/common/MediaLibraryInfo;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroidx/media3/common/MediaLibraryInfo;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->y:Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->a(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->z:Landroidx/media3/common/util/WakeLockManager;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/WakeLockManager;->b(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->A:Landroidx/media3/common/util/WifiLockManager;

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/WifiLockManager;->a(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->E:Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;->a(Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->D:Landroidx/media3/common/util/StuckPlayerDetector;

    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector;->f:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper;->c()V

    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    iget-object v0, v0, Landroidx/media3/common/util/StuckPlayerDetector;->b:Landroidx/media3/common/Player$Listener;

    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->V(Landroidx/media3/common/Player$Listener;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M:Z

    new-instance v1, Landroidx/media3/common/util/ConditionVariable;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroidx/media3/common/util/Clock;

    invoke-direct {v1, v3}, Landroidx/media3/common/util/ConditionVariable;-><init>(Landroidx/media3/common/util/Clock;)V

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v1}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v3

    invoke-interface {v3}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w:J

    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/util/ConditionVariable;->c(J)Z

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->d()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->j:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper;->c()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->u:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->a(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackInfo;->a()Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j1(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    iput-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v0}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->release()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->U:Landroid/view/Surface;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->U:Landroid/view/Surface;

    :cond_5
    sget-object v0, Landroidx/media3/common/text/CueGroup;->d:Landroidx/media3/common/text/CueGroup;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->f0:Landroidx/media3/common/text/CueGroup;

    iput-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->j0:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final s()Landroidx/media3/common/VideoSize;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l0:Landroidx/media3/common/VideoSize;

    return-object p0
.end method

.method public final s0()Landroidx/media3/common/DeviceInfo;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->k0:Landroidx/media3/common/DeviceInfo;

    return-object p0
.end method

.method public final s1(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->T:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->B:J

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-boolean v7, v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M:Z

    if-nez v7, :cond_3

    iget-object v7, v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:Landroid/os/Looper;

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, Landroidx/media3/common/util/ConditionVariable;

    iget-object v8, v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroidx/media3/common/util/Clock;

    invoke-direct {v7, v8}, Landroidx/media3/common/util/ConditionVariable;-><init>(Landroidx/media3/common/util/Clock;)V

    iget-object v6, v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, p1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v9, 0x1e

    invoke-interface {v6, v9, v8}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v6

    invoke-interface {v6}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    invoke-virtual {v7, v4, v5}, Landroidx/media3/common/util/ConditionVariable;->c(J)Z

    move-result v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->T:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->U:Landroid/view/Surface;

    if-ne v0, v2, :cond_4

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->U:Landroid/view/Surface;

    :cond_4
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->T:Ljava/lang/Object;

    if-nez v1, :cond_5

    new-instance p1, Landroidx/media3/exoplayer/ExoTimeoutException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x2

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, p1, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->t1(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    :cond_5
    return-void
.end method

.method public final setImageOutput(Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v0, 0x4

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(IILjava/lang/Object;)V

    return-void
.end method

.method public final setScrubbingModeEnabled(Z)V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->M:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->M:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->O:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    iget-object v1, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->i:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->b()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v2

    if-eqz p1, :cond_2

    iget-object v3, v2, Landroidx/media3/common/TrackSelectionParameters;->I:Lcom/google/common/collect/ImmutableSet;

    iput-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->N:Lcom/google/common/collect/ImmutableSet;

    iget-object v0, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionParameters;->a()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->m(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->b()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionParameters;->a()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->N:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->g(Ljava/util/Set;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->b()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->N:Lcom/google/common/collect/ImmutableSet;

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->h(Landroidx/media3/common/TrackSelectionParameters;)V

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x24

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v1(IZ)V

    return-void
.end method

.method public final stop()V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->t1(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    new-instance v0, Landroidx/media3/common/text/CueGroup;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->f0:Landroidx/media3/common/text/CueGroup;

    return-void
.end method

.method public final t0(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    return-void
.end method

.method public final t1(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j1(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroidx/media3/common/util/HandlerWrapper;->b(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final u()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final u1()V
    .locals 14

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Q:Landroidx/media3/common/Player$Commands;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->f:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->j()Z

    move-result v2

    invoke-interface {v1}, Landroidx/media3/common/Player;->U0()Z

    move-result v3

    invoke-interface {v1}, Landroidx/media3/common/Player;->u0()Z

    move-result v4

    invoke-interface {v1}, Landroidx/media3/common/Player;->U()Z

    move-result v5

    invoke-interface {v1}, Landroidx/media3/common/Player;->V0()Z

    move-result v6

    invoke-interface {v1}, Landroidx/media3/common/Player;->S0()Z

    move-result v7

    invoke-interface {v1}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    new-instance v8, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v8}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    iget-object v9, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->c:Landroidx/media3/common/Player$Commands;

    iget-object v9, v9, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    iget-object v10, v8, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    iget-object v13, v9, Landroidx/media3/common/FlagSet;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_0

    invoke-virtual {v9, v12}, Landroidx/media3/common/FlagSet;->b(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    xor-int/lit8 v9, v2, 0x1

    const/4 v10, 0x4

    invoke-virtual {v8, v10, v9}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    const/4 v10, 0x1

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    move v12, v10

    goto :goto_1

    :cond_1
    move v12, v11

    :goto_1
    const/4 v13, 0x5

    invoke-virtual {v8, v13, v12}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    move v12, v10

    goto :goto_2

    :cond_2
    move v12, v11

    :goto_2
    const/4 v13, 0x6

    invoke-virtual {v8, v13, v12}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    if-nez v1, :cond_4

    if-nez v4, :cond_3

    if-eqz v6, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v2, :cond_4

    move v4, v10

    goto :goto_3

    :cond_4
    move v4, v11

    :goto_3
    const/4 v12, 0x7

    invoke-virtual {v8, v12, v4}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    if-eqz v5, :cond_5

    if-nez v2, :cond_5

    move v4, v10

    goto :goto_4

    :cond_5
    move v4, v11

    :goto_4
    const/16 v12, 0x8

    invoke-virtual {v8, v12, v4}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    if-nez v1, :cond_7

    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    :cond_6
    if-nez v2, :cond_7

    move v1, v10

    goto :goto_5

    :cond_7
    move v1, v11

    :goto_5
    const/16 v4, 0x9

    invoke-virtual {v8, v4, v1}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    const/16 v1, 0xa

    invoke-virtual {v8, v1, v9}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    if-eqz v3, :cond_8

    if-nez v2, :cond_8

    move v1, v10

    goto :goto_6

    :cond_8
    move v1, v11

    :goto_6
    const/16 v4, 0xb

    invoke-virtual {v8, v4, v1}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    if-eqz v3, :cond_9

    if-nez v2, :cond_9

    move v11, v10

    :cond_9
    const/16 v1, 0xc

    invoke-virtual {v8, v1, v11}, Landroidx/media3/common/Player$Commands$Builder;->b(IZ)V

    invoke-virtual {v8}, Landroidx/media3/common/Player$Commands$Builder;->c()Landroidx/media3/common/Player$Commands;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Q:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Landroidx/media3/exoplayer/e;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/e;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_a
    return-void
.end method

.method public final v()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final v0()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final v1(IZ)V
    .locals 13

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->M:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    if-ne v0, v2, :cond_1

    if-nez p2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    if-ne v4, p2, :cond_2

    iget v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    if-ne v4, v0, :cond_2

    iget v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    if-ne v4, p1, :cond_2

    return-void

    :cond_2
    iget v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    add-int/2addr v4, v2

    iput v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    iget-boolean v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlaybackInfo;->a()Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    :cond_3
    invoke-virtual {v3, p1, v0, p2}, Landroidx/media3/exoplayer/PlaybackInfo;->e(IIZ)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v5

    shl-int/2addr v0, v1

    or-int/2addr p1, v0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v2, p2, p1}, Landroidx/media3/common/util/HandlerWrapper;->i(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final w()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:Z

    return p0
.end method

.method public final w1(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v10, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v11, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->p()Z

    move-result v13

    const/16 v16, 0x0

    const/16 v17, 0x2

    const-wide/16 v14, 0x0

    const/16 v18, 0x3

    if-eqz v13, :cond_0

    invoke-virtual {v9}, Landroidx/media3/common/Timeline;->p()Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->p()Z

    move-result v13

    invoke-virtual {v9}, Landroidx/media3/common/Timeline;->p()Z

    move-result v7

    if-eq v13, v7, :cond_1

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    iget-object v7, v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v9, v7, v6}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v7

    iget v7, v7, Landroidx/media3/common/Timeline$Period;->c:I

    invoke-virtual {v9, v7, v5, v14, v15}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    iget-object v9, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v11, v9, v6}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/Timeline$Period;->c:I

    invoke-virtual {v11, v6, v5, v14, v15}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz p3, :cond_2

    if-nez v2, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    move/from16 v5, v17

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    move/from16 v5, v18

    :goto_0
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    goto :goto_1

    :cond_4
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_5
    if-eqz p3, :cond_6

    if-nez v2, :cond_6

    iget-wide v5, v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    iget-wide v9, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_6

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    if-eqz p8, :cond_7

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v6, :cond_9

    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->p()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v9, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v9, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v8, v9, v10}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v8

    iget v8, v8, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object v9, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v10, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v9, v8, v10, v14, v15}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v8

    iget-object v8, v8, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    sget-object v9, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    iput-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:Landroidx/media3/common/MediaMetadata;

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    if-nez v6, :cond_a

    iget-object v9, v3, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    iget-object v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    :cond_a
    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v9}, Landroidx/media3/common/MediaMetadata;->a()Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v9

    iget-object v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    move/from16 v11, v16

    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_c

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/common/Metadata;

    move/from16 v13, v16

    :goto_5
    iget-object v7, v12, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    array-length v14, v7

    if-ge v13, v14, :cond_b

    aget-object v7, v7, v13

    invoke-interface {v7, v9}, Landroidx/media3/common/Metadata$Entry;->b(Landroidx/media3/common/MediaMetadata$Builder;)V

    add-int/lit8 v13, v13, 0x1

    const-wide/16 v14, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v14, 0x0

    goto :goto_4

    :cond_c
    new-instance v7, Landroidx/media3/common/MediaMetadata;

    invoke-direct {v7, v9}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    iput-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:Landroidx/media3/common/MediaMetadata;

    :cond_d
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->a1()Landroidx/media3/common/MediaMetadata;

    move-result-object v7

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v7, v9}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/MediaMetadata;

    iget-boolean v7, v3, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget-boolean v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    if-eq v7, v10, :cond_e

    const/4 v7, 0x1

    goto :goto_6

    :cond_e
    move/from16 v7, v16

    :goto_6
    iget v10, v3, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    iget v11, v1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-eq v10, v11, :cond_f

    const/4 v10, 0x1

    goto :goto_7

    :cond_f
    move/from16 v10, v16

    :goto_7
    if-nez v10, :cond_10

    if-eqz v7, :cond_11

    :cond_10
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->x1()V

    :cond_11
    iget-boolean v11, v3, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    iget-boolean v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    if-eq v11, v12, :cond_12

    const/4 v11, 0x1

    goto :goto_8

    :cond_12
    move/from16 v11, v16

    :goto_8
    if-nez v4, :cond_13

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v12, Landroidx/media3/exoplayer/a;

    move/from16 v13, p2

    move/from16 v14, v16

    invoke-direct {v12, v1, v13, v14}, Landroidx/media3/exoplayer/a;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v4, v14, v12}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_13
    if-eqz p3, :cond_1b

    new-instance v4, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iget-object v12, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v12}, Landroidx/media3/common/Timeline;->p()Z

    move-result v12

    if-nez v12, :cond_14

    iget-object v12, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v12, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v13, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v13, v12, v4}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v13, v4, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object v14, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v14, v12}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v14

    iget-object v15, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    move/from16 v19, v6

    iget-object v6, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    move/from16 v20, v9

    move/from16 v21, v10

    const-wide/16 v9, 0x0

    invoke-virtual {v15, v13, v6, v9, v10}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v6

    iget-object v6, v6, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    iget-object v9, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    iget-object v9, v9, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    move-object/from16 v23, v6

    move-object/from16 v25, v9

    move-object/from16 v26, v12

    move/from16 v24, v13

    move/from16 v27, v14

    goto :goto_9

    :cond_14
    move/from16 v19, v6

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v24, p7

    move/from16 v27, v24

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_9
    iget-object v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez v2, :cond_17

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v6

    iget-object v9, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v6, :cond_15

    iget v6, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    iget v9, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    invoke-virtual {v4, v6, v9}, Landroidx/media3/common/Timeline$Period;->a(II)J

    move-result-wide v9

    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v12

    goto :goto_c

    :cond_15
    iget v6, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_16

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v9

    :goto_a
    move-wide v12, v9

    goto :goto_c

    :cond_16
    iget-wide v9, v4, Landroidx/media3/common/Timeline$Period;->e:J

    iget-wide v12, v4, Landroidx/media3/common/Timeline$Period;->d:J

    :goto_b
    add-long/2addr v9, v12

    goto :goto_a

    :cond_17
    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-wide v9, v3, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v12

    goto :goto_c

    :cond_18
    iget-wide v9, v4, Landroidx/media3/common/Timeline$Period;->e:J

    iget-wide v12, v3, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    goto :goto_b

    :goto_c
    new-instance v22, Landroidx/media3/common/Player$PositionInfo;

    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v28

    invoke-static {v12, v13}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v30

    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v6, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    iget v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    move/from16 v33, v4

    move/from16 v32, v6

    invoke-direct/range {v22 .. v33}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    move-object/from16 v4, v22

    iget-object v6, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v()I

    move-result v9

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0()I

    move-result v10

    iget-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v12, v12, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v12}, Landroidx/media3/common/Timeline;->p()Z

    move-result v12

    if-nez v12, :cond_19

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v12, v10, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v12, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v10, v10, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v10, v12, v13}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v10, v10, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v10, v12}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v10

    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v13, v13, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    const-wide/16 v14, 0x0

    invoke-virtual {v13, v9, v6, v14, v15}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v13

    iget-object v13, v13, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    iget-object v6, v6, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    move-object/from16 v25, v6

    move-object/from16 v26, v12

    move-object/from16 v23, v13

    :goto_d
    move/from16 v27, v10

    goto :goto_e

    :cond_19
    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    goto :goto_d

    :goto_e
    invoke-static/range {p5 .. p6}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v28

    new-instance v22, Landroidx/media3/common/Player$PositionInfo;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v12

    move-wide/from16 v30, v12

    goto :goto_f

    :cond_1a
    move-wide/from16 v30, v28

    :goto_f
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v10, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    iget v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    move/from16 v33, v6

    move/from16 v24, v9

    move/from16 v32, v10

    invoke-direct/range {v22 .. v33}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    move-object/from16 v6, v22

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v10, Landroidx/media3/exoplayer/k;

    invoke-direct {v10, v2, v4, v6}, Landroidx/media3/exoplayer/k;-><init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    const/16 v2, 0xb

    invoke-virtual {v9, v2, v10}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    goto :goto_10

    :cond_1b
    move/from16 v19, v6

    move/from16 v20, v9

    move/from16 v21, v10

    :goto_10
    if-eqz v19, :cond_1c

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/a;

    const/4 v6, 0x1

    invoke-direct {v4, v8, v5, v6}, Landroidx/media3/exoplayer/a;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v2, v6, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1c
    iget-object v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v5, 0x7

    if-eq v2, v4, :cond_1d

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/c;

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v2, :cond_1d

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/c;

    const/16 v8, 0x8

    invoke-direct {v4, v1, v8}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v2, v6, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1d
    iget-object v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    if-eq v2, v4, :cond_1e

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->i:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v4, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->e:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->d(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/c;

    const/16 v6, 0x9

    invoke-direct {v4, v1, v6}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    move/from16 v6, v17

    invoke-virtual {v2, v6, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1e
    if-nez v20, :cond_1f

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/MediaMetadata;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/exoplayer/b;

    const/4 v14, 0x0

    invoke-direct {v6, v2, v14}, Landroidx/media3/exoplayer/b;-><init>(Ljava/lang/Object;I)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2, v6}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    goto :goto_11

    :cond_1f
    const/4 v14, 0x0

    :goto_11
    if-eqz v11, :cond_20

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/c;

    invoke-direct {v4, v1, v14}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    move/from16 v6, v18

    invoke-virtual {v2, v6, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_20
    if-nez v21, :cond_21

    if-eqz v7, :cond_22

    :cond_21
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/c;

    const/4 v6, 0x1

    invoke-direct {v4, v1, v6}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/4 v9, -0x1

    invoke-virtual {v2, v9, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_22
    const/4 v2, 0x4

    if-eqz v21, :cond_23

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/exoplayer/c;

    const/4 v8, 0x2

    invoke-direct {v6, v1, v8}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v4, v2, v6}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_23
    const/4 v4, 0x5

    if-nez v7, :cond_24

    iget v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    iget v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    if-eq v6, v7, :cond_25

    :cond_24
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v7, Landroidx/media3/exoplayer/c;

    const/4 v8, 0x3

    invoke-direct {v7, v1, v8}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v6, v4, v7}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_25
    iget v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    iget v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    const/4 v8, 0x6

    if-eq v6, v7, :cond_26

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v7, Landroidx/media3/exoplayer/c;

    invoke-direct {v7, v1, v2}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v6, v8, v7}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_26
    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlaybackInfo;->m()Z

    move-result v2

    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlaybackInfo;->m()Z

    move-result v6

    if-eq v2, v6, :cond_27

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/exoplayer/c;

    invoke-direct {v6, v1, v4}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v2, v5, v6}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_27
    iget-object v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v2, v4}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/c;

    invoke-direct {v4, v1, v8}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_28
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->u1()V

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v2}, Landroidx/media3/common/util/ListenerSet;->b()V

    iget-boolean v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    iget-boolean v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    if-eq v2, v1, :cond_29

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;->A()V

    goto :goto_12

    :cond_29
    return-void
.end method

.method public final x()J
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s0:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v()I

    move-result v1

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->m:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline$Period;->d(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->d:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    :cond_3
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3, v2, p0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Period;->e:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final x0(Ljava/util/List;IJ)V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final x1()V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->A:Landroidx/media3/common/util/WifiLockManager;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->z:Landroidx/media3/common/util/WakeLockManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/WakeLockManager;->b(Z)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r()Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/WifiLockManager;->a(Z)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/WakeLockManager;->b(Z)V

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/WifiLockManager;->a(Z)V

    return-void
.end method

.method public final y1()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->d:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->b()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v0, v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "\'\nExpected thread: \'"

    const-string v3, "\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    const-string v4, "Player is accessed on the wrong thread.\nCurrent thread: \'"

    invoke-static {v4, v0, v2, v1, v3}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->g0:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->h0:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->h0:Z

    return-void

    :cond_1
    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final z0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1()V

    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:J

    return-wide v0
.end method
