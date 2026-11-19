.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Listener;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final h:Landroidx/media3/datasource/DataSource$Factory;

.field public final i:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

.field public final j:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public final k:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final l:I

.field public final m:Landroidx/media3/common/Format;

.field public n:Z

.field public o:J

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Landroidx/media3/datasource/TransferListener;

.field public t:Landroidx/media3/common/MediaItem;


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;ILandroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->t:Landroidx/media3/common/MediaItem;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->h:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->i:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->j:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->k:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput p6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->l:I

    iput-object p7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->m:Landroidx/media3/common/Format;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->n:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->o:J

    return-void
.end method


# virtual methods
.method public final c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 18

    move-object/from16 v8, p0

    iget-object v0, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->h:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->a()Landroidx/media3/datasource/DataSource;

    move-result-object v2

    iget-object v0, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->s:Landroidx/media3/datasource/TransferListener;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Landroidx/media3/datasource/DataSource;->c(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    invoke-virtual {v8}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->d()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    move-object v3, v1

    iget-object v1, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    iget-object v4, v8, Landroidx/media3/exoplayer/source/BaseMediaSource;->g:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->i:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    invoke-interface {v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;->a()Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    move-result-object v4

    new-instance v5, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v6, v8, Landroidx/media3/exoplayer/source/BaseMediaSource;->d:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v6, v6, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-direct {v5, v6, v7, v9}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->r(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v7

    iget-object v10, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->f:Ljava/lang/String;

    iget-wide v11, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->i:J

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v15

    const/16 v17, 0x0

    move-object v0, v3

    move-object v3, v4

    iget-object v4, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->j:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iget-object v6, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->k:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v11, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->l:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->m:Landroidx/media3/common/Format;

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v17}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;-><init>(Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;Landroidx/media3/exoplayer/upstream/Allocator;Ljava/lang/String;IZILandroidx/media3/common/Format;JLandroidx/media3/exoplayer/util/ReleasableExecutor;)V

    return-object v0
.end method

.method public final declared-synchronized d()Landroidx/media3/common/MediaItem;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->t:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 6

    check-cast p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-boolean p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/SampleQueue;->j()V

    iget-object v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v4, :cond_0

    iget-object v5, v3, Landroidx/media3/exoplayer/source/SampleQueue;->e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/drm/DrmSession;->f(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iput-object v0, v3, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object v0, v3, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->p:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/upstream/Loader;->d(Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    iget-object p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->V:Z

    return-void
.end method

.method public final i(JLandroidx/media3/extractor/SeekMap;Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->r:Z

    if-eqz v0, :cond_0

    invoke-interface {p3}, Landroidx/media3/extractor/SeekMap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Landroidx/media3/extractor/SeekMap;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->r:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->o:J

    :cond_1
    invoke-interface {p3}, Landroidx/media3/extractor/SeekMap;->e()Z

    move-result p3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->n:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->o:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->p:Z

    if-ne v0, p3, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->q:Z

    if-ne v0, p4, :cond_2

    :goto_0
    return-void

    :cond_2
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->o:J

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->p:Z

    iput-boolean p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->q:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->n:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->x()V

    return-void
.end method

.method public final declared-synchronized k(Landroidx/media3/common/MediaItem;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->t:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public final q(Landroidx/media3/common/MediaItem;)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->d()Landroidx/media3/common/MediaItem;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->i:J

    iget-wide v2, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->f:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->f:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->s:Landroidx/media3/datasource/TransferListener;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->g:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->j:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1, p1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->a(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->f()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->x()V

    return-void
.end method

.method public final w()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->j:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->release()V

    return-void
.end method

.method public final x()V
    .locals 8

    new-instance v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->o:J

    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->p:Z

    iget-boolean v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->q:Z

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->d()Landroidx/media3/common/MediaItem;

    move-result-object v7

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->n:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->v(Landroidx/media3/common/Timeline;)V

    return-void
.end method
