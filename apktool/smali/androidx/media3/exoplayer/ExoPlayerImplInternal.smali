.class final Landroidx/media3/exoplayer/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
.implements Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;
.implements Landroidx/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;
.implements Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;
.implements Landroidx/media3/exoplayer/PlayerMessage$Sender;
.implements Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;
.implements Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    }
.end annotation


# static fields
.field public static final k1:J

.field public static final synthetic l1:I


# instance fields
.field public final A:Landroidx/media3/common/util/HandlerWrapper;

.field public final B:Z

.field public final C:Landroidx/media3/common/audio/AudioFocusManager;

.field public final D:Z

.field public E:Landroidx/media3/exoplayer/SeekParameters;

.field public F:Landroidx/media3/exoplayer/ScrubbingModeParameters;

.field public G:Z

.field public H:Z

.field public I:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

.field public J:I

.field public K:Landroidx/media3/exoplayer/PlaybackInfo;

.field public L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:J

.field public R:Z

.field public S:I

.field public T:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:I

.field public Z:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

.field public final b:[Landroidx/media3/exoplayer/RendererHolder;

.field public b1:I

.field public final c:[Landroidx/media3/exoplayer/RendererCapabilities;

.field public c1:Z

.field public final d:[Z

.field public d1:Landroidx/media3/exoplayer/ExoPlaybackException;

.field public final e:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field public e1:J

.field public final f:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public f1:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

.field public final g:Landroidx/media3/exoplayer/LoadControl;

.field public g1:Landroidx/media3/common/Timeline;

.field public final h:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field public h0:J

.field public h1:J

.field public final i:Landroidx/media3/common/util/HandlerWrapper;

.field public i1:Z

.field public final j:Landroidx/media3/exoplayer/PlaybackLooperProvider;

.field public j1:F

.field public final k:Landroid/os/Looper;

.field public final l:Landroidx/media3/common/Timeline$Window;

.field public final m:Landroidx/media3/common/Timeline$Period;

.field public final n:J

.field public final o:Z

.field public final p:Landroidx/media3/exoplayer/DefaultMediaClock;

.field public final q:Ljava/util/ArrayList;

.field public final r:Landroidx/media3/common/util/Clock;

.field public final s:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field public final t:Landroidx/media3/exoplayer/MediaPeriodQueue;

.field public t0:J

.field public final u:Landroidx/media3/exoplayer/MediaSourceList;

.field public final v:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

.field public final w:J

.field public final x:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final y:Z

.field public final z:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k1:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Landroidx/media3/exoplayer/Renderer;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/LivePlaybackSpeedControl;JZZLandroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/PlaybackLooperProvider;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    move-object/from16 v5, p18

    move-object/from16 v6, p20

    move-object/from16 v7, p22

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h1:J

    move-object/from16 v10, p19

    iput-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    move-object/from16 v10, p5

    iput-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-object/from16 v11, p6

    iput-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g:Landroidx/media3/exoplayer/LoadControl;

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    move/from16 v12, p8

    iput v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S:I

    move/from16 v12, p9

    iput-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T:Z

    move-object/from16 v12, p11

    iput-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E:Landroidx/media3/exoplayer/SeekParameters;

    move-object/from16 v12, p12

    iput-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    move-wide/from16 v12, p13

    iput-wide v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w:J

    move/from16 v12, p15

    iput-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    move/from16 v12, p16

    iput-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y:Z

    iput-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroidx/media3/common/util/Clock;

    iput-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/exoplayer/analytics/PlayerId;

    iput-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f1:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iput-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j1:F

    sget-object v12, Landroidx/media3/exoplayer/ScrubbingModeParameters;->g:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    iput-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    move/from16 v12, p24

    iput-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D:Z

    iput-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e1:J

    iput-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:J

    invoke-interface {v11}, Landroidx/media3/exoplayer/LoadControl;->d()J

    move-result-wide v8

    iput-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n:J

    invoke-interface {v11}, Landroidx/media3/exoplayer/LoadControl;->b()Z

    move-result v8

    iput-boolean v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Z

    sget-object v8, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    iput-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g1:Landroidx/media3/common/Timeline;

    invoke-static {v10}, Landroidx/media3/exoplayer/PlaybackInfo;->k(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v8

    iput-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    new-instance v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-direct {v9, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    iput-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    array-length v8, v1

    new-array v8, v8, [Landroidx/media3/exoplayer/RendererCapabilities;

    iput-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v8, v1

    new-array v8, v8, [Z

    iput-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d:[Z

    invoke-virtual {v2}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->c()Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    move-result-object v8

    array-length v9, v1

    new-array v9, v9, [Landroidx/media3/exoplayer/RendererHolder;

    iput-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    array-length v12, v1

    const/4 v13, 0x1

    if-ge v10, v12, :cond_2

    aget-object v12, v1, v10

    invoke-interface {v12, v10, v6, v5}, Landroidx/media3/exoplayer/Renderer;->l(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/Clock;)V

    iget-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v14, v1, v10

    invoke-interface {v14}, Landroidx/media3/exoplayer/Renderer;->B()Landroidx/media3/exoplayer/BaseRenderer;

    move-result-object v14

    aput-object v14, v12, v10

    if-eqz v8, :cond_0

    iget-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v12, v12, v10

    invoke-interface {v12, v8}, Landroidx/media3/exoplayer/RendererCapabilities;->C(Landroidx/media3/exoplayer/RendererCapabilities$Listener;)V

    :cond_0
    aget-object v12, p3, v10

    if-eqz v12, :cond_1

    invoke-interface {v12, v10, v6, v5}, Landroidx/media3/exoplayer/Renderer;->l(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/Clock;)V

    move v11, v13

    :cond_1
    iget-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    new-instance v13, Landroidx/media3/exoplayer/RendererHolder;

    aget-object v14, v1, v10

    aget-object v15, p3, v10

    invoke-direct {v13, v14, v15, v10}, Landroidx/media3/exoplayer/RendererHolder;-><init>(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/Renderer;I)V

    aput-object v13, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Z

    new-instance v1, Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-direct {v1, v0, v5}, Landroidx/media3/exoplayer/DefaultMediaClock;-><init>(Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;Landroidx/media3/common/util/Clock;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l:Landroidx/media3/common/Timeline$Window;

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    iget-object v1, v2, Landroidx/media3/exoplayer/trackselection/TrackSelector;->a:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    if-nez v1, :cond_3

    move v1, v13

    goto :goto_1

    :cond_3
    move v1, v9

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object v0, v2, Landroidx/media3/exoplayer/trackselection/TrackSelector;->a:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    iput-object v3, v2, Landroidx/media3/exoplayer/trackselection/TrackSelector;->b:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iput-boolean v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c1:Z

    const/4 v1, 0x0

    move-object/from16 v2, p17

    invoke-interface {v5, v2, v1}, Landroidx/media3/common/util/Clock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v2, Landroidx/media3/exoplayer/MediaPeriodQueue;

    new-instance v3, Landroidx/media3/exoplayer/b;

    const/4 v8, 0x4

    invoke-direct {v3, v0, v8}, Landroidx/media3/exoplayer/b;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v4, v1, v3, v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList;

    invoke-direct {v2, v0, v4, v1, v6}, Landroidx/media3/exoplayer/MediaSourceList;-><init>(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    if-nez p21, :cond_4

    new-instance v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-direct {v1}, Landroidx/media3/exoplayer/PlaybackLooperProvider;-><init>()V

    goto :goto_2

    :cond_4
    move-object/from16 v1, p21

    :goto_2
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->b:Landroid/os/Looper;

    if-nez v3, :cond_6

    iget v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->d:I

    if-nez v3, :cond_5

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->c:Landroid/os/HandlerThread;

    if-nez v3, :cond_5

    move v9, v13

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "ExoPlayer:Playback"

    const/16 v6, -0x10

    invoke-direct {v3, v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->c:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->c:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->b:Landroid/os/Looper;

    :cond_6
    iget v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->d:I

    add-int/2addr v3, v13

    iput v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->d:I

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->b:Landroid/os/Looper;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:Landroid/os/Looper;

    invoke-interface {v5, v1, v0}, Landroidx/media3/common/util/Clock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v3, Landroidx/media3/common/audio/AudioFocusManager;

    move-object/from16 v4, p1

    invoke-direct {v3, v4, v1, v0}, Landroidx/media3/common/audio/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;)V

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C:Landroidx/media3/common/audio/AudioFocusManager;

    new-instance v1, Landroidx/media3/exoplayer/p;

    move-object/from16 v3, p23

    invoke-direct {v1, v0, v3}, Landroidx/media3/exoplayer/p;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    const/16 v3, 0x23

    invoke-interface {v2, v3, v1}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    new-instance v1, Landroidx/media3/exoplayer/q;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/q;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V

    const/16 v0, 0x27

    invoke-interface {v2, v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static H(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->k()V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroidx/media3/exoplayer/source/SampleStream;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-nez p0, :cond_3

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->c()J

    move-result-wide v1

    :goto_2
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p0, v1, v3

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_4
    return v0
.end method

.method public static Z(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;
    .locals 9

    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    :try_start_0
    iget v5, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->b:I

    iget-wide v6, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->c:J

    move-object v3, p5

    move-object v4, p6

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    move-object v4, v3

    invoke-virtual {p0, v2}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    iget-object p6, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p6}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result p6

    const/4 v0, -0x1

    if-eq p6, v0, :cond_4

    iget-object p2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, p2, v5}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget-boolean p2, p2, Landroidx/media3/common/Timeline$Period;->f:Z

    if-eqz p2, :cond_3

    iget p2, v5, Landroidx/media3/common/Timeline$Period;->c:I

    const-wide/16 p3, 0x0

    invoke-virtual {v2, p2, v4, p3, p4}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Window;->n:I

    iget-object p3, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, p3}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result p3

    if-ne p2, p3, :cond_3

    iget-object p2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p2, v5}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget v6, p2, Landroidx/media3/common/Timeline$Period;->c:I

    iget-wide v7, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->c:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object p5

    :cond_4
    move-object v3, p0

    if-eqz p2, :cond_5

    iget-object p0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move p2, p3

    move p3, p4

    move-object p5, v2

    move-object p6, v3

    move-object p1, v5

    move-object p4, p0

    move-object p0, v4

    invoke-static/range {p0 .. p6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a0(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I

    move-result v6

    if-eq v6, v0, :cond_5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a0(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I
    .locals 12

    move-object v3, p0

    move-object v2, p1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v6, p6

    invoke-virtual {v1, v0, p1}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Timeline$Period;->c:I

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v4, p0, v7, v8}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    const/4 v9, 0x0

    move v5, v9

    :goto_0
    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->o()I

    move-result v10

    if-ge v5, v10, :cond_1

    invoke-virtual {v6, v5, p0, v7, v8}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v10

    iget-object v10, v10, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    return v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->h()I

    move-result v7

    const/4 v8, -0x1

    move v11, v8

    move v10, v9

    :goto_1
    if-ge v10, v7, :cond_3

    if-ne v11, v8, :cond_3

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->d(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v1

    if-ne v1, v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v10, v10, 0x1

    move v3, v1

    move-object v1, v0

    move v0, v3

    move-object v3, p0

    goto :goto_1

    :cond_3
    :goto_2
    if-ne v11, v8, :cond_4

    return v8

    :cond_4
    invoke-virtual {v6, v11, p1, v9}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->c:I

    return v0
.end method


# virtual methods
.method public final A(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-ne v1, p1, :cond_0

    iget-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->o(J)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K()V

    return-void

    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L()V

    :cond_1
    return-void
.end method

.method public final A0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 2

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, p0}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/common/Timeline$Window;->i:Z

    if-eqz p1, :cond_1

    iget-wide p0, p0, Landroidx/media3/common/Timeline$Window;->f:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B(Ljava/io/IOException;I)V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlaybackException;->b(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    :cond_0
    const-string p1, "Playback error"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C0(ZZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    return-void
.end method

.method public final B0()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->l()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final C(Z)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    if-nez v0, :cond_2

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->d()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    invoke-virtual {p0, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(J)J

    move-result-wide v3

    iput-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz p1, :cond_4

    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    :cond_4
    return-void
.end method

.method public final C0(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V(ZZZZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g:Landroidx/media3/exoplayer/LoadControl;

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/LoadControl;->i(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C:Landroidx/media3/common/audio/AudioFocusManager;

    invoke-virtual {p2, v1, p1}, Landroidx/media3/common/audio/AudioFocusManager;->c(IZ)I

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v0(I)V

    return-void
.end method

.method public final D(Landroidx/media3/common/Timeline;Z)V
    .locals 45

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S:I

    iget-boolean v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T:Z

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l:Landroidx/media3/common/Timeline$Window;

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v6

    const/4 v10, 0x4

    const-wide/16 v12, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v6, :cond_3

    sget-object v2, Landroidx/media3/exoplayer/PlaybackInfo;->u:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    cmp-long v3, v3, v12

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v27, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v27, 0x1

    :goto_1
    if-eqz v27, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Period;->f:Z

    if-nez v0, :cond_2

    const/16 v28, 0x1

    goto :goto_2

    :cond_2
    const/16 v28, 0x0

    :goto_2
    new-instance v18, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    const/16 v26, 0x0

    const/16 v29, 0x4

    const-wide/16 v20, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v29}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZZZI)V

    move-object/from16 v2, p1

    move-object/from16 v10, v18

    goto/16 :goto_20

    :cond_3
    iget-object v15, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->p()Z

    move-result v19

    if-nez v19, :cond_5

    iget-object v14, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v7, v14, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v7

    iget-boolean v7, v7, Landroidx/media3/common/Timeline$Period;->f:Z

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v14, 0x1

    :goto_4
    iget-object v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v14, :cond_6

    goto :goto_6

    :cond_6
    iget-wide v11, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    :goto_5
    move-wide/from16 v23, v11

    goto :goto_7

    :cond_7
    :goto_6
    iget-wide v11, v0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    goto :goto_5

    :goto_7
    const/4 v13, -0x1

    if-eqz v3, :cond_b

    move-object v7, v6

    move v6, v5

    move v5, v4

    const/4 v4, 0x1

    move-object v11, v7

    const/4 v12, 0x1

    const-wide/16 v29, 0x1

    move-object v7, v2

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {v2, v6}, Landroidx/media3/common/Timeline;->a(Z)I

    move-result v3

    move-object v6, v11

    move-wide/from16 v4, v23

    const/4 v11, 0x0

    const/16 v25, 0x0

    goto :goto_a

    :cond_8
    iget-wide v5, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->c:J

    cmp-long v3, v5, v16

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v3, :cond_9

    invoke-virtual {v2, v6, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->c:I

    move-object v6, v11

    move-wide/from16 v4, v23

    const/4 v11, 0x0

    goto :goto_8

    :cond_9
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v4, v3

    move v11, v12

    move v3, v13

    :goto_8
    iget v12, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-ne v12, v10, :cond_a

    const/4 v12, 0x1

    goto :goto_9

    :cond_a
    const/4 v12, 0x0

    :goto_9
    move/from16 v25, v12

    const/4 v12, 0x0

    :goto_a
    move-wide/from16 v21, v4

    move/from16 v39, v11

    move/from16 v38, v12

    move/from16 v37, v25

    const-wide/16 v11, 0x0

    move v5, v3

    move-object v3, v7

    goto/16 :goto_10

    :cond_b
    move-object v7, v2

    move-object v11, v6

    const-wide/16 v29, 0x1

    move-object/from16 v2, p1

    move v6, v5

    move v5, v4

    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2, v6}, Landroidx/media3/common/Timeline;->a(Z)I

    move-result v3

    move v5, v3

    move-object v3, v7

    move-object v6, v11

    :goto_b
    move-wide/from16 v21, v23

    const-wide/16 v11, 0x0

    :goto_c
    const/16 v37, 0x0

    const/16 v38, 0x0

    :goto_d
    const/16 v39, 0x0

    goto/16 :goto_10

    :cond_c
    invoke-virtual {v2, v11}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v13, :cond_e

    move-object v3, v7

    iget-object v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    move-object v4, v8

    move-object v8, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v11

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a0(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I

    move-result v4

    move-object/from16 v43, v3

    move-object v3, v2

    move-object v2, v8

    move-object/from16 v8, v43

    if-ne v4, v13, :cond_d

    invoke-virtual {v2, v5}, Landroidx/media3/common/Timeline;->a(Z)I

    move-result v4

    const/4 v7, 0x1

    goto :goto_e

    :cond_d
    const/4 v7, 0x0

    :goto_e
    move v5, v4

    move/from16 v38, v7

    move-wide/from16 v21, v23

    const-wide/16 v11, 0x0

    const/16 v37, 0x0

    goto :goto_d

    :cond_e
    move-object v3, v7

    move-object v6, v11

    cmp-long v4, v23, v16

    if-nez v4, :cond_f

    invoke-virtual {v2, v6, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Timeline$Period;->c:I

    move v5, v4

    goto :goto_b

    :cond_f
    if-eqz v14, :cond_12

    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v5, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget v5, v8, Landroidx/media3/common/Timeline$Period;->c:I

    const-wide/16 v11, 0x0

    invoke-virtual {v4, v5, v3, v11, v12}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Timeline$Window;->n:I

    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v7, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v5, v7}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_10

    iget-wide v4, v8, Landroidx/media3/common/Timeline$Period;->e:J

    add-long v4, v23, v4

    invoke-virtual {v2, v6, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/Timeline$Period;->c:I

    move-wide/from16 v43, v4

    move v5, v6

    move-wide/from16 v6, v43

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_f

    :cond_10
    invoke-virtual {v2, v6, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget-wide v4, v4, Landroidx/media3/common/Timeline$Period;->d:J

    cmp-long v4, v4, v16

    if-eqz v4, :cond_11

    iget-wide v4, v8, Landroidx/media3/common/Timeline$Period;->d:J

    sub-long v27, v4, v29

    const-wide/16 v25, 0x0

    invoke-static/range {v23 .. v28}, Landroidx/media3/common/util/Util;->k(JJJ)J

    move-result-wide v4

    goto :goto_f

    :cond_11
    move-wide/from16 v4, v23

    :goto_f
    move-wide/from16 v21, v4

    move v5, v13

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    goto :goto_10

    :cond_12
    const-wide/16 v11, 0x0

    move v5, v13

    move-wide/from16 v21, v23

    goto/16 :goto_c

    :goto_10
    if-eq v5, v13, :cond_13

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v3

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-wide/from16 v3, v21

    move-wide/from16 v21, v16

    goto :goto_11

    :cond_13
    move-wide/from16 v3, v21

    :goto_11
    invoke-virtual {v9, v2, v6, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v5

    iget v7, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    if-eq v7, v13, :cond_15

    iget v9, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    if-eq v9, v13, :cond_14

    if-lt v7, v9, :cond_14

    goto :goto_12

    :cond_14
    const/4 v7, 0x0

    goto :goto_13

    :cond_15
    :goto_12
    const/4 v7, 0x1

    :goto_13
    iget-object v9, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v15}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v25

    if-nez v25, :cond_16

    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v25

    if-nez v25, :cond_16

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    goto :goto_14

    :cond_16
    const/4 v7, 0x0

    :goto_14
    invoke-virtual {v2, v6, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v11

    if-nez v14, :cond_18

    cmp-long v12, v23, v21

    if-nez v12, :cond_18

    iget-object v12, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget v14, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    iget v13, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    iget-object v10, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    goto :goto_16

    :cond_17
    invoke-virtual {v15}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-virtual {v11, v13}, Landroidx/media3/common/Timeline$Period;->h(I)Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-virtual {v11, v13, v14}, Landroidx/media3/common/Timeline$Period;->e(II)I

    move-result v10

    const/4 v12, 0x4

    if-eq v10, v12, :cond_18

    invoke-virtual {v11, v13, v14}, Landroidx/media3/common/Timeline$Period;->e(II)I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_18

    :goto_15
    const/4 v10, 0x1

    goto :goto_17

    :cond_18
    :goto_16
    const/4 v10, 0x0

    goto :goto_17

    :cond_19
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v10

    if-eqz v10, :cond_18

    iget v10, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    invoke-virtual {v11, v10}, Landroidx/media3/common/Timeline$Period;->h(I)Z

    move-result v10

    if-eqz v10, :cond_18

    goto :goto_15

    :goto_17
    if-nez v7, :cond_1a

    if-eqz v10, :cond_1b

    :cond_1a
    move-object v5, v15

    :cond_1b
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-virtual {v5, v15}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    :cond_1c
    :goto_18
    move-wide/from16 v33, v3

    move-wide/from16 v35, v21

    goto :goto_1a

    :cond_1d
    iget-object v3, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v3, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    iget v4, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    invoke-virtual {v8, v4}, Landroidx/media3/common/Timeline$Period;->f(I)I

    move-result v4

    if-ne v3, v4, :cond_1e

    iget-object v3, v8, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget-wide v3, v3, Landroidx/media3/common/AdPlaybackState;->c:J

    goto :goto_18

    :cond_1e
    const-wide/16 v3, 0x0

    goto :goto_18

    :cond_1f
    if-eqz v9, :cond_1c

    invoke-virtual {v15}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-virtual {v2, v6, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget v9, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    invoke-virtual {v7, v9}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v7

    iget-wide v9, v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->j:J

    iget-wide v11, v0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    cmp-long v13, v11, v16

    if-eqz v13, :cond_20

    iget-wide v13, v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->a:J

    const-wide/high16 v27, -0x8000000000000000L

    cmp-long v27, v13, v27

    if-eqz v27, :cond_20

    add-long/2addr v13, v9

    cmp-long v11, v13, v11

    if-gtz v11, :cond_20

    goto :goto_18

    :cond_20
    iget v11, v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->b:I

    iget v12, v15, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    if-le v11, v12, :cond_1c

    iget-object v7, v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->f:[I

    aget v7, v7, v12

    const/4 v11, 0x2

    if-ne v7, v11, :cond_1c

    invoke-virtual {v2, v6, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v6

    iget-wide v6, v6, Landroidx/media3/common/Timeline$Period;->d:J

    cmp-long v11, v6, v16

    if-eqz v11, :cond_21

    sub-long v6, v6, v29

    add-long/2addr v3, v9

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_19

    :cond_21
    add-long/2addr v3, v9

    :goto_19
    move-wide/from16 v33, v3

    move-wide/from16 v35, v33

    :goto_1a
    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    cmp-long v3, v33, v3

    if-eqz v3, :cond_22

    goto :goto_1b

    :cond_22
    const/16 v40, 0x0

    goto :goto_1c

    :cond_23
    :goto_1b
    const/16 v40, 0x1

    :goto_1c
    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_24

    const/4 v3, 0x4

    goto :goto_1d

    :cond_24
    const/4 v3, 0x3

    :goto_1d
    iget-object v6, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v7, v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    iget v6, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    if-eq v6, v4, :cond_26

    iget-object v4, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget v6, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    invoke-virtual {v4, v6}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v4

    iget v6, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    iget-object v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->f:[I

    array-length v7, v4

    if-ge v6, v7, :cond_25

    aget v4, v4, v6

    const/4 v11, 0x2

    if-eq v4, v11, :cond_26

    :cond_25
    const/16 v42, 0x0

    goto :goto_1e

    :cond_26
    move/from16 v42, v3

    :goto_1e
    if-eqz v40, :cond_27

    if-eqz p2, :cond_27

    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v3

    if-nez v3, :cond_27

    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Period;->f:Z

    if-nez v0, :cond_27

    const/16 v41, 0x1

    goto :goto_1f

    :cond_27
    const/16 v41, 0x0

    :goto_1f
    new-instance v31, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-object/from16 v32, v5

    invoke-direct/range {v31 .. v42}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZZZI)V

    move-object/from16 v10, v31

    :goto_20
    iget-object v11, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v12, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->b:J

    const/4 v14, 0x0

    :try_start_0
    iget-boolean v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->e:Z

    if-eqz v0, :cond_29

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_28

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v0(I)V

    :cond_28
    const/4 v4, 0x0

    goto :goto_21

    :catchall_0
    move-exception v0

    move-object/from16 v43, v11

    move-object v11, v2

    move-object/from16 v2, v43

    goto/16 :goto_30

    :goto_21
    invoke-virtual {v1, v4, v4, v4, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V(ZZZZ)V

    goto :goto_22

    :cond_29
    const/4 v3, 0x1

    :goto_22
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v4, :cond_2b

    aget-object v6, v0, v5

    iget-object v7, v6, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v7, v2}, Landroidx/media3/exoplayer/Renderer;->y(Landroidx/media3/common/Timeline;)V

    iget-object v6, v6, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v6, :cond_2a

    invoke-interface {v6, v2}, Landroidx/media3/exoplayer/Renderer;->y(Landroidx/media3/common/Timeline;)V

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_2b
    iget-boolean v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_31

    :try_start_1
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_2c

    const-wide/16 v6, 0x0

    goto :goto_24

    :cond_2c
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v(Landroidx/media3/exoplayer/MediaPeriodHolder;)J

    move-result-wide v3

    move-wide v6, v3

    :goto_24
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v0, :cond_2e

    :try_start_2
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_2d

    goto :goto_25

    :cond_2d
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v(Landroidx/media3/exoplayer/MediaPeriodHolder;)J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v8, v3

    goto :goto_26

    :cond_2e
    :goto_25
    const-wide/16 v8, 0x0

    :goto_26
    :try_start_3
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v3, p1

    :try_start_4
    invoke-virtual/range {v2 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->w(Landroidx/media3/common/Timeline;JJJ)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v8, v3

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2f

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0(Z)V

    goto :goto_29

    :catchall_1
    move-exception v0

    :goto_27
    move-object v2, v11

    :goto_28
    move-object v11, v8

    goto/16 :goto_30

    :cond_2f
    const/16 v20, 0x2

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_30

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p()V

    :cond_30
    :goto_29
    move-object v2, v11

    goto :goto_2d

    :catchall_2
    move-exception v0

    move-object v8, v3

    goto :goto_27

    :catchall_3
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_27

    :catchall_4
    move-exception v0

    move-object v8, v2

    goto :goto_27

    :cond_31
    move-object v8, v2

    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_2a
    if-eqz v0, :cond_33

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v11}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {v2, v8, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->i(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->k()V

    :cond_32
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_2a

    :cond_33
    iget-boolean v6, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->d:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eq v2, v0, :cond_34

    move v5, v3

    :goto_2b
    move-object v2, v11

    move-wide v3, v12

    goto :goto_2c

    :cond_34
    const/4 v5, 0x0

    goto :goto_2b

    :goto_2c
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2d

    :catchall_5
    move-exception v0

    move-wide v12, v3

    goto :goto_28

    :catchall_6
    move-exception v0

    goto :goto_27

    :goto_2d
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-boolean v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->f:Z

    if-eqz v0, :cond_35

    move-wide v6, v12

    goto :goto_2e

    :cond_35
    move-wide/from16 v6, v16

    :goto_2e
    const/4 v8, 0x0

    move-object v3, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    move-object v11, v2

    move-object v2, v3

    iget-boolean v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->g:Z

    if-nez v0, :cond_36

    iget-wide v3, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->c:J

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_38

    :cond_36
    iget-wide v5, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->c:J

    iget-boolean v9, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->h:Z

    if-eqz v9, :cond_37

    move-wide v7, v12

    goto :goto_2f

    :cond_37
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    move-wide v7, v3

    :goto_2f
    iget v10, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->i:I

    move-wide v3, v12

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_38
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W()V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v11, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, v11}, Landroidx/media3/exoplayer/PlaybackInfo;->j(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-nez v0, :cond_39

    iput-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    :cond_39
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Z)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v11, 0x2

    invoke-interface {v0, v11}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    return-void

    :goto_30
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-boolean v3, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->f:Z

    if-eqz v3, :cond_3a

    move-wide v6, v12

    goto :goto_31

    :cond_3a
    move-wide/from16 v6, v16

    :goto_31
    const/4 v8, 0x0

    move-object v3, v2

    move-object v2, v11

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    move-object v2, v3

    iget-boolean v3, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->g:Z

    if-nez v3, :cond_3b

    iget-wide v3, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->c:J

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3d

    :cond_3b
    iget-wide v5, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->c:J

    iget-boolean v9, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->h:Z

    if-eqz v9, :cond_3c

    move-wide v7, v12

    goto :goto_32

    :cond_3c
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    move-wide v7, v3

    :goto_32
    iget v10, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->i:I

    move-wide v3, v12

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_3d
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W()V

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v11, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v2, v11}, Landroidx/media3/exoplayer/PlaybackInfo;->j(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-nez v2, :cond_3e

    iput-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    :cond_3e
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Z)V

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v11, 0x2

    invoke-interface {v1, v11}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    throw v0
.end method

.method public final D0()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->g:Z

    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->b:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->i()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/StandaloneMediaClock;->b(J)V

    iput-boolean v1, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v2}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->stop()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->stop()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final E(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-ne v4, p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-nez p1, :cond_0

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    invoke-virtual {v1, p1, v4, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->f(FLandroidx/media3/common/Timeline;Z)V

    :cond_0
    iget-object p1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {p0, p1, v2, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v1, p1, :cond_1

    iget-object p1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    invoke-virtual {p0, v4, v5, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X(JZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length p1, p1

    new-array p1, p1, [Z

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t([ZJ)V

    iput-boolean v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->i:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, p1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iget-wide v6, p1, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    const/4 v10, 0x0

    const/4 v11, 0x5

    move-wide v8, v4

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p0

    move-object v1, v2

    iput-object p0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K()V

    return-void

    :cond_2
    move-object v1, p0

    const/4 p0, 0x0

    :goto_1
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p0, v4, :cond_4

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-ne v5, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    iget-boolean p0, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    xor-int/2addr p0, v3

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/PlaybackParameters;->a:F

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    invoke-virtual {v4, p0, v3, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->f(FLandroidx/media3/common/Timeline;Z)V

    iget-object p0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p0, :cond_5

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-ne p0, p1, :cond_5

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L()V

    :cond_5
    return-void
.end method

.method public final E0()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    if-eq v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->b(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_2
    return-void
.end method

.method public final F(Landroidx/media3/common/PlaybackParameters;FZZ)V
    .locals 4

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->g(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_1
    iget p3, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p4, p4, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_4

    iget-object v1, p4, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    invoke-interface {v3, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->i(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p4, p4, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length p3, p0

    :goto_2
    if-ge v0, p3, :cond_6

    aget-object p4, p0, v0

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    iget-object v2, p4, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v2, p2, v1}, Landroidx/media3/exoplayer/Renderer;->D(FF)V

    iget-object p4, p4, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz p4, :cond_5

    invoke-interface {p4, p2, v1}, Landroidx/media3/exoplayer/Renderer;->D(FF)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final F0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    iget-wide v5, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    if-ne v2, v1, :cond_0

    :goto_0
    sub-long/2addr v3, v5

    move-wide v9, v3

    goto :goto_1

    :cond_0
    sub-long/2addr v3, v5

    iget-object v1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v5, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->d()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(J)J

    move-result-wide v11

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v1}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->c()J

    move-result-wide v1

    :goto_2
    move-wide/from16 v16, v1

    goto :goto_3

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :goto_3
    new-instance v5, Landroidx/media3/exoplayer/LoadControl$Parameters;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    iget v13, v1, Landroidx/media3/common/PlaybackParameters;->a:F

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v14, v1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget-boolean v15, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P:Z

    iget-wide v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:J

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/exoplayer/analytics/PlayerId;

    move-object/from16 v8, p1

    move-wide/from16 v18, v1

    invoke-direct/range {v5 .. v19}, Landroidx/media3/exoplayer/LoadControl$Parameters;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJJ)V

    move-object/from16 v1, p3

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g:Landroidx/media3/exoplayer/LoadControl;

    invoke-interface {v0, v5, v1}, Landroidx/media3/exoplayer/LoadControl;->c(Landroidx/media3/exoplayer/LoadControl$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method public final G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, p4

    move/from16 v2, p9

    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c1:Z

    const/4 v7, 0x0

    if-nez v3, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    cmp-long v3, p2, v8

    if-nez v3, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c1:Z

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W()V

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->h:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v9, v3, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v10, v3, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    iget-boolean v11, v11, Landroidx/media3/exoplayer/MediaSourceList;->k:Z

    if-eqz v11, :cond_10

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v3, :cond_2

    sget-object v8, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_2

    :cond_2
    iget-object v8, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/source/TrackGroupArray;

    :goto_2
    if-nez v3, :cond_3

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_3

    :cond_3
    iget-object v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_3
    iget-object v10, v9, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    new-instance v11, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v11}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    array-length v12, v10

    move v13, v7

    move v14, v13

    :goto_4
    if-ge v13, v12, :cond_6

    aget-object v15, v10, v13

    if-eqz v15, :cond_5

    invoke-interface {v15, v7}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->e(I)Landroidx/media3/common/Format;

    move-result-object v15

    iget-object v15, v15, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    if-nez v15, :cond_4

    new-instance v15, Landroidx/media3/common/Metadata;

    new-array v6, v7, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v15, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    invoke-virtual {v11, v15}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v11, v15}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    const/4 v14, 0x1

    :cond_5
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    if-eqz v14, :cond_7

    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    :goto_6
    move-object v10, v6

    goto :goto_7

    :cond_7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    goto :goto_6

    :goto_7
    if-eqz v3, :cond_8

    iget-object v6, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v11, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    cmp-long v11, v11, v4

    if-eqz v11, :cond_8

    invoke-virtual {v6, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodInfo;->a(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v6

    iput-object v6, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    :cond_8
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v11, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v6, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v11, v6, :cond_9

    goto :goto_b

    :cond_9
    if-eqz v11, :cond_f

    iget-object v6, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move v11, v7

    move v12, v11

    :goto_8
    array-length v13, v3

    if-ge v11, v13, :cond_c

    invoke-virtual {v6, v11}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v13

    if-eqz v13, :cond_b

    aget-object v13, v3, v11

    iget-object v13, v13, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v13}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_a

    move v14, v7

    goto :goto_9

    :cond_a
    iget-object v13, v6, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v13, v13, v11

    iget v13, v13, Landroidx/media3/exoplayer/RendererConfiguration;->a:I

    if-eqz v13, :cond_b

    const/4 v12, 0x1

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_c
    const/4 v14, 0x1

    :goto_9
    if-eqz v12, :cond_d

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    goto :goto_a

    :cond_d
    move v14, v7

    :goto_a
    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X:Z

    if-ne v14, v3, :cond_e

    goto :goto_b

    :cond_e
    iput-boolean v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X:Z

    if-nez v14, :cond_f

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    :cond_f
    :goto_b
    move-object v11, v9

    move-object v12, v10

    move-object v10, v8

    goto :goto_c

    :cond_10
    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v8, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    goto :goto_b

    :goto_c
    if-eqz p8, :cond_13

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-boolean v6, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->d:Z

    if-eqz v6, :cond_12

    iget v6, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->e:I

    const/4 v8, 0x5

    if-eq v6, v8, :cond_12

    if-ne v2, v8, :cond_11

    const/4 v6, 0x1

    goto :goto_d

    :cond_11
    move v6, v7

    :goto_d
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->g(Z)V

    goto :goto_e

    :cond_12
    const/4 v14, 0x1

    iput-boolean v14, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a:Z

    iput-boolean v14, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->d:Z

    iput v2, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->e:I

    :cond_13
    :goto_e
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    invoke-virtual {v0, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(J)J

    move-result-wide v8

    move-wide/from16 v6, p6

    move-object v0, v2

    move-wide/from16 v2, p2

    invoke-virtual/range {v0 .. v12}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public final G0(IILjava/util/List;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaSourceList;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt p2, v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    sub-int v5, p2, p1

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    move v1, p1

    :goto_2
    if-ge v1, p2, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    sub-int v5, v1, p1

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/MediaItem;

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->k(Landroidx/media3/common/MediaItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->b()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final H0()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaSourceList;->k:Z

    if-nez v1, :cond_0

    goto/16 :goto_2c

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->o(J)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->k:Z

    if-nez v3, :cond_a

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->g()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_a

    iget v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_a

    :cond_1
    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v14, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v4, :cond_2

    iget-object v15, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    iget-wide v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v16, v1

    move-wide/from16 v19, v2

    move-wide/from16 v17, v4

    invoke-virtual/range {v14 .. v22}, Landroidx/media3/exoplayer/MediaPeriodQueue;->e(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v14, v3, v4, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_a

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v3, :cond_3

    const-wide v3, 0xe8d4a51000L

    goto :goto_1

    :cond_3
    iget-wide v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v6, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    add-long/2addr v4, v6

    iget-wide v6, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    sub-long v3, v4, v6

    :goto_1
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r(Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v5

    if-nez v5, :cond_4

    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->e:Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;

    invoke-interface {v5, v1, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;->a(Landroidx/media3/exoplayer/MediaPeriodInfo;J)Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v5

    goto :goto_2

    :cond_4
    iput-object v1, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iput-wide v3, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    :goto_2
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v3, :cond_6

    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v5, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->b()V

    iput-object v5, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->c()V

    goto :goto_3

    :cond_6
    iput-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_3
    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->p:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:I

    add-int/2addr v3, v13

    iput v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:I

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->n()V

    iget-boolean v2, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    if-nez v2, :cond_7

    iget-wide v2, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iput-boolean v13, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    iget-object v4, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v4, v0, v2, v3}, Landroidx/media3/exoplayer/source/MediaPeriod;->o(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    goto :goto_4

    :cond_7
    iget-boolean v2, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v3, 0x8

    iget-object v4, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v2, v3, v4}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    :cond_8
    :goto_4
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v2, v5, :cond_9

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    invoke-virtual {v0, v1, v2, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X(JZ)V

    :cond_9
    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Z)V

    move v14, v13

    goto :goto_5

    :cond_a
    move v14, v12

    :goto_5
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Z

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E0()V

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K()V

    :goto_6
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Z

    const-wide/32 v7, 0x989680

    const/4 v15, 0x4

    if-nez v1, :cond_c

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Z

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i1:Z

    if-nez v1, :cond_c

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    :goto_7
    move-wide/from16 v17, v7

    const/4 v13, 0x2

    goto/16 :goto_b

    :cond_d
    iget-object v1, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_c

    iget-object v3, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v1, v3, :cond_c

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_c

    iget-boolean v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-nez v3, :cond_e

    goto :goto_7

    :cond_e
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v3

    move-wide/from16 v16, v3

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    sub-long v3, v16, v2

    long-to-float v2, v3

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/PlaybackParameters;->a:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    cmp-long v2, v2, v7

    if-lez v2, :cond_f

    goto :goto_7

    :cond_f
    iget-object v2, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v2, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->n()V

    iget-object v2, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    const/4 v3, 0x2

    iget-object v1, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_10

    move v13, v3

    move-wide/from16 v17, v7

    goto/16 :goto_b

    :cond_10
    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move v5, v12

    :goto_8
    array-length v3, v2

    if-ge v5, v3, :cond_15

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v3

    if-eqz v3, :cond_14

    aget-object v3, v2, v5

    move-wide/from16 v17, v7

    iget-object v7, v3, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v7, :cond_13

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->e()Z

    move-result v3

    if-nez v3, :cond_13

    aget-object v3, v2, v5

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->e()Z

    move-result v7

    xor-int/2addr v7, v13

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v7, v3, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v7}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x3

    goto :goto_9

    :cond_11
    iget-object v7, v3, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v7, :cond_12

    invoke-interface {v7}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v7

    if-eqz v7, :cond_12

    move v7, v15

    goto :goto_9

    :cond_12
    const/4 v7, 0x2

    :goto_9
    iput v7, v3, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v3, 0x0

    move-object v8, v2

    move-object v7, v4

    move v2, v5

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v4

    const/4 v13, 0x2

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s(Landroidx/media3/exoplayer/MediaPeriodHolder;IZJ)V

    goto :goto_a

    :cond_13
    move-object v8, v2

    move-object v7, v4

    move v2, v5

    const/4 v13, 0x2

    goto :goto_a

    :cond_14
    move-wide/from16 v17, v7

    const/4 v13, 0x2

    move-object v8, v2

    move-object v7, v4

    move v2, v5

    :goto_a
    add-int/lit8 v5, v2, 0x1

    move-object v4, v7

    move-object v2, v8

    move-wide/from16 v7, v17

    const/4 v13, 0x1

    goto :goto_8

    :cond_15
    move-wide/from16 v17, v7

    const/4 v13, 0x2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->g()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h1:J

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->g()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v6, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Z)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K()V

    :cond_16
    :goto_b
    iget-boolean v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v3, :cond_17

    :goto_c
    goto/16 :goto_13

    :cond_17
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v4, :cond_18

    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Z

    if-eqz v4, :cond_19

    :cond_18
    move-object v12, v1

    move-wide/from16 v20, v10

    goto/16 :goto_17

    :cond_19
    iget-boolean v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-nez v4, :cond_1a

    goto :goto_c

    :cond_1a
    move v4, v12

    :goto_d
    array-length v5, v1

    if-ge v4, v5, :cond_1b

    aget-object v5, v1, v4

    iget-object v6, v5, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v5, v3, v6}, Landroidx/media3/exoplayer/RendererHolder;->d(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/Renderer;)Z

    move-result v6

    if-eqz v6, :cond_29

    iget-object v6, v5, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v5, v3, v6}, Landroidx/media3/exoplayer/RendererHolder;->d(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/Renderer;)Z

    move-result v5

    if-eqz v5, :cond_29

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1b
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m()Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v4, v5, :cond_1c

    goto :goto_c

    :cond_1c
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-boolean v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-nez v5, :cond_1d

    iget-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v19

    cmp-long v4, v5, v19

    if-gez v4, :cond_1d

    goto :goto_c

    :cond_1d
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-boolean v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v5, :cond_1e

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v4

    iget-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v5

    iget v5, v5, Landroidx/media3/common/PlaybackParameters;->a:F

    div-float/2addr v4, v5

    float-to-long v4, v4

    cmp-long v4, v4, v17

    if-lez v4, :cond_1e

    goto :goto_c

    :cond_1e
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v6, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v5, v6, :cond_1f

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v6, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :cond_1f
    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->n()V

    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v12, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v12, v12, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v20, v1

    move-object v1, v7

    const/4 v7, 0x0

    move-object/from16 v21, v4

    move-object v4, v3

    move-object v3, v1

    move-object/from16 v23, v2

    move-object v2, v12

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v12, v20

    move-object/from16 v24, v21

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    iget-boolean v1, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    const/4 v2, -0x2

    if-eqz v1, :cond_2a

    if-eqz v8, :cond_20

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h1:J

    cmp-long v1, v3, v10

    if-nez v1, :cond_21

    :cond_20
    iget-object v1, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->g()J

    move-result-wide v3

    cmp-long v1, v3, v10

    if-eqz v1, :cond_2a

    :cond_21
    iput-wide v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h1:J

    if-eqz v8, :cond_22

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i1:Z

    if-nez v1, :cond_22

    const/4 v1, 0x1

    goto :goto_e

    :cond_22
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_25

    const/4 v3, 0x0

    :goto_f
    array-length v4, v12

    if-ge v3, v4, :cond_25

    invoke-virtual {v13, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v4

    iget-object v5, v13, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    if-eqz v4, :cond_24

    aget-object v4, v12, v3

    iget-object v4, v4, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v4

    if-ne v4, v2, :cond_23

    goto :goto_10

    :cond_23
    aget-object v4, v5, v3

    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->s()Landroidx/media3/common/Format;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {v5}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->s()Landroidx/media3/common/Format;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/media3/common/MimeTypes;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    aget-object v4, v12, v3

    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->e()Z

    move-result v4

    if-nez v4, :cond_24

    const/4 v1, 0x0

    goto :goto_11

    :cond_24
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_25
    :goto_11
    if-nez v1, :cond_2a

    invoke-virtual {v9}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v1

    array-length v3, v12

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_28

    aget-object v5, v12, v4

    iget-object v6, v5, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    iget-object v7, v5, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v7}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v8

    if-eqz v8, :cond_26

    iget v8, v5, Landroidx/media3/exoplayer/RendererHolder;->d:I

    if-eq v8, v15, :cond_26

    const/4 v13, 0x2

    if-eq v8, v13, :cond_26

    invoke-static {v7, v1, v2}, Landroidx/media3/exoplayer/RendererHolder;->k(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_26
    if-eqz v6, :cond_27

    invoke-interface {v6}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v7

    if-eqz v7, :cond_27

    iget v5, v5, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v7, 0x3

    if-eq v5, v7, :cond_27

    invoke-static {v6, v1, v2}, Landroidx/media3/exoplayer/RendererHolder;->k(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_28
    invoke-virtual {v9}, Landroidx/media3/exoplayer/MediaPeriodHolder;->g()Z

    move-result v1

    if-nez v1, :cond_29

    move-object/from16 v1, v23

    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Z)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K()V

    :cond_29
    :goto_13
    move-wide/from16 v20, v10

    goto/16 :goto_1a

    :cond_2a
    array-length v1, v12

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_29

    aget-object v4, v12, v3

    invoke-virtual {v9}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v5

    iget-object v7, v4, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    iget v8, v4, Landroidx/media3/exoplayer/RendererHolder;->b:I

    move-wide/from16 v20, v10

    move-object/from16 v10, v24

    invoke-virtual {v10, v8}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v11

    invoke-virtual {v13, v8}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v22

    iget-object v15, v4, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v15, :cond_2b

    iget v2, v4, Landroidx/media3/exoplayer/RendererHolder;->d:I

    move-object/from16 v25, v7

    const/4 v7, 0x3

    if-eq v2, v7, :cond_2c

    if-nez v2, :cond_2d

    invoke-static/range {v25 .. v25}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_15

    :cond_2b
    move-object/from16 v25, v7

    const/4 v7, 0x3

    :cond_2c
    :goto_15
    move-object/from16 v15, v25

    :cond_2d
    if-eqz v11, :cond_30

    invoke-interface {v15}, Landroidx/media3/exoplayer/Renderer;->u()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-interface/range {v25 .. v25}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v2

    const/4 v11, -0x2

    if-ne v2, v11, :cond_2e

    const/4 v2, 0x1

    goto :goto_16

    :cond_2e
    const/4 v2, 0x0

    :goto_16
    iget-object v7, v10, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v7, v7, v8

    iget-object v11, v13, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v8, v11, v8

    if-eqz v22, :cond_2f

    invoke-static {v8, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    if-nez v2, :cond_2f

    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->e()Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_2f
    invoke-static {v15, v5, v6}, Landroidx/media3/exoplayer/RendererHolder;->k(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_30
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v24, v10

    move-wide/from16 v10, v20

    const/4 v2, -0x2

    const/4 v15, 0x4

    goto :goto_14

    :goto_17
    iget-object v1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->k:Z

    if-nez v1, :cond_31

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Z

    if-eqz v1, :cond_34

    :cond_31
    array-length v1, v12

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_34

    aget-object v4, v12, v2

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v5

    if-eqz v5, :cond_33

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->j()Z

    move-result v5

    if-eqz v5, :cond_33

    iget-object v5, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v5, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    cmp-long v7, v5, v20

    if-eqz v7, :cond_32

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v7, v5, v7

    if-eqz v7, :cond_32

    iget-wide v7, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    add-long/2addr v7, v5

    goto :goto_19

    :cond_32
    move-wide/from16 v7, v20

    :goto_19
    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v7, v8}, Landroidx/media3/exoplayer/RendererHolder;->k(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_34
    :goto_1a
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_3e

    iget-object v2, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v2, v1, :cond_3e

    iget-boolean v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->i:Z

    if-eqz v2, :cond_35

    goto/16 :goto_20

    :cond_35
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    iget-object v8, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/4 v2, 0x0

    const/4 v9, 0x1

    :goto_1b
    array-length v3, v7

    if-ge v2, v3, :cond_3a

    aget-object v3, v7, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->b()I

    move-result v3

    aget-object v4, v7, v2

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-object v10, v4, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v4, v10, v1, v8, v5}, Landroidx/media3/exoplayer/RendererHolder;->i(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I

    move-result v10

    iget-object v11, v4, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v4, v11, v1, v8, v5}, Landroidx/media3/exoplayer/RendererHolder;->i(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v10, v5, :cond_36

    move v10, v4

    :cond_36
    and-int/lit8 v4, v10, 0x2

    if-eqz v4, :cond_38

    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X:Z

    if-eqz v4, :cond_38

    if-nez v4, :cond_37

    goto :goto_1c

    :cond_37
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X:Z

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    if-eqz v4, :cond_38

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v13, 0x2

    invoke-interface {v4, v13}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    :cond_38
    :goto_1c
    iget v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    aget-object v5, v7, v2

    invoke-virtual {v5}, Landroidx/media3/exoplayer/RendererHolder;->b()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int/2addr v4, v3

    iput v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    and-int/lit8 v3, v10, 0x1

    if-eqz v3, :cond_39

    const/4 v3, 0x1

    goto :goto_1d

    :cond_39
    const/4 v3, 0x0

    :goto_1d
    and-int/2addr v9, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3a
    if-eqz v9, :cond_3d

    const/4 v2, 0x0

    :goto_1e
    array-length v3, v7

    if-ge v2, v3, :cond_3d

    invoke-virtual {v8, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    aget-object v3, v7, v2

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v3

    if-eqz v3, :cond_3b

    goto :goto_1f

    :cond_3b
    const/4 v3, 0x0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s(Landroidx/media3/exoplayer/MediaPeriodHolder;IZJ)V

    :cond_3c
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_3d
    if-eqz v9, :cond_3e

    iget-object v1, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v5, 0x1

    iput-boolean v5, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->i:Z

    :cond_3e
    :goto_20
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    const/4 v1, 0x0

    :goto_21
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0()Z

    move-result v2

    if-nez v2, :cond_3f

    goto/16 :goto_2b

    :cond_3f
    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Z

    if-eqz v2, :cond_40

    goto/16 :goto_2b

    :cond_40
    iget-object v2, v11, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v2, :cond_41

    goto/16 :goto_2b

    :cond_41
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v2, :cond_50

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_50

    iget-boolean v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->i:Z

    if-eqz v2, :cond_50

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M()V

    :cond_42
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i1:Z

    invoke-virtual {v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->a()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v2, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v2, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_43

    iget-object v2, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v4, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    if-ne v4, v3, :cond_43

    iget v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    iget v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    if-eq v1, v2, :cond_43

    const/4 v1, 0x1

    goto :goto_22

    :cond_43
    const/4 v1, 0x0

    :goto_22
    iget-object v2, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    move v3, v1

    iget-object v1, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iget-wide v6, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    const/16 v16, 0x1

    xor-int/lit8 v8, v3, 0x1

    const/4 v9, 0x0

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v2

    const/4 v13, 0x3

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J0()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v12, v1, :cond_4a

    array-length v1, v10

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_4a

    aget-object v3, v10, v2

    iget v4, v3, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v5, 0x4

    if-eq v4, v13, :cond_44

    if-ne v4, v5, :cond_45

    :cond_44
    const/4 v6, 0x2

    const/4 v7, 0x0

    goto :goto_24

    :cond_45
    const/4 v6, 0x2

    if-ne v4, v6, :cond_46

    const/4 v7, 0x0

    iput v7, v3, Landroidx/media3/exoplayer/RendererHolder;->d:I

    goto :goto_28

    :cond_46
    const/4 v7, 0x0

    goto :goto_28

    :goto_24
    if-ne v4, v5, :cond_47

    move/from16 v4, v16

    goto :goto_25

    :cond_47
    move v4, v7

    :goto_25
    iget-object v5, v3, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    iget-object v8, v3, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    const/16 v9, 0x11

    if-eqz v4, :cond_48

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8, v9, v5}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    goto :goto_26

    :cond_48
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v9, v8}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    :goto_26
    iget v4, v3, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_49

    move v4, v7

    goto :goto_27

    :cond_49
    move/from16 v4, v16

    :goto_27
    iput v4, v3, Landroidx/media3/exoplayer/RendererHolder;->d:I

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_4a
    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-ne v1, v13, :cond_4b

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B0()V

    :cond_4b
    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move v2, v7

    :goto_29
    array-length v3, v10

    if-ge v2, v3, :cond_4f

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_2a

    :cond_4c
    aget-object v3, v10, v2

    iget-object v4, v3, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    iget-object v3, v3, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v3}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->m()V

    goto :goto_2a

    :cond_4d
    if-eqz v4, :cond_4e

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->m()V

    :cond_4e
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_4f
    move/from16 v1, v16

    goto/16 :goto_21

    :cond_50
    :goto_2b
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f1:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iget-wide v1, v1, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;->a:J

    cmp-long v1, v1, v20

    if-nez v1, :cond_51

    goto :goto_2c

    :cond_51
    if-nez v14, :cond_52

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g1:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    :cond_52
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g1:Landroidx/media3/common/Timeline;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->j(Landroidx/media3/common/Timeline;)V

    :cond_53
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L()V

    :cond_54
    :goto_2c
    return-void
.end method

.method public final I(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object p0, p0, p1

    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget p2, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object p2

    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    if-ne p2, v0, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    move p2, v2

    :goto_0
    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-ne p1, p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    if-nez p2, :cond_4

    if-eqz p0, :cond_5

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v2
.end method

.method public final I0(IIIZ)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    if-eq p1, v0, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v2

    :goto_0
    const/4 v3, 0x2

    if-ne p1, v0, :cond_1

    move p3, v3

    goto :goto_1

    :cond_1
    if-ne p3, v3, :cond_2

    move p3, v1

    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G:Z

    if-nez p1, :cond_3

    move p2, v1

    goto :goto_2

    :cond_3
    if-ne p2, v1, :cond_5

    if-eqz v0, :cond_4

    const/4 p2, 0x4

    goto :goto_2

    :cond_4
    move p2, v2

    :cond_5
    :goto_2
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    if-ne v0, p4, :cond_6

    iget v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    if-ne v0, p2, :cond_6

    iget v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    if-ne v0, p3, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1, p3, p2, p4}, Landroidx/media3/exoplayer/PlaybackInfo;->e(IIZ)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v2, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L0(ZZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p2, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_3
    if-eqz p2, :cond_9

    iget-object p3, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p3, p3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v0, p3

    move v4, v2

    :goto_4
    if-ge v4, v0, :cond_8

    aget-object v5, p3, v4

    if-eqz v5, :cond_7

    invoke-interface {v5, p4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->o(Z)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    iget-object p2, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D0()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J0()V

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean p3, p2, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    if-eqz p3, :cond_a

    invoke-virtual {p2, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->i(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_a
    iget-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->o(J)V

    return-void

    :cond_b
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 p2, 0x3

    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    if-ne p1, p2, :cond_d

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    iput-boolean v1, p1, Landroidx/media3/exoplayer/DefaultMediaClock;->g:Z

    iget-object p1, p1, Landroidx/media3/exoplayer/DefaultMediaClock;->b:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-boolean p2, p1, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    if-nez p2, :cond_c

    iget-object p2, p1, Landroidx/media3/exoplayer/StandaloneMediaClock;->b:Landroidx/media3/common/util/Clock;

    invoke-interface {p2}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v4

    iput-wide v4, p1, Landroidx/media3/exoplayer/StandaloneMediaClock;->e:J

    iput-boolean v1, p1, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    :cond_c
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B0()V

    invoke-interface {p3, v3}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    return-void

    :cond_d
    if-ne p1, v3, :cond_e

    invoke-interface {p3, v3}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    :cond_e
    :goto_5
    return-void
.end method

.method public final J()Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final J0()V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->g()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    move-wide v5, v3

    :goto_0
    cmp-long v2, v5, v3

    const/4 v3, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->g()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    invoke-virtual {v1, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Z)V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K()V

    :cond_2
    invoke-virtual {v1, v5, v6, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X(JZ)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_18

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    const/4 v9, 0x1

    const/4 v10, 0x5

    move-wide v7, v5

    move-wide v14, v5

    move-wide v5, v3

    move-wide v3, v14

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    goto/16 :goto_9

    :cond_3
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v0, v4, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v11

    :goto_1
    iget-object v5, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->b:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-object v6, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->d:Landroidx/media3/exoplayer/Renderer;

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroidx/media3/exoplayer/Renderer;->e()Z

    move-result v6

    if-nez v6, :cond_9

    if-eqz v4, :cond_5

    iget-object v6, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->d:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v6}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    :cond_5
    iget-object v6, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->d:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v6}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    move-result v6

    if-nez v6, :cond_6

    if-nez v4, :cond_9

    iget-object v4, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->d:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->j()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    iget-object v4, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->e:Landroidx/media3/exoplayer/MediaClock;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Landroidx/media3/exoplayer/MediaClock;->i()J

    move-result-wide v6

    iget-boolean v8, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->f:Z

    if-eqz v8, :cond_8

    invoke-virtual {v5}, Landroidx/media3/exoplayer/StandaloneMediaClock;->i()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_7

    iget-boolean v4, v5, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    if-eqz v4, :cond_a

    invoke-virtual {v5}, Landroidx/media3/exoplayer/StandaloneMediaClock;->i()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/media3/exoplayer/StandaloneMediaClock;->b(J)V

    iput-boolean v11, v5, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    goto :goto_3

    :cond_7
    iput-boolean v11, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->f:Z

    iget-boolean v8, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->g:Z

    if-eqz v8, :cond_8

    iget-boolean v8, v5, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    if-nez v8, :cond_8

    iget-object v8, v5, Landroidx/media3/exoplayer/StandaloneMediaClock;->b:Landroidx/media3/common/util/Clock;

    invoke-interface {v8}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v8

    iput-wide v8, v5, Landroidx/media3/exoplayer/StandaloneMediaClock;->e:J

    iput-boolean v3, v5, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    :cond_8
    invoke-virtual {v5, v6, v7}, Landroidx/media3/exoplayer/StandaloneMediaClock;->b(J)V

    invoke-interface {v4}, Landroidx/media3/exoplayer/MediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v4

    iget-object v6, v5, Landroidx/media3/exoplayer/StandaloneMediaClock;->f:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v4, v6}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5, v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->d(Landroidx/media3/common/PlaybackParameters;)V

    iget-object v5, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->c:Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;

    invoke-interface {v5, v4}, Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;->h(Landroidx/media3/common/PlaybackParameters;)V

    goto :goto_3

    :cond_9
    :goto_2
    iput-boolean v3, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->f:Z

    iget-boolean v4, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->g:Z

    if-eqz v4, :cond_a

    iget-boolean v4, v5, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    if-nez v4, :cond_a

    iget-object v4, v5, Landroidx/media3/exoplayer/StandaloneMediaClock;->b:Landroidx/media3/common/util/Clock;

    invoke-interface {v4}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/media3/exoplayer/StandaloneMediaClock;->e:J

    iput-boolean v3, v5, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    :cond_a
    :goto_3
    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->i()J

    move-result-wide v4

    iput-wide v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    iget-wide v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    sub-long/2addr v4, v6

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v6, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_8

    :cond_b
    iget-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c1:Z

    if-eqz v0, :cond_c

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-boolean v11, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c1:Z

    :cond_c
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v0

    iget v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b1:I

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v8, 0x0

    if-lez v2, :cond_d

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_4

    :cond_d
    move-object v9, v8

    :goto_4
    if-eqz v9, :cond_10

    iget v10, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->c:I

    if-gt v10, v0, :cond_e

    if-ne v10, v0, :cond_10

    iget-wide v9, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->d:J

    cmp-long v9, v9, v6

    if-lez v9, :cond_10

    :cond_e
    add-int/lit8 v9, v2, -0x1

    if-lez v9, :cond_f

    iget-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_5

    :cond_f
    move-object v2, v8

    :goto_5
    move v14, v9

    move-object v9, v2

    move v2, v14

    goto :goto_4

    :cond_10
    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_11

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_6

    :cond_11
    move-object v9, v8

    :goto_6
    if-eqz v9, :cond_13

    iget-object v10, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->e:Ljava/lang/Object;

    if-eqz v10, :cond_13

    iget v10, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->c:I

    if-lt v10, v0, :cond_12

    if-ne v10, v0, :cond_13

    iget-wide v12, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->d:J

    cmp-long v10, v12, v6

    if-gtz v10, :cond_13

    :cond_12
    add-int/lit8 v2, v2, 0x1

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_11

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_6

    :cond_13
    :goto_7
    if-eqz v9, :cond_15

    iget-object v10, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->e:Ljava/lang/Object;

    if-eqz v10, :cond_15

    iget v10, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->c:I

    if-ne v10, v0, :cond_15

    iget-wide v12, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->d:J

    cmp-long v10, v12, v6

    if-lez v10, :cond_15

    cmp-long v10, v12, v4

    if-gtz v10, :cond_15

    :try_start_0
    iget-object v10, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->b:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v1, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g0(Landroidx/media3/exoplayer/PlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->b:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_14

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_7

    :cond_14
    move-object v9, v8

    goto :goto_7

    :catchall_0
    move-exception v0

    iget-object v3, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->b:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    throw v0

    :cond_15
    iput v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b1:I

    :cond_16
    :goto_8
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->p()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->d:Z

    xor-int/lit8 v9, v0, 0x1

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v6, v0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    const/4 v10, 0x6

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v3

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    goto :goto_9

    :cond_17
    move-wide v3, v4

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iput-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->t:J

    :cond_18
    :goto_9
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->d()J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(J)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    if-eqz v2, :cond_19

    iget v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->a:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_19

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-wide v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    invoke-virtual {v1, v3, v4, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J

    move-result-wide v3

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    invoke-interface {v2, v3, v4, v5, v6}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->b(JJ)F

    move-result v0

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->a:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_19

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    new-instance v3, Landroidx/media3/common/PlaybackParameters;

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->b:F

    invoke-direct {v3, v0, v2}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/DefaultMediaClock;->d(Landroidx/media3/common/PlaybackParameters;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->a:F

    invoke-virtual {v1, v0, v2, v11, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F(Landroidx/media3/common/PlaybackParameters;FZZ)V

    :cond_19
    :goto_a
    return-void
.end method

.method public final K()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-nez v1, :cond_0

    move v1, v6

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_4

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-boolean v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-nez v7, :cond_1

    move-wide v7, v4

    goto :goto_0

    :cond_1
    iget-object v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v7}, Landroidx/media3/exoplayer/source/SequenceableLoader;->c()J

    move-result-wide v7

    :goto_0
    invoke-virtual {v0, v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(J)J

    move-result-wide v15

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v7, v7, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    iget-wide v10, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    if-ne v1, v7, :cond_2

    :goto_1
    sub-long/2addr v8, v10

    move-wide v13, v8

    goto :goto_2

    :cond_2
    sub-long/2addr v8, v10

    iget-object v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v10, v7, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    goto :goto_1

    :goto_2
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v8, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v8, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v7}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->c()J

    move-result-wide v7

    move-wide/from16 v20, v7

    goto :goto_3

    :cond_3
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    new-instance v9, Landroidx/media3/exoplayer/LoadControl$Parameters;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v11, v7, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v12, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->a:F

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget-boolean v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P:Z

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:J

    move/from16 v17, v1

    move-wide/from16 v22, v2

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-direct/range {v9 .. v23}, Landroidx/media3/exoplayer/LoadControl$Parameters;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJJ)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g:Landroidx/media3/exoplayer/LoadControl;

    invoke-interface {v1, v9}, Landroidx/media3/exoplayer/LoadControl;->g(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v1

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_5

    iget-boolean v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v3, :cond_5

    const-wide/32 v7, 0x7a120

    cmp-long v3, v15, v7

    if-gez v3, :cond_5

    iget-wide v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n:J

    cmp-long v3, v7, v4

    if-gtz v3, :cond_4

    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Z

    if-eqz v3, :cond_5

    :cond_4
    iget-object v1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    invoke-interface {v1, v2, v3, v6}, Landroidx/media3/exoplayer/source/MediaPeriod;->u(JZ)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g:Landroidx/media3/exoplayer/LoadControl;

    invoke-interface {v1, v9}, Landroidx/media3/exoplayer/LoadControl;->g(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v1

    :cond_5
    :goto_4
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v2}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    iget-wide v9, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    sub-long/2addr v7, v9

    iput-wide v7, v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;->a:J

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/PlaybackParameters;->a:F

    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    const/4 v8, 0x1

    if-gtz v7, :cond_7

    const v7, -0x800001

    cmpl-float v7, v3, v7

    if-nez v7, :cond_6

    goto :goto_5

    :cond_6
    move v7, v6

    goto :goto_6

    :cond_7
    :goto_5
    move v7, v8

    :goto_6
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput v3, v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;->b:F

    iget-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:J

    cmp-long v3, v9, v4

    if-gez v3, :cond_9

    cmp-long v3, v9, v24

    if-nez v3, :cond_8

    goto :goto_7

    :cond_8
    move v3, v6

    goto :goto_8

    :cond_9
    :goto_7
    move v3, v8

    :goto_8
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-wide v9, v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;->c:J

    new-instance v3, Landroidx/media3/exoplayer/LoadingInfo;

    invoke-direct {v3, v2}, Landroidx/media3/exoplayer/LoadingInfo;-><init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v2, :cond_a

    move v6, v8

    :cond_a
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v1, v3}, Landroidx/media3/exoplayer/source/SequenceableLoader;->a(Landroidx/media3/exoplayer/LoadingInfo;)Z

    :cond_b
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E0()V

    return-void
.end method

.method public final K0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    iget-object v1, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 p4, 0x10

    invoke-interface {p3, p4}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->d(Landroidx/media3/common/PlaybackParameters;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F(Landroidx/media3/common/PlaybackParameters;FZZ)V

    return-void

    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v1, p2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v2}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    iget-object v0, v2, Landroidx/media3/common/Timeline$Window;->j:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->a(Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p5, v4

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v1, p5, p6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-interface {v3, p0, p1}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->e(J)V

    return-void

    :cond_2
    iget-object p0, v2, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->p()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/Timeline$Period;->c:I

    const-wide/16 p4, 0x0

    invoke-virtual {p3, p1, v2, p4, p5}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p7, :cond_4

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_2
    invoke-interface {v3, v4, v5}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->e(J)V

    return-void
.end method

.method public final L()V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->m()V

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_9

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v2, :cond_9

    :cond_0
    invoke-interface {v1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->m()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->s()J

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g:Landroidx/media3/exoplayer/LoadControl;

    invoke-interface {v2}, Landroidx/media3/exoplayer/LoadControl;->h()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iput-boolean v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    invoke-interface {v1, p0, v4, v5}, Landroidx/media3/exoplayer/source/MediaPeriod;->o(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void

    :cond_3
    new-instance v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v2}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    iget-wide v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;->a:J

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/PlaybackParameters;->a:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    const/4 v6, 0x0

    if-gtz v5, :cond_5

    const v5, -0x800001

    cmpl-float v5, v4, v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v3

    :goto_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput v4, v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;->b:F

    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:J

    const-wide/16 v7, 0x0

    cmp-long p0, v4, v7

    if-gez p0, :cond_7

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v4, v7

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    move p0, v6

    goto :goto_3

    :cond_7
    :goto_2
    move p0, v3

    :goto_3
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-wide v4, v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;->c:J

    new-instance p0, Landroidx/media3/exoplayer/LoadingInfo;

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/LoadingInfo;-><init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;)V

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v3, v6

    :goto_4
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->a(Landroidx/media3/exoplayer/LoadingInfo;)Z

    :cond_9
    :goto_5
    return-void
.end method

.method public final L0(ZZ)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroidx/media3/common/util/Clock;

    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:J

    return-void
.end method

.method public final M()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a:Z

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    if-eq v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a:Z

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->b(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    :cond_1
    return-void
.end method

.method public final N(I)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v1, v0, p1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->s()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, v1, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, p1

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->s()Landroidx/media3/common/Format;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/Format;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Disabling track due to error: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v0, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b:[Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {v0}, [Landroidx/media3/exoplayer/RendererConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/exoplayer/RendererConfiguration;

    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {v2}, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v3, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->d:Landroidx/media3/common/Tracks;

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->e:Ljava/lang/Object;

    invoke-direct {v4, v0, v2, v3, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    iget-object v0, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b:[Landroidx/media3/exoplayer/RendererConfiguration;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aput-object v1, v0, p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q(I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, p0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    iget-object p0, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->k:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length p0, p0

    new-array v8, p0, [Z

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/MediaPeriodHolder;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    return-void
.end method

.method public final O(IZ)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d:[Z

    aget-boolean v1, v0, p1

    if-eq v1, p2, :cond_0

    aput-boolean p2, v0, p1

    new-instance v0, Landroidx/media3/exoplayer/o;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/o;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;IZ)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {p0, v0}, Landroidx/media3/common/util/HandlerWrapper;->k(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final P()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->b()Landroidx/media3/common/Timeline;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final Q(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    iget v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->a:I

    iget v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->b:I

    iget v3, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->c:I

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->d:Landroidx/media3/exoplayer/source/ShuffleOrder;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v5, v4, Landroidx/media3/exoplayer/MediaSourceList;->b:Ljava/util/ArrayList;

    const/4 v6, 0x0

    if-ltz v0, :cond_0

    if-gt v0, v2, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v2, v7, :cond_0

    if-ltz v3, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-object p1, v4, Landroidx/media3/exoplayer/MediaSourceList;->j:Landroidx/media3/exoplayer/source/ShuffleOrder;

    if-eq v0, v2, :cond_3

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int v7, v2, v0

    add-int/2addr v7, v3

    sub-int/2addr v7, v1

    add-int/lit8 v1, v2, -0x1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget v7, v7, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->d:I

    invoke-static {v5, v0, v2, v3}, Landroidx/media3/common/util/Util;->Q(Ljava/util/ArrayList;III)V

    :goto_1
    if-gt p1, v1, :cond_2

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iput v7, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->d:I

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->e:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->o()I

    move-result v0

    add-int/2addr v7, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaSourceList;->b()Landroidx/media3/common/Timeline;

    move-result-object p1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaSourceList;->b()Landroidx/media3/common/Timeline;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final R()V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V(ZZZZ)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g:Landroidx/media3/exoplayer/LoadControl;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/LoadControl;->e(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v0(I)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget v5, v2, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    iget v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C:Landroidx/media3/common/audio/AudioFocusManager;

    iget v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    invoke-virtual {v7, v2, v4}, Landroidx/media3/common/audio/AudioFocusManager;->c(IZ)I

    move-result v2

    invoke-virtual {p0, v2, v5, v6, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I0(IIIZ)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v2}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->d()Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    move-result-object v2

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v5, v4, Landroidx/media3/exoplayer/MediaSourceList;->b:Ljava/util/ArrayList;

    iget-boolean v6, v4, Landroidx/media3/exoplayer/MediaSourceList;->k:Z

    xor-int/2addr v6, v1

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object v2, v4, Landroidx/media3/exoplayer/MediaSourceList;->l:Landroidx/media3/datasource/TransferListener;

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/MediaSourceList;->e(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    iget-object v6, v4, Landroidx/media3/exoplayer/MediaSourceList;->g:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v1, v4, Landroidx/media3/exoplayer/MediaSourceList;->k:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {p0, v3}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    return-void
.end method

.method public final S(Landroidx/media3/common/util/ConditionVariable;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v2, v3, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V(ZZZZ)V

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    move v5, v2

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v6, v6, v5

    invoke-interface {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->h()V

    aget-object v6, v4, v5

    iget-object v7, v6, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v7}, Landroidx/media3/exoplayer/Renderer;->release()V

    iput-boolean v2, v6, Landroidx/media3/exoplayer/RendererHolder;->e:Z

    iget-object v7, v6, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroidx/media3/exoplayer/Renderer;->release()V

    iput-boolean v2, v6, Landroidx/media3/exoplayer/RendererHolder;->f:Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g:Landroidx/media3/exoplayer/LoadControl;

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/LoadControl;->f(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C:Landroidx/media3/common/audio/AudioFocusManager;

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/media3/common/audio/AudioFocusManager;->c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    invoke-virtual {v4}, Landroidx/media3/common/audio/AudioFocusManager;->a()V

    invoke-virtual {v4, v2}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->e()V

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper;->c()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackLooperProvider;->a()V

    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->d()Z

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper;->c()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackLooperProvider;->a()V

    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->d()Z

    throw p0
.end method

.method public final T(IILandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaSourceList;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-object p3, v0, Landroidx/media3/exoplayer/MediaSourceList;->j:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList;->g(II)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->b()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final U()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->a:F

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v10, 0x1

    const/4 v4, 0x0

    move-object v11, v3

    move v3, v10

    :goto_0
    if-eqz v11, :cond_13

    iget-boolean v5, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-nez v5, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v5, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-boolean v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    invoke-virtual {v11, v1, v6, v5}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j(FLandroidx/media3/common/Timeline;Z)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v12

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v11, v5, :cond_1

    move-object v14, v12

    goto :goto_1

    :cond_1
    move-object v14, v4

    :goto_1
    iget-object v4, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v5, v12, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    iget-object v7, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v7, v7

    array-length v8, v5

    if-eq v7, v8, :cond_2

    goto :goto_3

    :cond_2
    move v7, v6

    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_4

    invoke-virtual {v12, v4, v7}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-ne v11, v2, :cond_5

    move v3, v6

    :cond_5
    iget-object v11, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-object v4, v14

    goto :goto_0

    :cond_6
    :goto_3
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    const/4 v2, 0x4

    if-eqz v3, :cond_11

    iget-object v13, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v1, v13}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    move-result v1

    and-int/2addr v1, v10

    if-eqz v1, :cond_7

    move/from16 v17, v10

    goto :goto_4

    :cond_7
    move/from16 v17, v6

    :goto_4
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v1, v1

    new-array v1, v1, [Z

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    move-object/from16 v18, v1

    move-wide v15, v3

    invoke-virtual/range {v13 .. v18}, Landroidx/media3/exoplayer/MediaPeriodHolder;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v3

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-eq v5, v2, :cond_8

    iget-wide v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    cmp-long v1, v3, v7

    if-eqz v1, :cond_8

    move v8, v10

    goto :goto_5

    :cond_8
    move v8, v6

    :goto_5
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move v9, v2

    move-wide v2, v3

    move-object v7, v5

    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    iget-wide v11, v1, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    move v1, v9

    const/4 v9, 0x5

    move v14, v1

    move-object v1, v7

    move-wide/from16 v19, v11

    move v11, v6

    move-wide/from16 v6, v19

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    if-eqz v8, :cond_9

    invoke-virtual {v0, v2, v3, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X(JZ)V

    :cond_9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p()V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v1, v1

    new-array v1, v1, [Z

    move v6, v11

    :goto_6
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v3, v2

    if-ge v6, v3, :cond_f

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->b()I

    move-result v2

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->f()Z

    move-result v3

    aput-boolean v3, v1, v6

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v3, v3, v6

    iget-object v4, v13, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v4, v4, v6

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-wide v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    aget-boolean v9, v18, v6

    iget-object v12, v3, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v12}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v12}, Landroidx/media3/exoplayer/Renderer;->G()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v15

    if-eq v4, v15, :cond_a

    invoke-virtual {v3, v12, v5}, Landroidx/media3/exoplayer/RendererHolder;->a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    goto :goto_7

    :cond_a
    if-eqz v9, :cond_b

    invoke-interface {v12, v7, v8, v10}, Landroidx/media3/exoplayer/Renderer;->z(JZ)V

    :cond_b
    :goto_7
    iget-object v12, v3, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v12, :cond_d

    invoke-static {v12}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v12}, Landroidx/media3/exoplayer/Renderer;->G()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v15

    if-eq v4, v15, :cond_c

    invoke-virtual {v3, v12, v5}, Landroidx/media3/exoplayer/RendererHolder;->a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    goto :goto_8

    :cond_c
    if-eqz v9, :cond_d

    invoke-interface {v12, v7, v8, v10}, Landroidx/media3/exoplayer/Renderer;->z(JZ)V

    :cond_d
    :goto_8
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->b()I

    move-result v3

    sub-int v3, v2, v3

    if-lez v3, :cond_e

    invoke-virtual {v0, v6, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O(IZ)V

    :cond_e
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->b()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t([ZJ)V

    iput-boolean v10, v13, Landroidx/media3/exoplayer/MediaPeriodHolder;->i:Z

    :cond_10
    move v1, v14

    goto :goto_9

    :cond_11
    move v14, v2

    invoke-virtual {v1, v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    iget-boolean v1, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v1, :cond_10

    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    iget-wide v5, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Z

    if-eqz v3, :cond_12

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v3, v11, :cond_12

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p()V

    :cond_12
    iget-object v3, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->k:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v3, v3

    new-array v3, v3, [Z

    const/4 v15, 0x0

    move-wide/from16 v19, v1

    move v1, v14

    move-wide/from16 v13, v19

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroidx/media3/exoplayer/MediaPeriodHolder;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    :goto_9
    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Z)V

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-eq v2, v1, :cond_13

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J0()V

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    :cond_13
    :goto_a
    return-void
.end method

.method public final V(ZZZZ)V
    .locals 34

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    :cond_0
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-virtual {v1, v2, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L0(ZZ)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    iput-boolean v2, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->g:Z

    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->b:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-boolean v5, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->i()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroidx/media3/exoplayer/StandaloneMediaClock;->b(J)V

    iput-boolean v2, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    :cond_1
    const-wide v5, 0xe8d4a51000L

    iput-wide v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    move v0, v2

    :goto_0
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v7, v7

    if-ge v0, v7, :cond_2

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iput-wide v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h1:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v7, "Disable failed."

    invoke-static {v7, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz p1, :cond_3

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v8, v7

    move v9, v2

    :goto_3
    if-ge v9, v8, :cond_3

    aget-object v0, v7, v9

    :try_start_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/RendererHolder;->j()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v10, "Reset failed."

    invoke-static {v10, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    iput v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v8, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    iget-object v11, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v11, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    invoke-virtual {v0, v11, v10}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Period;->f:Z

    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v10, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    goto :goto_6

    :cond_5
    :goto_5
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v10, v0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    :goto_6
    if-eqz p2, :cond_7

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w(Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v0

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v7, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_7
    move-wide v10, v8

    move-wide v8, v5

    goto :goto_8

    :cond_6
    move v4, v2

    goto :goto_7

    :cond_7
    move-wide/from16 v32, v10

    move-wide v10, v8

    move-wide/from16 v8, v32

    move v4, v2

    :goto_8
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->b()V

    iput-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Z

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    if-eqz p3, :cond_9

    instance-of v5, v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    if-eqz v5, :cond_9

    check-cast v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v5, v5, Landroidx/media3/exoplayer/MediaSourceList;->j:Landroidx/media3/exoplayer/source/ShuffleOrder;

    iget-object v6, v0, Landroidx/media3/exoplayer/PlaylistTimeline;->m:[Landroidx/media3/common/Timeline;

    array-length v12, v6

    new-array v12, v12, [Landroidx/media3/common/Timeline;

    move v13, v2

    :goto_9
    array-length v14, v6

    if-ge v13, v14, :cond_8

    new-instance v14, Landroidx/media3/exoplayer/PlaylistTimeline$1;

    aget-object v15, v6, v13

    invoke-direct {v14, v15}, Landroidx/media3/exoplayer/PlaylistTimeline$1;-><init>(Landroidx/media3/common/Timeline;)V

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_8
    new-instance v6, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaylistTimeline;->n:[Ljava/lang/Object;

    invoke-direct {v6, v12, v0, v5}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    iget v0, v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    iget-object v0, v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v6, v0, v5}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v12, 0x0

    invoke-virtual {v6, v0, v5, v12, v13}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v5}, Landroidx/media3/common/Timeline$Window;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-wide v12, v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    invoke-direct {v0, v5, v12, v13}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    move-object v7, v0

    goto :goto_a

    :cond_9
    move-object v6, v0

    :cond_a
    :goto_a
    new-instance v5, Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v12, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-eqz p4, :cond_b

    :goto_b
    move-object v13, v3

    goto :goto_c

    :cond_b
    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    goto :goto_b

    :goto_c
    if-eqz v4, :cond_c

    sget-object v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    :goto_d
    move-object v15, v3

    goto :goto_e

    :cond_c
    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->h:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_d

    :goto_e
    if-eqz v4, :cond_d

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_f
    move-object/from16 v16, v3

    goto :goto_10

    :cond_d
    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_f

    :goto_10
    if-eqz v4, :cond_e

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_11
    move-object/from16 v17, v0

    goto :goto_12

    :cond_e
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    goto :goto_11

    :goto_12
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    iget v14, v0, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    move/from16 v21, v14

    const/4 v14, 0x0

    const-wide/16 v25, 0x0

    move-object/from16 v18, v7

    move-wide/from16 v23, v10

    move-wide/from16 v27, v10

    move-object/from16 v22, v0

    move/from16 v19, v3

    move/from16 v20, v4

    invoke-direct/range {v5 .. v31}, Landroidx/media3/exoplayer/PlaybackInfo;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJILandroidx/media3/exoplayer/ExoPlaybackException;ZLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;ZIILandroidx/media3/common/PlaybackParameters;JJJJZ)V

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    if-eqz p3, :cond_11

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->p(Ljava/util/ArrayList;)V

    :cond_f
    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v3, v1, Landroidx/media3/exoplayer/MediaSourceList;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    :try_start_2
    iget-object v0, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    iget-object v6, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-interface {v0, v6}, Landroidx/media3/exoplayer/source/MediaSource;->l(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_14

    :catch_2
    move-exception v0

    const-string v6, "Failed to release child source."

    invoke-static {v6, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    iget-object v0, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    iget-object v6, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->c:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    invoke-interface {v0, v6}, Landroidx/media3/exoplayer/source/MediaSource;->b(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    iget-object v0, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-interface {v0, v6}, Landroidx/media3/exoplayer/source/MediaSource;->f(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    goto :goto_13

    :cond_10
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v0, v1, Landroidx/media3/exoplayer/MediaSourceList;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-boolean v2, v1, Landroidx/media3/exoplayer/MediaSourceList;->k:Z

    :cond_11
    return-void
.end method

.method public final W()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Z

    return-void
.end method

.method public final X(JZ)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_0

    const-wide v2, 0xe8d4a51000L

    :goto_0
    add-long/2addr p1, v2

    goto :goto_1

    :cond_0
    iget-wide v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    goto :goto_0

    :goto_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-object v2, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->b:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {v2, p1, p2}, Landroidx/media3/exoplayer/StandaloneMediaClock;->b(J)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, p2, :cond_2

    aget-object v4, p1, v3

    iget-wide v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4, v5, v6, p3}, Landroidx/media3/exoplayer/Renderer;->z(JZ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object p0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_3
    if-eqz p0, :cond_5

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length p2, p1

    move p3, v2

    :goto_4
    if-ge p3, p2, :cond_4

    aget-object v0, p1, p3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->k()V

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_4
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final Y(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    move v11, v1

    :goto_0
    if-ltz v11, :cond_6

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    iget v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S:I

    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T:Z

    iget-object v1, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->e:Ljava/lang/Object;

    iget-object v2, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->b:Landroidx/media3/exoplayer/PlayerMessage;

    const/4 v13, 0x0

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l:Landroidx/media3/common/Timeline$Window;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v14, v15}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v14

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v7, v2, Landroidx/media3/exoplayer/PlayerMessage;->d:Landroidx/media3/common/Timeline;

    iget v2, v2, Landroidx/media3/exoplayer/PlayerMessage;->h:I

    invoke-direct {v1, v7, v2, v14, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    move-object v7, v3

    const/4 v3, 0x0

    move-object v2, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v2

    move-object v3, v1

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v1

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iput v1, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->c:I

    iput-wide v4, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->d:J

    iput-object v2, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->e:Ljava/lang/Object;

    :cond_2
    move-object v1, v3

    :goto_1
    move v2, v10

    goto :goto_3

    :cond_3
    move-object v7, v3

    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    :goto_2
    move-object v1, v3

    move v2, v13

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->c:I

    iget-object v1, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->e:Ljava/lang/Object;

    invoke-virtual {v8, v1, v7}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-boolean v1, v7, Landroidx/media3/common/Timeline$Period;->f:Z

    if-eqz v1, :cond_2

    iget v1, v7, Landroidx/media3/common/Timeline$Period;->c:I

    const-wide/16 v4, 0x0

    invoke-virtual {v8, v1, v6, v4, v5}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Window;->n:I

    iget-object v2, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->e:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-wide v1, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->d:J

    iget-wide v4, v7, Landroidx/media3/common/Timeline$Period;->e:J

    add-long/2addr v1, v4

    iget-object v4, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->e:Ljava/lang/Object;

    invoke-virtual {v3, v4, v7}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Timeline$Period;->c:I

    move-wide/from16 v16, v1

    move-object v2, v6

    move-wide/from16 v5, v16

    move-object v1, v3

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iput v3, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->c:I

    iput-wide v4, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->d:J

    iput-object v2, v12, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->e:Ljava/lang/Object;

    goto :goto_1

    :goto_3
    if-nez v2, :cond_5

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->b:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v2, v13}, Landroidx/media3/exoplayer/PlayerMessage;->a(Z)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_0

    :cond_6
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public final a()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    return-void
.end method

.method public final b0(J)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->d:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x3

    sget-wide v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k1:J

    if-eqz v1, :cond_7

    iget v1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-ne v1, v6, :cond_2

    goto :goto_2

    :cond_2
    move-wide v4, v7

    :goto_2
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_5

    aget-object v6, v1, v2

    iget-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    iget-wide v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t0:J

    iget-object v13, v6, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    iget-object v6, v6, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v6}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6, v9, v10, v11, v12}, Landroidx/media3/exoplayer/Renderer;->x(JJ)J

    move-result-wide v14

    goto :goto_4

    :cond_3
    const-wide v14, 0x7fffffffffffffffL

    :goto_4
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v13, v9, v10, v11, v12}, Landroidx/media3/exoplayer/Renderer;->x(JJ)J

    move-result-wide v9

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :cond_4
    invoke-static {v14, v15}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlaybackInfo;->m()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_6

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_9

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    long-to-float v2, v2

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v9

    long-to-float v3, v9

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    iget v6, v6, Landroidx/media3/common/PlaybackParameters;->a:F

    mul-float/2addr v3, v6

    add-float/2addr v3, v2

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v1

    long-to-float v1, v1

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_9

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_6

    :cond_7
    iget v1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-ne v1, v6, :cond_8

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    move-wide v4, v7

    :cond_9
    :goto_6
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    add-long v1, p1, v4

    invoke-interface {v0, v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->l(J)Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x2

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {p0, v0}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    const/16 v0, 0x16

    invoke-interface {p0, v0}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    return-void
.end method

.method public final c0(Z)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v3

    iget-object p0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, p0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    cmp-long p0, v3, v5

    if-eqz p0, :cond_0

    iget-object p0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, p0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    iget-wide v7, p0, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    const/4 v10, 0x5

    move v9, p1

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p0

    iput-object p0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_0
    return-void
.end method

.method public final d(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 p1, 0x25

    invoke-interface {p0, p1}, Landroidx/media3/common/util/HandlerWrapper;->b(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    :cond_0
    return-void
.end method

.method public final d0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    iget-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    if-eqz v0, :cond_0

    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J:I

    add-int/2addr v0, v9

    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J:I

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    :cond_0
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    return-void

    :cond_1
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S:I

    iget-boolean v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T:Z

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l:Landroidx/media3/common/Timeline$Window;

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    const/4 v4, 0x1

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v0

    const/4 v7, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_2

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w(Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v2

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    xor-int/2addr v2, v9

    move-wide v14, v10

    move-wide/from16 v18, v14

    const-wide/16 v16, 0x0

    goto/16 :goto_3

    :cond_2
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v14, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->c:J

    cmp-long v6, v14, v10

    if-nez v6, :cond_3

    move-wide v14, v10

    goto :goto_0

    :cond_3
    move-wide v14, v12

    :goto_0
    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v8, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v6, v8, v2, v12, v13}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v8, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, v8, v12}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    iget v8, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    invoke-virtual {v2, v8}, Landroidx/media3/common/Timeline$Period;->f(I)I

    move-result v2

    iget v8, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    if-ne v2, v8, :cond_4

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    iget-object v2, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget-wide v12, v2, Landroidx/media3/common/AdPlaybackState;->c:J

    goto :goto_1

    :cond_4
    const-wide/16 v12, 0x0

    :goto_1
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    iget-object v2, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget v8, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    invoke-virtual {v2, v8}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    const-wide/16 v16, 0x0

    iget-wide v4, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->a:J

    move-wide/from16 v18, v10

    iget-wide v10, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->j:J

    add-long/2addr v4, v10

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :goto_2
    move v2, v9

    goto :goto_3

    :cond_5
    move-wide/from16 v18, v10

    const-wide/16 v16, 0x0

    iget-wide v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->c:J

    cmp-long v2, v4, v18

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move v2, v7

    :goto_3
    :try_start_0
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->p()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v4, :cond_7

    :try_start_1
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move v9, v2

    move-object v2, v6

    :goto_4
    move-wide v3, v12

    move-wide v5, v14

    goto/16 :goto_13

    :cond_7
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    const/4 v4, 0x4

    if-nez v0, :cond_9

    :try_start_2
    iget v0, v3, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-eq v0, v9, :cond_8

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v0(I)V

    :cond_8
    invoke-virtual {v1, v7, v9, v7, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V(ZZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    move v9, v2

    move-object v2, v6

    move-wide v3, v12

    move-wide v5, v14

    goto/16 :goto_e

    :cond_9
    :try_start_3
    iget-object v0, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-eqz v0, :cond_e

    :try_start_4
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_b

    :try_start_5
    iget-boolean v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v3, :cond_b

    cmp-long v3, v12, v16

    if-eqz v3, :cond_b

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l:Landroidx/media3/common/Timeline$Window;

    iget-wide v10, v3, Landroidx/media3/common/Timeline$Window;->m:J

    iget-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G:Z

    if-eqz v3, :cond_a

    cmp-long v3, v10, v18

    if-eqz v3, :cond_a

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_a
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E:Landroidx/media3/exoplayer/SeekParameters;

    invoke-interface {v0, v12, v13, v3}, Landroidx/media3/exoplayer/source/MediaPeriod;->d(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :cond_b
    move-wide v10, v12

    :goto_6
    :try_start_6
    invoke-static {v10, v11}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v16

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v7

    cmp-long v0, v16, v7

    if-nez v0, :cond_c

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_d

    const/4 v5, 0x3

    if-ne v3, v5, :cond_c

    goto :goto_7

    :cond_c
    move v7, v2

    move-object v2, v6

    goto :goto_9

    :cond_d
    :goto_7
    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v10, 0x2

    move-wide v7, v3

    move v9, v2

    move-object v2, v6

    move-wide v5, v14

    :goto_8
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    return-void

    :catchall_1
    move-exception v0

    move v7, v2

    move-object v2, v6

    move v9, v7

    goto :goto_4

    :cond_e
    move v7, v2

    move-object v2, v6

    move-wide v10, v12

    :goto_9
    :try_start_7
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-ne v0, v4, :cond_f

    move v6, v9

    goto :goto_a

    :cond_f
    const/4 v6, 0x0

    :goto_a
    :try_start_8
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v3, v0, :cond_10

    move v5, v9

    :goto_b
    move-wide v3, v10

    goto :goto_c

    :cond_10
    const/4 v5, 0x0

    goto :goto_b

    :goto_c
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    cmp-long v0, v12, v10

    if-eqz v0, :cond_11

    goto :goto_d

    :cond_11
    const/4 v9, 0x0

    :goto_d
    or-int/2addr v9, v7

    :try_start_9
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v3, v2

    :try_start_a
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v8, 0x1

    move-object v4, v2

    move-wide v6, v14

    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v2, v3

    move-wide v5, v6

    move-wide v3, v10

    :goto_e
    const/4 v10, 0x2

    move-wide v7, v3

    move-object/from16 v1, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v3

    move-wide v5, v6

    :goto_f
    move-wide v3, v10

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object v2, v3

    :goto_10
    move-wide v5, v14

    goto :goto_f

    :catchall_4
    move-exception v0

    goto :goto_10

    :catchall_5
    move-exception v0

    goto :goto_12

    :goto_11
    move v9, v7

    move-wide v3, v12

    goto :goto_13

    :catchall_6
    move-exception v0

    :goto_12
    move-wide v5, v14

    goto :goto_11

    :catchall_7
    move-exception v0

    move v7, v2

    move-object v2, v6

    goto :goto_12

    :goto_13
    const/4 v10, 0x2

    move-wide v7, v3

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    throw v0
.end method

.method public final e(I)V
    .locals 2

    const/16 v0, 0x21

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {p0, v0, p1, v1}, Landroidx/media3/common/util/HandlerWrapper;->i(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    return-void
.end method

.method public final e0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D0()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L0(ZZ)V

    const/4 v2, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p5, p5, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v3, 0x3

    if-ne p5, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v0(I)V

    :cond_1
    iget-object p5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p5, p5, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-object v3, p5

    :goto_0
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_3
    :goto_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p4, :cond_4

    if-ne p5, v3, :cond_4

    if-eqz v3, :cond_7

    iget-wide p4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    add-long/2addr p4, p2

    const-wide/16 v6, 0x0

    cmp-long p1, p4, v6

    if-gez p1, :cond_7

    :cond_4
    move p1, v0

    :goto_2
    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length p4, p4

    if-ge p1, p4, :cond_5

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    iput-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h1:J

    if-eqz v3, :cond_7

    :goto_3
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p4, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq p4, v3, :cond_6

    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->a()Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    const-wide p4, 0xe8d4a51000L

    iput-wide p4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length p1, p1

    new-array p1, p1, [Z

    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p4, p4, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide p4

    invoke-virtual {p0, p1, p4, p5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t([ZJ)V

    iput-boolean v1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->i:Z

    :cond_7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p()V

    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length p4, p1

    move p5, v0

    :goto_4
    if-ge p5, p4, :cond_a

    aget-object v6, p1, p5

    invoke-virtual {v6}, Landroidx/media3/exoplayer/RendererHolder;->f()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v6, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v7}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v7

    if-eq v7, v2, :cond_8

    iget-object v6, v6, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v6}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_9

    :cond_8
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    goto :goto_5

    :cond_9
    add-int/lit8 p5, p5, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    if-eqz v3, :cond_13

    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    iget-boolean p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-nez p1, :cond_b

    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {p1, p2, p3, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodInfo;->b(JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    goto/16 :goto_9

    :cond_b
    iget-boolean p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Z

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->f:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p4, p4, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, p4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    iget-wide p4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    add-long/2addr p4, p2

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v4, p1

    move v5, v0

    move v6, v1

    :goto_6
    if-ge v5, v4, :cond_f

    aget-object v7, p1, v5

    invoke-virtual {v7}, Landroidx/media3/exoplayer/RendererHolder;->f()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v7, v3}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-interface {v7, p4, p5}, Landroidx/media3/exoplayer/Renderer;->v(J)Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v1

    goto :goto_7

    :cond_d
    move v7, v0

    :goto_7
    and-int/2addr v6, v7

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    if-nez v6, :cond_10

    goto :goto_8

    :cond_10
    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide p4, p4, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    sget-object v4, Landroidx/media3/exoplayer/SeekParameters;->c:Landroidx/media3/exoplayer/SeekParameters;

    invoke-interface {p1, p4, p5, v4}, Landroidx/media3/exoplayer/source/MediaPeriod;->d(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p4

    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p1, p2, p3, v4}, Landroidx/media3/exoplayer/source/MediaPeriod;->d(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide v4

    cmp-long p1, p4, v4

    if-nez p1, :cond_11

    move v1, v0

    goto :goto_9

    :cond_11
    :goto_8
    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->e(J)J

    move-result-wide p2

    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n:J

    sub-long p4, p2, p4

    iget-boolean v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Z

    invoke-interface {p1, p4, p5, v3}, Landroidx/media3/exoplayer/source/MediaPeriod;->u(JZ)V

    :cond_12
    :goto_9
    invoke-virtual {p0, p2, p3, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X(JZ)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K()V

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->b()V

    invoke-virtual {p0, p2, p3, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X(JZ)V

    :goto_a
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Z)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {p0, v2}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    return-wide p2
.end method

.method public final f(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v0, 0xe

    invoke-interface {p0, v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "Ignoring messages sent after release."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/PlayerMessage;->a(Z)V

    return-void
.end method

.method public final f0(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g0(Landroidx/media3/exoplayer/PlayerMessage;)V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v0, 0x22

    invoke-interface {p0, v0}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    return-void
.end method

.method public final g0(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    iget-object v1, p1, Landroidx/media3/exoplayer/PlayerMessage;->g:Landroid/os/Looper;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:Landroid/os/Looper;

    if-ne v1, v2, :cond_2

    monitor-enter p1

    monitor-exit p1

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p1, Landroidx/media3/exoplayer/PlayerMessage;->a:Landroidx/media3/exoplayer/PlayerMessage$Target;

    iget v3, p1, Landroidx/media3/exoplayer/PlayerMessage;->e:I

    iget-object v4, p1, Landroidx/media3/exoplayer/PlayerMessage;->f:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/PlayerMessage;->a(Z)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 p1, 0x3

    const/4 v1, 0x2

    if-eq p0, p1, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/PlayerMessage;->a(Z)V

    throw p0

    :cond_2
    const/16 p0, 0xf

    invoke-interface {v0, p0, p1}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    return-void
.end method

.method public final h(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v0, 0x10

    invoke-interface {p0, v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    return-void
.end method

.method public final h0(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 3

    iget-object v0, p1, Landroidx/media3/exoplayer/PlayerMessage;->g:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Trying to send message on a dead thread."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/PlayerMessage;->a(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroidx/media3/common/util/Clock;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroidx/media3/common/util/Clock;->e(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/f;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->k(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 15

    move-object/from16 v0, p1

    const-string v11, "Playback error"

    const/4 v2, 0x2

    const/16 v3, 0x3e8

    const/4 v4, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_0
    iget v5, v0, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    return v12

    :pswitch_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/image/ImageMetadataListener;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k0(Landroidx/media3/exoplayer/image/ImageMetadataListener;)V

    goto/16 :goto_10

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_9

    :catch_5
    move-exception v0

    goto/16 :goto_c

    :catch_6
    move-exception v0

    goto/16 :goto_d

    :pswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ScrubbingModeParameters;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r0(Landroidx/media3/exoplayer/ScrubbingModeParameters;)V

    goto/16 :goto_10

    :pswitch_3
    iput-boolean v12, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    goto/16 :goto_10

    :pswitch_4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q0(Z)V

    goto/16 :goto_10

    :pswitch_5
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w0(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    goto/16 :goto_10

    :pswitch_6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z()V

    goto/16 :goto_10

    :pswitch_7
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y(I)V

    goto/16 :goto_10

    :pswitch_8
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y0(F)V

    goto/16 :goto_10

    :pswitch_9
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/common/AudioAttributes;

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v13

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    invoke-virtual {p0, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i0(Landroidx/media3/common/AudioAttributes;Z)V

    goto/16 :goto_10

    :pswitch_a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {p0, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x0(Ljava/lang/Object;Landroidx/media3/common/util/ConditionVariable;)V

    goto/16 :goto_10

    :pswitch_b
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R()V

    goto/16 :goto_10

    :pswitch_c
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o0(Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    goto/16 :goto_10

    :pswitch_d
    iget v5, v0, Landroid/os/Message;->arg1:I

    iget v6, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v5, v6, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G0(IILjava/util/List;)V

    goto/16 :goto_10

    :pswitch_e
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U()V

    invoke-virtual {p0, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0(Z)V

    goto/16 :goto_10

    :pswitch_f
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o()V

    goto/16 :goto_10

    :pswitch_10
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v0, v13

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m0(Z)V

    goto/16 :goto_10

    :pswitch_11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P()V

    goto/16 :goto_10

    :pswitch_12
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    goto/16 :goto_10

    :pswitch_13
    iget v5, v0, Landroid/os/Message;->arg1:I

    iget v6, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {p0, v5, v6, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T(IILandroidx/media3/exoplayer/source/ShuffleOrder;)V

    goto/16 :goto_10

    :pswitch_14
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;)V

    goto/16 :goto_10

    :pswitch_15
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V

    goto/16 :goto_10

    :pswitch_16
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V

    goto/16 :goto_10

    :pswitch_17
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    iget v5, v0, Landroidx/media3/common/PlaybackParameters;->a:F

    invoke-virtual {p0, v0, v5, v13, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F(Landroidx/media3/common/PlaybackParameters;FZZ)V

    goto/16 :goto_10

    :pswitch_18
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0(Landroidx/media3/exoplayer/PlayerMessage;)V

    goto/16 :goto_10

    :pswitch_19
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0(Landroidx/media3/exoplayer/PlayerMessage;)V

    goto/16 :goto_10

    :pswitch_1a
    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    move v5, v13

    goto :goto_2

    :cond_2
    move v5, v12

    :goto_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {p0, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j0(ZLandroidx/media3/common/util/ConditionVariable;)V

    goto/16 :goto_10

    :pswitch_1b
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v0, v13

    goto :goto_3

    :cond_3
    move v0, v12

    :goto_3
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t0(Z)V

    goto/16 :goto_10

    :pswitch_1c
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p0(I)V

    goto/16 :goto_10

    :pswitch_1d
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U()V

    goto/16 :goto_10

    :pswitch_1e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    goto/16 :goto_10

    :pswitch_1f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    goto/16 :goto_10

    :pswitch_20
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S(Landroidx/media3/common/util/ConditionVariable;)V

    return v13

    :pswitch_21
    invoke-virtual {p0, v12, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C0(ZZ)V

    goto/16 :goto_10

    :pswitch_22
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/SeekParameters;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s0(Landroidx/media3/exoplayer/SeekParameters;)V

    goto/16 :goto_10

    :pswitch_23
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n0(Landroidx/media3/common/PlaybackParameters;)V

    goto/16 :goto_10

    :pswitch_24
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V

    goto/16 :goto_10

    :pswitch_25
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r()V

    goto/16 :goto_10

    :pswitch_26
    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    move v5, v13

    goto :goto_4

    :cond_4
    move v5, v12

    :goto_4
    iget v0, v0, Landroid/os/Message;->arg2:I

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v7, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C:Landroidx/media3/common/audio/AudioFocusManager;

    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v8, v8, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    invoke-virtual {v7, v8, v5}, Landroidx/media3/common/audio/AudioFocusManager;->c(IZ)I

    move-result v7

    invoke-virtual {p0, v7, v6, v0, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I0(IIIZ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroidx/media3/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroidx/media3/exoplayer/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_10

    :goto_5
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    if-nez v4, :cond_5

    instance-of v4, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v4, :cond_6

    :cond_5
    const/16 v3, 0x3ec

    :cond_6
    new-instance v4, Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-direct {v4, v2, v0, v3}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    invoke-static {v11, v4}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v13, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C0(ZZ)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    goto/16 :goto_10

    :goto_6
    const/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Ljava/io/IOException;I)V

    goto/16 :goto_10

    :goto_7
    const/16 v2, 0x3ea

    invoke-virtual {p0, v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Ljava/io/IOException;I)V

    goto/16 :goto_10

    :goto_8
    iget v2, v0, Landroidx/media3/datasource/DataSourceException;->b:I

    invoke-virtual {p0, v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Ljava/io/IOException;I)V

    goto/16 :goto_10

    :goto_9
    iget-boolean v2, v0, Landroidx/media3/common/ParserException;->b:Z

    iget v5, v0, Landroidx/media3/common/ParserException;->c:I

    if-ne v5, v13, :cond_8

    if-eqz v2, :cond_7

    const/16 v2, 0xbb9

    :goto_a
    move v3, v2

    goto :goto_b

    :cond_7
    const/16 v2, 0xbbb

    goto :goto_a

    :cond_8
    if-ne v5, v4, :cond_a

    if-eqz v2, :cond_9

    const/16 v2, 0xbba

    goto :goto_a

    :cond_9
    const/16 v2, 0xbbc

    goto :goto_a

    :cond_a
    :goto_b
    invoke-virtual {p0, v0, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Ljava/io/IOException;I)V

    goto/16 :goto_10

    :goto_c
    iget v2, v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->b:I

    invoke-virtual {p0, v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Ljava/io/IOException;I)V

    goto/16 :goto_10

    :goto_d
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->k:I

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    if-ne v3, v13, :cond_b

    iget-object v3, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v3, :cond_b

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->p:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez v6, :cond_b

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/ExoPlaybackException;->b(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    :cond_b
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->k:I

    iget-object v14, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    if-ne v3, v13, :cond_d

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->p:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v3, :cond_d

    iget v6, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->m:I

    invoke-virtual {p0, v6, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v3

    if-eqz v3, :cond_d

    iput-boolean v13, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i1:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p()V

    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->h()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iget-object v3, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v3, v0, :cond_c

    :goto_e
    if-eqz v3, :cond_c

    iget-object v6, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v6, v0, :cond_c

    move-object v3, v6

    goto :goto_e

    :cond_c
    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-eq v0, v4, :cond_14

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K()V

    invoke-interface {v14, v2}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    goto/16 :goto_10

    :cond_d
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_e
    iget v2, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->k:I

    if-ne v2, v13, :cond_10

    iget-object v2, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v3, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v2, v3, :cond_10

    :goto_f
    iget-object v2, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v3, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v2, v3, :cond_f

    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->a()Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_f

    :cond_f
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->l(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M()V

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v5, v3

    iget-wide v3, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iget-wide v6, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v5

    move-wide v5, v6

    move-wide v7, v3

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_10
    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->q:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v2, :cond_11

    iget v2, v0, Landroidx/media3/common/PlaybackException;->b:I

    const/16 v3, 0x138c

    if-eq v2, v3, :cond_11

    const/16 v3, 0x138b

    if-ne v2, v3, :cond_13

    :cond_11
    const-string v2, "Recoverable renderer error"

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v2, :cond_12

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_12
    const/16 v2, 0x19

    invoke-interface {v14, v2, v0}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v14, v0}, Landroidx/media3/common/util/HandlerWrapper;->j(Landroidx/media3/common/util/HandlerWrapper$Message;)Z

    goto :goto_10

    :cond_13
    invoke-static {v11, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v13, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C0(ZZ)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_14
    :goto_10
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M()V

    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final i(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    const/4 v0, -0x1

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    if-ne p2, v0, :cond_0

    iget-object p2, v1, Landroidx/media3/exoplayer/MediaSourceList;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->a:Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->b:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {v1, p2, v0, p1}, Landroidx/media3/exoplayer/MediaSourceList;->a(ILjava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final i0(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->g(Landroidx/media3/common/AudioAttributes;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C:Landroidx/media3/common/audio/AudioFocusManager;

    iget-object v0, p2, Landroidx/media3/common/audio/AudioFocusManager;->d:Landroidx/media3/common/AudioAttributes;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object p1, p2, Landroidx/media3/common/audio/AudioFocusManager;->d:Landroidx/media3/common/AudioAttributes;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :goto_1
    :pswitch_0
    move v3, v0

    goto :goto_3

    :cond_1
    iget v2, p1, Landroidx/media3/common/AudioAttributes;->c:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    const-string p1, "Unidentified audio usage: "

    invoke-static {v2, p1}, La;->u(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x4

    goto :goto_3

    :pswitch_3
    iget p1, p1, Landroidx/media3/common/AudioAttributes;->a:I

    if-ne p1, v1, :cond_2

    :pswitch_4
    move v3, v4

    goto :goto_3

    :goto_2
    :pswitch_5
    move v3, v1

    goto :goto_3

    :pswitch_6
    const-string p1, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    invoke-static {p1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_3
    :pswitch_7
    iput v3, p2, Landroidx/media3/common/audio/AudioFocusManager;->f:I

    if-eq v3, v1, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {v0, p1}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    iget v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    invoke-virtual {p2, p1, v0}, Landroidx/media3/common/audio/AudioFocusManager;->c(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I0(IIIZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final j(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v0, 0x8

    invoke-interface {p0, v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    return-void
.end method

.method public final j0(ZLandroidx/media3/common/util/ConditionVariable;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/RendererHolder;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/media3/common/util/ConditionVariable;->d()Z

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-boolean v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    const/16 v6, 0x12

    invoke-interface {v5, v6, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    iget-object v3, v3, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v3, :cond_1

    invoke-interface {v3, v6, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final k0(Landroidx/media3/exoplayer/image/ImageMetadataListener;)V
    .locals 6

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x17

    invoke-interface {v3, v4, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v2, :cond_1

    invoke-interface {v2, v4, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v0, 0x9

    invoke-interface {p0, v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->g(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p0

    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    return-void
.end method

.method public final l0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    iget v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->c:I

    iget-object v1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->b:Landroidx/media3/exoplayer/source/ShuffleOrder;

    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->a:Ljava/util/ArrayList;

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    new-instance v3, Landroidx/media3/exoplayer/PlaylistTimeline;

    invoke-direct {v3, v2, v1}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    iget v4, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->c:I

    iget-wide v5, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->d:J

    invoke-direct {v0, v3, v4, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaSourceList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroidx/media3/exoplayer/MediaSourceList;->g(II)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0, v2, v1}, Landroidx/media3/exoplayer/MediaSourceList;->a(ILjava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final m()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final m0(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W()V

    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Z)V

    :cond_0
    return-void
.end method

.method public final n0(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->d(Landroidx/media3/common/PlaybackParameters;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    const/4 v0, 0x1

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    invoke-virtual {p0, p1, v1, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F(Landroidx/media3/common/PlaybackParameters;FZZ)V

    return-void
.end method

.method public final o()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0(Z)V

    return-void
.end method

.method public final o0(Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .locals 1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f1:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->j(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public final p()V
    .locals 11

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_9

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->b()I

    move-result v5

    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->e()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_8

    :cond_1
    iget v7, v4, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v8, 0x1

    const/4 v9, 0x4

    if-eq v7, v9, :cond_3

    const/4 v10, 0x2

    if-ne v7, v10, :cond_2

    goto :goto_1

    :cond_2
    move v10, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v10, v8

    :goto_2
    if-ne v7, v9, :cond_4

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    if-eqz v10, :cond_5

    :try_start_0
    iget-object v7, v4, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    goto :goto_4

    :catch_0
    move-exception v6

    goto :goto_5

    :cond_5
    iget-object v7, v4, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4
    invoke-virtual {v4, v7, v6}, Landroidx/media3/exoplayer/RendererHolder;->a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    const-string v7, "Disable prewarming failed."

    invoke-static {v7, v6}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    :try_start_1
    invoke-virtual {v4, v10}, Landroidx/media3/exoplayer/RendererHolder;->h(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v6

    const-string v7, "Reset prewarming failed."

    invoke-static {v7, v6}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    iput v8, v4, Landroidx/media3/exoplayer/RendererHolder;->d:I

    :goto_8
    iget v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->b()I

    move-result v4

    sub-int/2addr v5, v4

    sub-int/2addr v6, v5

    iput v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h1:J

    :cond_7
    :goto_9
    return-void
.end method

.method public final p0(I)V
    .locals 2

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iput p1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->g:I

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->v(Landroidx/media3/common/Timeline;)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0(Z)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Z)V

    return-void
.end method

.method public final q(I)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v1, v0, p1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/RendererHolder;->b()I

    move-result v1

    aget-object v0, v0, p1

    iget-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/RendererHolder;->a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    iget-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/RendererHolder;->a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/RendererHolder;->h(Z)V

    if-eqz v5, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x11

    invoke-interface {v2, v5, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    :cond_1
    iput v4, v0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    invoke-virtual {p0, p1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O(IZ)V

    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    return-void
.end method

.method public final q0(Z)V
    .locals 4

    if-nez p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    const/16 v1, 0x25

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    if-eqz v0, :cond_0

    invoke-interface {v2, v1}, Landroidx/media3/common/util/HandlerWrapper;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J:I

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J:I

    if-lez v0, :cond_1

    new-instance v3, Landroidx/media3/exoplayer/n;

    invoke-direct {v3, p0, v0}, Landroidx/media3/exoplayer/n;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v3}, Landroidx/media3/common/util/HandlerWrapper;->k(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J:I

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    invoke-interface {v2, v1}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    :cond_2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k()V

    return-void
.end method

.method public final r()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->d()J

    move-result-wide v1

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroidx/media3/common/util/HandlerWrapper;->n(I)V

    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D:Z

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H0()V

    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_32

    const/4 v6, 0x4

    if-ne v3, v6, :cond_1

    goto/16 :goto_18

    :cond_1
    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H0()V

    :cond_2
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v3, :cond_3

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b0(J)V

    return-void

    :cond_3
    const-string v7, "doSomeWork"

    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J0()V

    iget-boolean v7, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_e

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroidx/media3/common/util/Clock;

    invoke-interface {v7}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t0:J

    iget-object v7, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v9, v9, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    iget-wide v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n:J

    sub-long/2addr v9, v11

    iget-boolean v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Z

    invoke-interface {v7, v9, v10, v11}, Landroidx/media3/exoplayer/source/MediaPeriod;->u(JZ)V

    move v9, v5

    move v10, v9

    move v7, v8

    :goto_0
    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v12, v11

    if-ge v7, v12, :cond_f

    aget-object v11, v11, v7

    invoke-virtual {v11}, Landroidx/media3/exoplayer/RendererHolder;->b()I

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v0, v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O(IZ)V

    goto/16 :goto_6

    :cond_4
    iget-wide v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    iget-wide v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t0:J

    iget-object v5, v11, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    iget-object v4, v11, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v4}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v4, v12, v13, v14, v15}, Landroidx/media3/exoplayer/Renderer;->g(JJ)V

    :cond_5
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v5, v12, v13, v14, v15}, Landroidx/media3/exoplayer/Renderer;->g(JJ)V

    :cond_6
    if-eqz v9, :cond_9

    iget-object v4, v11, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    iget-object v5, v11, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v5}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->e()Z

    move-result v5

    goto :goto_1

    :cond_7
    const/4 v5, 0x1

    :goto_1
    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->e()Z

    move-result v4

    and-int/2addr v5, v4

    :cond_8
    if-eqz v5, :cond_9

    const/4 v9, 0x1

    goto :goto_2

    :cond_9
    move v9, v8

    :goto_2
    invoke-virtual {v11, v3}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->j()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->e()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    move v4, v8

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v0, v7, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O(IZ)V

    if-eqz v10, :cond_c

    if-eqz v4, :cond_c

    const/4 v10, 0x1

    goto :goto_5

    :cond_c
    move v10, v8

    :goto_5
    if-nez v4, :cond_d

    invoke-virtual {v0, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N(I)V

    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_e
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v4}, Landroidx/media3/exoplayer/source/MediaPeriod;->k()V

    const/4 v9, 0x1

    const/4 v10, 0x1

    :cond_f
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v9, :cond_11

    iget-boolean v7, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v7, :cond_11

    cmp-long v7, v4, v11

    if-eqz v7, :cond_10

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v13, v7, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    cmp-long v4, v4, v13

    if-gtz v4, :cond_11

    :cond_10
    const/4 v4, 0x1

    goto :goto_7

    :cond_11
    move v4, v8

    :goto_7
    if-eqz v4, :cond_12

    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Z

    if-eqz v5, :cond_12

    iput-boolean v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Z

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C:Landroidx/media3/common/audio/AudioFocusManager;

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v9, v9, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    invoke-virtual {v7, v9, v8}, Landroidx/media3/common/audio/AudioFocusManager;->c(IZ)I

    move-result v7

    const/4 v9, 0x5

    invoke-virtual {v0, v7, v5, v9, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I0(IIIZ)V

    :cond_12
    const/4 v5, 0x3

    if-eqz v4, :cond_14

    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->k:Z

    if-eqz v4, :cond_14

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v0(I)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D0()V

    move-wide/from16 v31, v11

    :cond_13
    const/4 v6, 0x1

    goto/16 :goto_12

    :cond_14
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v7, v4, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1f

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    if-nez v9, :cond_15

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J()Z

    move-result v4

    :goto_8
    move-wide/from16 v31, v11

    goto/16 :goto_d

    :cond_15
    if-nez v10, :cond_16

    move v4, v8

    goto :goto_8

    :cond_16
    iget-boolean v9, v4, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    if-nez v9, :cond_18

    :cond_17
    :goto_9
    move-wide/from16 v31, v11

    const/4 v4, 0x1

    goto/16 :goto_d

    :cond_18
    iget-object v9, v7, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v13, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v13, v13, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v4}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->c()J

    move-result-wide v13

    move-wide/from16 v27, v13

    goto :goto_a

    :cond_19
    move-wide/from16 v27, v11

    :goto_a
    iget-object v4, v7, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->g()Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v7, v7, Landroidx/media3/exoplayer/MediaPeriodInfo;->k:Z

    if-eqz v7, :cond_1a

    const/4 v7, 0x1

    goto :goto_b

    :cond_1a
    move v7, v8

    :goto_b
    iget-object v13, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v13, v13, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v13}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result v13

    if-eqz v13, :cond_1b

    iget-boolean v13, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-nez v13, :cond_1b

    const/4 v13, 0x1

    goto :goto_c

    :cond_1b
    move v13, v8

    :goto_c
    if-nez v7, :cond_17

    if-eqz v13, :cond_1c

    goto :goto_9

    :cond_1c
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->d()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(J)J

    move-result-wide v22

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g:Landroidx/media3/exoplayer/LoadControl;

    new-instance v16, Landroidx/media3/exoplayer/LoadControl$Parameters;

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v13, v13, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v14, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v14, v14, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v17, v7

    iget-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    move-wide/from16 v31, v11

    iget-wide v11, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    sub-long v20, v6, v11

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/DefaultMediaClock;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/PlaybackParameters;->a:F

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P:Z

    iget-wide v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:J

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v9

    move-wide/from16 v29, v11

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    invoke-direct/range {v16 .. v30}, Landroidx/media3/exoplayer/LoadControl$Parameters;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJJ)V

    move-object/from16 v6, v16

    invoke-interface {v4, v6}, Landroidx/media3/exoplayer/LoadControl;->a(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v4

    :goto_d
    if-eqz v4, :cond_1e

    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v0(I)V

    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v0, v8, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L0(ZZ)V

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    const/4 v6, 0x1

    iput-boolean v6, v4, Landroidx/media3/exoplayer/DefaultMediaClock;->g:Z

    iget-object v4, v4, Landroidx/media3/exoplayer/DefaultMediaClock;->b:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-boolean v7, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    if-nez v7, :cond_1d

    iget-object v7, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->b:Landroidx/media3/common/util/Clock;

    invoke-interface {v7}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v9

    iput-wide v9, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->e:J

    iput-boolean v6, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->c:Z

    :cond_1d
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B0()V

    goto :goto_12

    :cond_1e
    :goto_e
    const/4 v6, 0x1

    goto :goto_f

    :cond_1f
    move-wide/from16 v31, v11

    goto :goto_e

    :goto_f
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-ne v4, v5, :cond_26

    iget v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    if-nez v4, :cond_20

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J()Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_12

    :cond_20
    if-nez v10, :cond_26

    :cond_21
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0()Z

    move-result v4

    invoke-virtual {v0, v4, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L0(ZZ)V

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v0(I)V

    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P:Z

    if-eqz v4, :cond_25

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_10
    if-eqz v4, :cond_24

    iget-object v7, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v7, v7, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v9, v7

    move v10, v8

    :goto_11
    if-ge v10, v9, :cond_23

    aget-object v11, v7, v10

    if-eqz v11, :cond_22

    invoke-interface {v11}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->u()V

    :cond_22
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_23
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_10

    :cond_24
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v4}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->d()V

    :cond_25
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D0()V

    :cond_26
    :goto_12
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_2b

    move v4, v8

    :goto_13
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v9, v7

    if-ge v4, v9, :cond_28

    aget-object v7, v7, v4

    invoke-virtual {v7, v3}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v7

    if-eqz v7, :cond_27

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N(I)V

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_28
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    if-nez v4, :cond_2b

    iget-wide v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    const-wide/32 v9, 0x7a120

    cmp-long v3, v3, v9

    if-gez v3, :cond_2b

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e1:J

    cmp-long v3, v3, v31

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroidx/media3/common/util/Clock;

    if-nez v3, :cond_29

    invoke-interface {v4}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e1:J

    goto :goto_14

    :cond_29
    invoke-interface {v4}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v3

    iget-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e1:J

    sub-long/2addr v3, v9

    const-wide/16 v9, 0xfa0

    cmp-long v3, v3, v9

    if-gez v3, :cond_2a

    goto :goto_14

    :cond_2a
    new-instance v0, Landroidx/media3/common/util/StuckPlayerException;

    const/16 v1, 0xfa0

    invoke-direct {v0, v8, v1}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    throw v0

    :cond_2b
    move-wide/from16 v3, v31

    iput-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e1:J

    :goto_14
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-ne v3, v5, :cond_2c

    move v3, v6

    goto :goto_15

    :cond_2c
    move v3, v8

    :goto_15
    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X:Z

    if-eqz v4, :cond_2d

    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W:Z

    if-eqz v4, :cond_2d

    if-eqz v3, :cond_2d

    goto :goto_16

    :cond_2d
    move v6, v8

    :goto_16
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v7, v4, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    if-eq v7, v6, :cond_2e

    invoke-virtual {v4, v6}, Landroidx/media3/exoplayer/PlaybackInfo;->i(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_2e
    iput-boolean v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W:Z

    if-nez v6, :cond_31

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v15, 0x4

    if-ne v4, v15, :cond_2f

    goto :goto_17

    :cond_2f
    if-nez v3, :cond_30

    const/4 v9, 0x2

    if-eq v4, v9, :cond_30

    if-ne v4, v5, :cond_31

    iget v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    if-eqz v3, :cond_31

    :cond_30
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b0(J)V

    :cond_31
    :goto_17
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_32
    :goto_18
    return-void
.end method

.method public final r0(Landroidx/media3/exoplayer/ScrubbingModeParameters;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k()V

    return-void
.end method

.method public final s(Landroidx/media3/exoplayer/MediaPeriodHolder;IZJ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_1

    move v11, v5

    goto :goto_0

    :cond_1
    move v11, v4

    :goto_0
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v6, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v7, v6, p2

    iget-object v3, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v3, v3, p2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    move/from16 v17, v5

    goto :goto_1

    :cond_2
    move/from16 v17, v4

    :goto_1
    if-nez p3, :cond_3

    if-eqz v17, :cond_3

    move v10, v5

    goto :goto_2

    :cond_3
    move v10, v4

    :goto_2
    iget v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    add-int/2addr v6, v5

    iput v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    iget-object v6, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v9, v6, p2

    iget-wide v14, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    iget-object v6, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v16, v6

    iget-object v6, v2, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v8

    goto :goto_3

    :cond_4
    move v8, v4

    :goto_3
    new-array v12, v8, [Landroidx/media3/common/Format;

    :goto_4
    if-ge v4, v8, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->e(I)Landroidx/media3/common/Format;

    move-result-object v13

    aput-object v13, v12, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget v3, v2, Landroidx/media3/exoplayer/RendererHolder;->d:I

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/exoplayer/DefaultMediaClock;

    if-eqz v3, :cond_6

    const/4 v8, 0x2

    if-eq v3, v8, :cond_6

    const/4 v8, 0x4

    if-ne v3, v8, :cond_7

    :cond_6
    move-object v8, v12

    goto :goto_5

    :cond_7
    iput-boolean v5, v2, Landroidx/media3/exoplayer/RendererHolder;->f:Z

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v12

    move-wide/from16 v12, p4

    invoke-interface/range {v6 .. v16}, Landroidx/media3/exoplayer/Renderer;->A(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;ZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    invoke-virtual {v4, v6}, Landroidx/media3/exoplayer/DefaultMediaClock;->b(Landroidx/media3/exoplayer/Renderer;)V

    goto :goto_6

    :goto_5
    iput-boolean v5, v2, Landroidx/media3/exoplayer/RendererHolder;->e:Z

    iget-object v6, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    move-wide/from16 v12, p4

    invoke-interface/range {v6 .. v16}, Landroidx/media3/exoplayer/Renderer;->A(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;ZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/DefaultMediaClock;->b(Landroidx/media3/exoplayer/Renderer;)V

    :goto_6
    new-instance v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;

    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xb

    invoke-interface {v0, v1, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    if-eqz v17, :cond_8

    if-eqz v11, :cond_8

    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->l()V

    :cond_8
    :goto_7
    return-void
.end method

.method public final s0(Landroidx/media3/exoplayer/SeekParameters;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E:Landroidx/media3/exoplayer/SeekParameters;

    return-void
.end method

.method public final t([ZJ)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v4, v7

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v7, v3

    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->j()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    array-length v1, v7

    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, v7, v3

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v1, p0

    move-wide v5, p2

    goto :goto_2

    :cond_3
    aget-boolean v4, p1, v3

    move-object v1, p0

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s(Landroidx/media3/exoplayer/MediaPeriodHolder;IZJ)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object p0, v1

    move-wide p2, v5

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final t0(Z)V
    .locals 2

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iput-boolean p1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->h:Z

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->v(Landroidx/media3/common/Timeline;)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0(Z)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Z)V

    return-void
.end method

.method public final u(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, p0}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    iget-wide p1, p0, Landroidx/media3/common/Timeline$Window;->f:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/common/Timeline$Window;->i:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Landroidx/media3/common/Timeline$Window;->g:J

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->B(J)J

    move-result-wide p1

    iget-wide v1, p0, Landroidx/media3/common/Timeline$Window;->f:J

    sub-long/2addr p1, v1

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide p0

    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->e:J

    add-long/2addr p3, v0

    sub-long/2addr p0, p3

    return-wide p0

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public final u0(Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaSourceList;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->f()Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->i(II)Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    move-result-object p1

    :cond_0
    iput-object p1, v0, Landroidx/media3/exoplayer/MediaSourceList;->j:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->b()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final v(Landroidx/media3/exoplayer/MediaPeriodHolder;)J
    .locals 8

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    iget-boolean v2, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    aget-object v4, v3, v2

    invoke-virtual {v4, p1}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v4

    if-eqz v4, :cond_3

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/RendererHolder;->c(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->H()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    return-wide v5

    :cond_2
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-wide v0
.end method

.method public final v0(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-eq v1, p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e1:J

    :cond_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->i(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_2
    return-void
.end method

.method public final w(Landroidx/media3/common/Timeline;)Landroid/util/Pair;
    .locals 9

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/media3/exoplayer/PlaybackInfo;->u:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T:Z

    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->a(Z)I

    move-result v6

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l:Landroidx/media3/common/Timeline$Window;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3, p1, p0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget p1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    iget v3, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    invoke-virtual {p0, v3}, Landroidx/media3/common/Timeline$Period;->f(I)I

    move-result v3

    if-ne p1, v3, :cond_1

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState;->c:J

    :cond_1
    move-wide v4, v1

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final w0(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 6

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x7

    invoke-interface {v3, v4, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v2, :cond_1

    invoke-interface {v2, v4, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final x(J)J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:J

    iget-wide v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final x0(Ljava/lang/Object;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    iget-object v5, v4, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v6

    if-eq v6, v3, :cond_0

    goto :goto_2

    :cond_0
    iget v3, v4, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eq v3, v6, :cond_2

    if-ne v3, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v5, v7, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, v4, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v7, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    if-ne p1, v3, :cond_5

    :cond_4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {p0, v3}, Landroidx/media3/common/util/HandlerWrapper;->m(I)Z

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroidx/media3/common/util/ConditionVariable;->d()Z

    :cond_6
    return-void
.end method

.method public final y(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    invoke-virtual {p0, p1, v2, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I0(IIIZ)V

    return-void
.end method

.method public final y0(F)V
    .locals 6

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j1:F

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C:Landroidx/media3/common/audio/AudioFocusManager;

    iget v0, v0, Landroidx/media3/common/audio/AudioFocusManager;->g:F

    mul-float/2addr p1, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->f()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v3, v5, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->q(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final z()V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j1:F

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y0(F)V

    return-void
.end method

.method public final z0()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
