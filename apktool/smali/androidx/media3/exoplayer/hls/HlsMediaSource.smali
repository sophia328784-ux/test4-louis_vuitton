.class public final Landroidx/media3/exoplayer/hls/HlsMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;,
        Landroidx/media3/exoplayer/hls/HlsMediaSource$MetadataType;
    }
.end annotation


# instance fields
.field public final h:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

.field public final i:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

.field public final j:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field public final k:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

.field public final l:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public final m:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final n:Z

.field public final o:I

.field public final p:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

.field public final q:J

.field public r:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field public s:Landroidx/media3/datasource/TransferListener;

.field public t:Landroidx/media3/common/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer.hls"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;JZI)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->t:Landroidx/media3/common/MediaItem;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->r:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->i:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->h:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    iput-object p4, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->j:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    iput-object p5, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->k:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iput-object p6, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->l:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p7, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->m:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object p8, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iput-wide p9, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->q:J

    iput-boolean p11, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->n:Z

    iput p12, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->o:I

    return-void
.end method

.method public static x(JLjava/util/List;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    iget-wide v3, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->f:J

    cmp-long v5, v3, p0

    if-gtz v5, :cond_0

    iget-boolean v5, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->m:Z

    if-eqz v5, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    cmp-long v2, v3, p0

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->r(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v9

    new-instance v7, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/BaseMediaSource;->d:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-direct {v7, v1, v2, v3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    new-instance v1, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/datasource/TransferListener;

    iget-object v15, v0, Landroidx/media3/exoplayer/source/BaseMediaSource;->g:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-object v2, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->h:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    move-object v3, v2

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    move-object v5, v3

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->i:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    move-object v6, v5

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->k:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    move-object v8, v6

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->l:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-object v10, v8

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->m:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->j:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    iget-boolean v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->n:Z

    iget v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->o:I

    const/4 v14, 0x0

    move-object v0, v10

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v18}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;-><init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;ZIZLandroidx/media3/exoplayer/analytics/PlayerId;JLcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public final declared-synchronized d()Landroidx/media3/common/MediaItem;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->t:Landroidx/media3/common/MediaItem;
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
    .locals 11

    check-cast p1, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;

    iget-object p0, p1, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->c:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->j(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    iget-object p0, p1, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    iget-boolean v5, v4, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroidx/media3/exoplayer/source/SampleQueue;->j()V

    iget-object v9, v8, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v9, :cond_0

    iget-object v10, v8, Landroidx/media3/exoplayer/source/SampleQueue;->e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v9, v10}, Landroidx/media3/exoplayer/drm/DrmSession;->f(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iput-object v3, v8, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object v3, v8, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    iget-object v6, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->r()I

    move-result v6

    iget-object v7, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v8, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e:[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    aget-object v6, v8, v6

    invoke-virtual {v6}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->c()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v7, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->c(Landroid/net/Uri;)V

    iput-object v3, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource;->p:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    iget-object v5, v4, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->k:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v5, v4}, Landroidx/media3/exoplayer/upstream/Loader;->d(Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    iget-object v5, v4, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->s:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v4, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->I:Z

    iget-object v3, v4, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-object v3, p1, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    return-void
.end method

.method public final declared-synchronized k(Landroidx/media3/common/MediaItem;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->t:Landroidx/media3/common/MediaItem;
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
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->k:Landroidx/media3/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/upstream/Loader;->c(I)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->o:Landroidx/media3/common/ParserException;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->t:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->d(Landroid/net/Uri;)V

    :cond_1
    return-void

    :cond_2
    throw v0
.end method

.method public final q(Landroidx/media3/common/MediaItem;)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->d()Landroidx/media3/common/MediaItem;

    move-result-object p0

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    iget-object v3, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->e:Ljava/util/List;

    iget-object v3, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->c:Landroidx/media3/common/MediaItem$DrmConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->c:Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {p0, p1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u(Landroidx/media3/datasource/TransferListener;)V
    .locals 6

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/datasource/TransferListener;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->g:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->l:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1, p1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->a(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->f()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->r(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->d()Landroidx/media3/common/MediaItem;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v3, v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->i:Lcom/google/common/base/Supplier;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->r(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->l:Landroid/os/Handler;

    iput-object v0, v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p0, v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->m:Landroidx/media3/exoplayer/hls/HlsMediaSource;

    new-instance p0, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {p0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    iput-object v1, p0, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->i:I

    invoke-virtual {p0}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object p0

    iget-object v0, v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->h:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;

    const-string v4, "h"

    invoke-direct {v1, v0, v4}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;-><init>(Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Ljava/lang/String;)V

    const-string v0, "m"

    iput-object v0, v1, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->j:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->a()Landroidx/media3/exoplayer/upstream/CmcdData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/CmcdData;->a(Landroidx/media3/datasource/DataSpec;)Landroidx/media3/datasource/DataSpec;

    move-result-object p0

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    iget-object v1, v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->b:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    invoke-interface {v1}, Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;->a()Landroidx/media3/datasource/DataSource;

    move-result-object v1

    iget-object v4, v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->c:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    invoke-interface {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;->a()Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v0, v1, p0, v5, v4}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    iget-object p0, v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->k:Landroidx/media3/exoplayer/upstream/Loader;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    if-eqz v3, :cond_2

    new-instance p0, Landroidx/media3/exoplayer/upstream/Loader;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/util/ReleasableExecutor;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/ReleasableExecutor;)V

    goto :goto_1

    :cond_2
    new-instance p0, Landroidx/media3/exoplayer/upstream/Loader;

    const-string p1, "DefaultHlsPlaylistTracker:MultivariantPlaylist"

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object p0, v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->k:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object p1, v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->d:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v1, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->c:I

    invoke-interface {p1, v1}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->b(I)I

    move-result p1

    invoke-virtual {p0, v0, v2, p1}, Landroidx/media3/exoplayer/upstream/Loader;->e(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)V

    return-void
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->v()V

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->l:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->release()V

    return-void
.end method

.method public final y(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->p:Z

    iget-boolean v3, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->g:Z

    iget-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    iget-wide v5, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->u:J

    iget-wide v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->e:J

    iget v9, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->d:I

    iget-wide v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->h:J

    if-eqz v2, :cond_0

    invoke-static {v10, v11}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v14

    move-wide/from16 v19, v14

    goto :goto_0

    :cond_0
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    const/4 v2, 0x1

    const/4 v14, 0x2

    if-eq v9, v14, :cond_2

    if-ne v9, v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_2
    :goto_1
    move-wide/from16 v17, v19

    :goto_2
    new-instance v34, Landroidx/media3/exoplayer/hls/HlsManifest;

    iget-object v15, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v12, v15, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->n:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v34 .. v34}, Ljava/lang/Object;-><init>()V

    iget-boolean v12, v15, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->v:Z

    const-wide/16 v23, 0x0

    if-eqz v12, :cond_12

    iget-object v12, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->v:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v14, v15, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->w:J

    sub-long v27, v10, v14

    iget-boolean v14, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    if-eqz v14, :cond_3

    add-long v15, v27, v5

    goto :goto_3

    :cond_3
    move-wide/from16 v15, v21

    :goto_3
    iget-boolean v13, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->p:Z

    if-eqz v13, :cond_4

    move v13, v3

    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->q:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->B(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v2

    add-long/2addr v10, v5

    sub-long/2addr v2, v10

    move-wide/from16 v37, v2

    goto :goto_4

    :cond_4
    move v13, v3

    move-wide/from16 v37, v23

    :goto_4
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->r:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->a:J

    cmp-long v10, v2, v21

    if-eqz v10, :cond_5

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v2

    :goto_5
    move-wide/from16 v35, v2

    goto :goto_7

    :cond_5
    cmp-long v2, v7, v21

    if-eqz v2, :cond_6

    sub-long v2, v5, v7

    goto :goto_6

    :cond_6
    iget-wide v2, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->d:J

    cmp-long v10, v2, v21

    if-eqz v10, :cond_7

    iget-wide v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->n:J

    cmp-long v10, v10, v21

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    iget-wide v2, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->c:J

    cmp-long v10, v2, v21

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    const-wide/16 v2, 0x3

    iget-wide v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->m:J

    mul-long/2addr v2, v10

    :goto_6
    add-long v2, v2, v37

    goto :goto_5

    :goto_7
    add-long v39, v5, v37

    invoke-static/range {v35 .. v40}, Landroidx/media3/common/util/Util;->k(JJJ)J

    move-result-wide v2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->d()Landroidx/media3/common/MediaItem;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget v6, v5, Landroidx/media3/common/MediaItem$LiveConfiguration;->d:F

    const v10, -0x800001

    cmpl-float v6, v6, v10

    const/4 v11, 0x0

    if-nez v6, :cond_9

    iget v5, v5, Landroidx/media3/common/MediaItem$LiveConfiguration;->e:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_9

    iget-wide v5, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->c:J

    cmp-long v5, v5, v21

    if-nez v5, :cond_9

    iget-wide v5, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->d:J

    cmp-long v5, v5, v21

    if-nez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_8

    :cond_9
    move v5, v11

    :goto_8
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->r:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v6}, Landroidx/media3/common/MediaItem$LiveConfiguration;->a()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v6

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v2

    iput-wide v2, v6, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->a:J

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v5, :cond_a

    move v3, v2

    goto :goto_9

    :cond_a
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->r:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget v3, v3, Landroidx/media3/common/MediaItem$LiveConfiguration;->d:F

    :goto_9
    iput v3, v6, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->d:F

    if-eqz v5, :cond_b

    goto :goto_a

    :cond_b
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->r:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->e:F

    :goto_a
    iput v2, v6, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->e:F

    invoke-virtual {v6}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->a()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->r:Landroidx/media3/common/MediaItem$LiveConfiguration;

    cmp-long v3, v7, v21

    if-eqz v3, :cond_c

    goto :goto_b

    :cond_c
    iget-wide v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->a:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v2

    sub-long v7, v39, v2

    :goto_b
    if-eqz v13, :cond_d

    move-wide/from16 v29, v7

    :goto_c
    const/4 v13, 0x2

    goto :goto_e

    :cond_d
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->s:Lcom/google/common/collect/ImmutableList;

    invoke-static {v7, v8, v2}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->x(JLjava/util/List;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-wide v2, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->f:J

    :goto_d
    move-wide/from16 v29, v2

    goto :goto_c

    :cond_e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    move-wide/from16 v29, v23

    goto :goto_c

    :cond_f
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Landroidx/media3/common/util/Util;->d(Ljava/util/List;Ljava/lang/Long;Z)I

    move-result v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v3, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->n:Lcom/google/common/collect/ImmutableList;

    invoke-static {v7, v8, v3}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->x(JLjava/util/List;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-wide v2, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->f:J

    goto :goto_d

    :cond_10
    iget-wide v2, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->f:J

    goto :goto_d

    :goto_e
    if-ne v9, v13, :cond_11

    iget-boolean v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->f:Z

    if-eqz v2, :cond_11

    const/16 v33, 0x1

    :goto_f
    move-wide/from16 v23, v15

    goto :goto_10

    :cond_11
    move/from16 v33, v11

    goto :goto_f

    :goto_10
    new-instance v16, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->u:J

    const/16 v26, 0x1

    xor-int/lit8 v32, v14, 0x1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->d()Landroidx/media3/common/MediaItem;

    move-result-object v35

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->r:Landroidx/media3/common/MediaItem$LiveConfiguration;

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v31, 0x1

    move-wide/from16 v25, v1

    move-object/from16 v36, v3

    invoke-direct/range {v16 .. v36}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    :goto_11
    move-object/from16 v1, v16

    goto :goto_15

    :cond_12
    move v13, v3

    cmp-long v2, v7, v21

    if-eqz v2, :cond_16

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_13

    :cond_13
    if-nez v13, :cond_15

    cmp-long v2, v7, v5

    if-nez v2, :cond_14

    goto :goto_12

    :cond_14
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Landroidx/media3/common/util/Util;->d(Ljava/util/List;Ljava/lang/Long;Z)I

    move-result v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v7, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->f:J

    :cond_15
    :goto_12
    move-wide/from16 v29, v7

    goto :goto_14

    :cond_16
    :goto_13
    move-wide/from16 v29, v23

    :goto_14
    new-instance v16, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->u:J

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->d()Landroidx/media3/common/MediaItem;

    move-result-object v35

    const/16 v36, 0x0

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v27, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-wide/from16 v25, v1

    move-wide/from16 v23, v1

    invoke-direct/range {v16 .. v36}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    goto :goto_11

    :goto_15
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->v(Landroidx/media3/common/Timeline;)V

    return-void
.end method
