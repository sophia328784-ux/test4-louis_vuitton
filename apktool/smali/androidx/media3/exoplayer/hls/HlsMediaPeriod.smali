.class final Landroidx/media3/exoplayer/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Landroidx/media3/exoplayer/source/SequenceableLoader;

.field public C:J

.field public final b:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

.field public final c:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field public final d:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

.field public final e:Landroidx/media3/datasource/TransferListener;

.field public final f:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

.field public final g:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public final h:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final i:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final k:Landroidx/media3/exoplayer/upstream/Allocator;

.field public final l:Ljava/util/IdentityHashMap;

.field public final m:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

.field public final n:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field public final o:Z

.field public final p:I

.field public final q:Z

.field public final r:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final s:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

.field public final t:J

.field public final u:Lcom/google/common/base/Supplier;

.field public v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field public w:I

.field public x:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field public y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field public z:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;ZIZLandroidx/media3/exoplayer/analytics/PlayerId;JLcom/google/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/HlsExtractorFactory;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;",
            "Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;",
            "Landroidx/media3/datasource/TransferListener;",
            "Landroidx/media3/exoplayer/upstream/CmcdConfiguration;",
            "Landroidx/media3/exoplayer/drm/DrmSessionManager;",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;",
            "Landroidx/media3/exoplayer/upstream/Allocator;",
            "Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;",
            "ZIZ",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            "J",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/util/ReleasableExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->b:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->c:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->d:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    iput-object p4, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->e:Landroidx/media3/datasource/TransferListener;

    iput-object p5, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->f:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iput-object p6, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->g:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p7, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->h:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p8, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->i:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object p9, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p10, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->k:Landroidx/media3/exoplayer/upstream/Allocator;

    iput-object p11, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->n:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    iput-boolean p12, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->o:Z

    iput p13, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->p:I

    iput-boolean p14, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->q:Z

    iput-object p15, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->r:Landroidx/media3/exoplayer/analytics/PlayerId;

    move-wide/from16 p1, p16

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->t:J

    move-object/from16 p1, p18

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->u:Lcom/google/common/base/Supplier;

    new-instance p1, Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;-><init>(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->s:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {p11}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->empty()Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->B:Landroidx/media3/exoplayer/source/SequenceableLoader;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->l:Ljava/util/IdentityHashMap;

    new-instance p1, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    invoke-direct {p1}, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->m:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    const/4 p1, 0x0

    new-array p2, p1, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    new-array p1, p1, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->z:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->C:J

    return-void
.end method

.method public static l(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;
    .locals 12

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    iget v3, p1, Landroidx/media3/common/Format;->G:I

    iget v4, p1, Landroidx/media3/common/Format;->e:I

    iget v5, p1, Landroidx/media3/common/Format;->f:I

    iget-object v6, p1, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    iget-object v7, p1, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, p1}, Landroidx/media3/common/util/Util;->w(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    if-eqz p2, :cond_1

    iget v3, p0, Landroidx/media3/common/Format;->G:I

    iget v4, p0, Landroidx/media3/common/Format;->e:I

    iget v5, p0, Landroidx/media3/common/Format;->f:I

    iget-object v6, p0, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    iget-object v7, p0, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    iget-object v0, p0, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    move v3, v1

    move v5, v4

    move-object v7, v6

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz p2, :cond_2

    iget v9, p0, Landroidx/media3/common/Format;->h:I

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_1
    if-eqz p2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->i:I

    :cond_3
    new-instance p2, Landroidx/media3/common/Format$Builder;

    invoke-direct {p2}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v10, p0, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    iput-object v10, p2, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iput-object v7, p2, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p2, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    iget-object p0, p0, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    invoke-static {v8}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput-object v0, p2, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iput-object v2, p2, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    iput v9, p2, Landroidx/media3/common/Format$Builder;->h:I

    iput v1, p2, Landroidx/media3/common/Format$Builder;->i:I

    iput v3, p2, Landroidx/media3/common/Format$Builder;->F:I

    iput v4, p2, Landroidx/media3/common/Format$Builder;->e:I

    iput v5, p2, Landroidx/media3/common/Format$Builder;->f:I

    iput-object v6, p2, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, p2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->x:Landroidx/media3/exoplayer/source/TrackGroupArray;

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    iget-boolean v3, v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E:Z

    if-nez v3, :cond_0

    new-instance v3, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v3}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v4, v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    iput-wide v4, v3, Landroidx/media3/exoplayer/LoadingInfo$Builder;->a:J

    new-instance v4, Landroidx/media3/exoplayer/LoadingInfo;

    invoke-direct {v4, v3}, Landroidx/media3/exoplayer/LoadingInfo;-><init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;)V

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->a(Landroidx/media3/exoplayer/LoadingInfo;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->B:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->a(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_b

    aget-object v7, v2, v5

    iget-object v8, v7, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    iget-object v9, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e:[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    iget-object v10, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    array-length v11, v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_a

    aget-object v13, v9, v12

    invoke-interface {v10, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->p(Landroid/net/Uri;)Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    if-nez p3, :cond_0

    invoke-virtual {v8, v1}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->a(Landroid/net/Uri;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    move-result-object v9

    iget-object v7, v7, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->j:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-object/from16 v13, p2

    invoke-interface {v7, v9, v13}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->c(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object v7

    goto :goto_2

    :cond_0
    move-object/from16 v13, p2

    const/4 v7, 0x0

    :goto_2
    iput-object v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->q:Landroid/net/Uri;

    if-nez v7, :cond_1

    goto :goto_6

    :cond_1
    iget v9, v7, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->a:I

    iget-wide v11, v7, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->b:J

    const/4 v7, 0x1

    if-eq v9, v7, :cond_8

    const/4 v14, 0x2

    if-ne v9, v14, :cond_7

    const/4 v9, 0x0

    :goto_3
    iget-object v14, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e:[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    array-length v15, v14

    const/16 v16, 0x0

    const/4 v4, -0x1

    if-ge v9, v15, :cond_3

    aget-object v14, v14, v9

    invoke-interface {v10, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->p(Landroid/net/Uri;)Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    move v9, v4

    :goto_4
    if-ne v9, v4, :cond_4

    goto :goto_5

    :cond_4
    iget-object v14, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v14, v9}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->l(I)I

    move-result v9

    if-ne v9, v4, :cond_5

    goto :goto_5

    :cond_5
    iget-object v4, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v4, v9, v11, v12}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->h(IJ)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v10, v1, v11, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->n(Landroid/net/Uri;J)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_7

    :cond_6
    :goto_5
    move/from16 v7, v16

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    const-string v0, "Invalid fallback selection type: "

    invoke-static {v9, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return v16

    :cond_8
    const/16 v16, 0x0

    invoke-interface {v10, v1, v11, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->n(Landroid/net/Uri;J)Z

    move-result v7

    goto :goto_7

    :cond_9
    move-object/from16 v13, p2

    const/16 v16, 0x0

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v13, p2

    :goto_6
    const/16 v16, 0x0

    goto :goto_5

    :goto_7
    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return v6
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->B:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 12

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->z:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    iget v3, v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->B:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object p0, v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->d()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e:[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->r()I

    move-result p0

    aget-object p0, v2, p0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->c()Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->r(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_4

    :cond_1
    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->h:J

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->f()J

    move-result-wide v5

    sub-long/2addr v2, v5

    sub-long v6, p1, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, p1, v4}, Landroidx/media3/common/util/Util;->d(Ljava/util/List;Ljava/lang/Long;Z)I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v8, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->f:J

    iget-boolean p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->c:Z

    if-eqz p0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v4

    if-eq p1, p0, :cond_2

    add-int/2addr p1, v4

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->f:J

    move-wide v10, p0

    :goto_2
    move-object v5, p3

    goto :goto_3

    :cond_2
    move-wide v10, v8

    goto :goto_2

    :goto_3
    invoke-virtual/range {v5 .. v11}, Landroidx/media3/exoplayer/SeekParameters;->a(JJJ)J

    move-result-wide p0

    add-long/2addr p0, v2

    return-wide p0

    :cond_3
    move-object v5, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-wide p1
.end method

.method public final e(J)J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->z:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->K(JZ)Z

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->z:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->K(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->m:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    return-wide p1
.end method

.method public final f([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v4, p5

    array-length v3, v1

    new-array v12, v3, [I

    array-length v3, v1

    new-array v13, v3, [I

    const/4 v3, 0x0

    :goto_0
    array-length v6, v1

    iget-object v15, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->l:Ljava/util/IdentityHashMap;

    const/4 v7, -0x1

    if-ge v3, v6, :cond_3

    aget-object v6, v2, v3

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    invoke-virtual {v15, v6}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_1
    aput v6, v12, v3

    aput v7, v13, v3

    aget-object v6, v1, v3

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->m()Landroidx/media3/common/TrackGroup;

    move-result-object v6

    const/4 v8, 0x0

    :goto_2
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v10, v9

    if-ge v8, v10, :cond_2

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x()V

    iget-object v9, v9, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v9, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;->b(Landroidx/media3/common/TrackGroup;)I

    move-result v9

    if-eq v9, v7, :cond_1

    aput v8, v13, v3

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v15}, Ljava/util/IdentityHashMap;->clear()V

    array-length v3, v1

    new-array v6, v3, [Landroidx/media3/exoplayer/source/SampleStream;

    array-length v8, v1

    new-array v9, v8, [Landroidx/media3/exoplayer/source/SampleStream;

    array-length v10, v1

    new-array v11, v10, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    const/16 v16, 0x0

    iget-object v14, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v14, v14

    new-array v14, v14, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    move/from16 v17, v8

    move/from16 v8, v16

    move/from16 v18, v8

    move/from16 v19, v18

    :goto_4
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v7, v7

    if-ge v8, v7, :cond_29

    move/from16 v21, v3

    move/from16 v7, v16

    :goto_5
    array-length v3, v1

    move-object/from16 v22, v6

    if-ge v7, v3, :cond_6

    aget v3, v12, v7

    if-ne v3, v8, :cond_4

    aget-object v3, v2, v7

    goto :goto_6

    :cond_4
    const/4 v3, 0x0

    :goto_6
    aput-object v3, v9, v7

    aget v3, v13, v7

    if-ne v3, v8, :cond_5

    aget-object v6, v1, v7

    goto :goto_7

    :cond_5
    const/4 v6, 0x0

    :goto_7
    aput-object v6, v11, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, v22

    goto :goto_5

    :cond_6
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v8

    iget-object v7, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->k:Landroidx/media3/exoplayer/upstream/Loader;

    move/from16 v23, v8

    iget-object v8, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    const/16 v24, 0x0

    iget-object v6, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x()V

    move-object/from16 v25, v6

    iget v6, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F:I

    move/from16 v26, v6

    move-object/from16 v27, v9

    move/from16 v6, v16

    :goto_8
    if-ge v6, v10, :cond_b

    aget-object v28, v27, v6

    const/16 v29, 0x1

    move-object/from16 v9, v28

    check-cast v9, Landroidx/media3/exoplayer/hls/HlsSampleStream;

    if-eqz v9, :cond_8

    aget-object v28, v11, v6

    if-eqz v28, :cond_7

    aget-boolean v28, p2, v6

    if-nez v28, :cond_8

    :cond_7
    move/from16 v28, v6

    goto :goto_9

    :cond_8
    move/from16 v28, v6

    move-object/from16 v30, v7

    const/4 v7, -0x1

    goto :goto_a

    :goto_9
    iget v6, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F:I

    iget v6, v9, Landroidx/media3/exoplayer/hls/HlsSampleStream;->c:I

    move-object/from16 v30, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    iget-object v6, v9, Landroidx/media3/exoplayer/hls/HlsSampleStream;->b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget v7, v9, Landroidx/media3/exoplayer/hls/HlsSampleStream;->a:I

    invoke-virtual {v6}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x()V

    move/from16 v29, v7

    iget-object v7, v6, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->L:[I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->L:[I

    aget v7, v7, v29

    if-ltz v7, :cond_9

    move/from16 v29, v7

    iget-object v7, v6, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->O:[Z

    aget-boolean v7, v7, v29

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v6, v6, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->O:[Z

    aput-boolean v16, v6, v29

    :cond_9
    const/4 v7, -0x1

    iput v7, v9, Landroidx/media3/exoplayer/hls/HlsSampleStream;->c:I

    :cond_a
    aput-object v24, v27, v28

    :goto_a
    add-int/lit8 v6, v28, 0x1

    move-object/from16 v7, v30

    goto :goto_8

    :cond_b
    move-object/from16 v30, v7

    const/4 v7, -0x1

    const/16 v29, 0x1

    if-nez v19, :cond_c

    iget-boolean v6, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->T:Z

    if-eqz v6, :cond_e

    if-nez v26, :cond_d

    :cond_c
    move-object v6, v8

    goto :goto_c

    :cond_d
    move-object v6, v8

    goto :goto_b

    :cond_e
    move-object v6, v8

    iget-wide v7, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    cmp-long v7, v4, v7

    if-eqz v7, :cond_f

    goto :goto_c

    :cond_f
    :goto_b
    move-object v7, v6

    move/from16 v6, v16

    goto :goto_d

    :goto_c
    move-object v7, v6

    move/from16 v6, v29

    :goto_d
    iget-object v8, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v9, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e:[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    move/from16 v26, v6

    iget-object v6, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    move-object/from16 v28, v9

    move-object/from16 v31, v11

    move/from16 v9, v16

    move-object v11, v8

    :goto_e
    if-ge v9, v10, :cond_14

    move/from16 v32, v9

    aget-object v9, v31, v32

    if-nez v9, :cond_10

    move/from16 v33, v10

    move-object/from16 v34, v12

    goto :goto_10

    :cond_10
    move/from16 v33, v10

    iget-object v10, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-object/from16 v34, v12

    invoke-interface {v9}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->m()Landroidx/media3/common/TrackGroup;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroidx/media3/exoplayer/source/TrackGroupArray;->b(Landroidx/media3/common/TrackGroup;)I

    move-result v10

    iget v12, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->M:I

    if-ne v10, v12, :cond_11

    iget-object v11, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v11}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->r()I

    move-result v11

    aget-object v11, v28, v11

    invoke-virtual {v11}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->c()Landroid/net/Uri;

    move-result-object v11

    invoke-interface {v6, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->c(Landroid/net/Uri;)V

    iput-object v9, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-object v11, v9

    :cond_11
    aget-object v9, v27, v32

    if-nez v9, :cond_13

    iget v9, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F:I

    new-instance v9, Landroidx/media3/exoplayer/hls/HlsSampleStream;

    invoke-direct {v9, v3, v10}, Landroidx/media3/exoplayer/hls/HlsSampleStream;-><init>(Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;I)V

    aput-object v9, v27, v32

    aput-boolean v29, p4, v32

    iget-object v12, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->L:[I

    if-eqz v12, :cond_13

    invoke-virtual {v9}, Landroidx/media3/exoplayer/hls/HlsSampleStream;->d()V

    iget-object v9, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->L:[I

    aget v9, v9, v10

    if-nez v26, :cond_13

    if-ltz v9, :cond_13

    iget-object v10, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v9, v10, v9

    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/SampleQueue;->q()I

    move-result v10

    if-eqz v10, :cond_12

    move/from16 v10, v29

    invoke-virtual {v9, v4, v5, v10}, Landroidx/media3/exoplayer/source/SampleQueue;->B(JZ)Z

    move-result v9

    if-nez v9, :cond_12

    const/4 v10, 0x1

    goto :goto_f

    :cond_12
    move/from16 v10, v16

    :goto_f
    move/from16 v26, v10

    :cond_13
    :goto_10
    add-int/lit8 v9, v32, 0x1

    move/from16 v10, v33

    move-object/from16 v12, v34

    const/16 v29, 0x1

    goto :goto_e

    :cond_14
    move/from16 v33, v10

    move-object/from16 v34, v12

    iget v9, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F:I

    if-nez v9, :cond_17

    iget-object v8, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v8}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->r()I

    move-result v8

    aget-object v8, v28, v8

    invoke-virtual {v8}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->c()Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v6, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->c(Landroid/net/Uri;)V

    move-object/from16 v6, v24

    iput-object v6, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->p:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    iput-object v6, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->H:Landroidx/media3/common/Format;

    const/4 v10, 0x1

    iput-boolean v10, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->S:Z

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v30 .. v30}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-boolean v6, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D:Z

    if-eqz v6, :cond_15

    iget-object v6, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v8, v6

    move/from16 v9, v16

    :goto_11
    if-ge v9, v8, :cond_15

    aget-object v11, v6, v9

    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/SampleQueue;->j()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_15
    invoke-virtual/range {v30 .. v30}, Landroidx/media3/exoplayer/upstream/Loader;->a()V

    goto :goto_12

    :cond_16
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J()V

    :goto_12
    move-object/from16 v20, v14

    move-object v14, v3

    move/from16 v3, v17

    move-object/from16 v17, v20

    move-object/from16 v28, v13

    move/from16 v35, v21

    move-object/from16 v36, v22

    move/from16 v38, v23

    const/16 v20, -0x1

    move-object v13, v7

    goto/16 :goto_17

    :cond_17
    const/4 v10, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-static {v11, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    iget-boolean v6, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->T:Z

    if-nez v6, :cond_1a

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-gez v6, :cond_18

    neg-long v8, v4

    :cond_18
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D()Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object v12

    move-object v6, v11

    invoke-virtual {v7, v12, v4, v5}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->b(Landroidx/media3/exoplayer/hls/HlsMediaChunk;J)[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    move-result-object v11

    move-object/from16 v25, v6

    move-object/from16 v24, v7

    move-wide v6, v8

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move/from16 v29, v10

    iget-object v10, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->p:Ljava/util/List;

    move-object/from16 v28, v13

    move/from16 v37, v17

    move/from16 v35, v21

    move-object/from16 v36, v22

    move/from16 v38, v23

    move-object/from16 v13, v24

    const/16 v20, -0x1

    move-object/from16 v17, v14

    move-object v14, v3

    move-object/from16 v3, v25

    invoke-interface/range {v3 .. v11}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->g(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V

    iget-object v3, v13, Landroidx/media3/exoplayer/hls/HlsChunkSource;->h:Landroidx/media3/common/TrackGroup;

    iget-object v6, v12, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    invoke-virtual {v3, v6}, Landroidx/media3/common/TrackGroup;->b(Landroidx/media3/common/Format;)I

    move-result v3

    invoke-interface/range {v25 .. v25}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->r()I

    move-result v6

    if-eq v6, v3, :cond_19

    const/4 v10, 0x1

    goto :goto_13

    :cond_19
    const/4 v10, 0x1

    goto :goto_14

    :cond_1a
    move-object/from16 v28, v13

    move/from16 v37, v17

    move/from16 v35, v21

    move-object/from16 v36, v22

    move/from16 v38, v23

    const/16 v20, -0x1

    move-object v13, v7

    move-object/from16 v17, v14

    move-object v14, v3

    :goto_13
    iput-boolean v10, v14, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->S:Z

    move v3, v10

    move v9, v3

    goto :goto_15

    :cond_1b
    move-object/from16 v28, v13

    move/from16 v37, v17

    move/from16 v35, v21

    move-object/from16 v36, v22

    move/from16 v38, v23

    const/16 v20, -0x1

    move-object v13, v7

    move-object/from16 v17, v14

    move-object v14, v3

    :goto_14
    move/from16 v3, v19

    move/from16 v9, v26

    :goto_15
    if-eqz v9, :cond_1d

    invoke-virtual {v14, v4, v5, v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->K(JZ)Z

    move/from16 v6, v16

    move/from16 v3, v37

    :goto_16
    if-ge v6, v3, :cond_1e

    aget-object v7, v27, v6

    if-eqz v7, :cond_1c

    aput-boolean v10, p4, v6

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    const/4 v10, 0x1

    goto :goto_16

    :cond_1d
    move/from16 v3, v37

    :cond_1e
    move/from16 v26, v9

    :goto_17
    iget-object v6, v14, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->t:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move/from16 v7, v16

    :goto_18
    if-ge v7, v3, :cond_20

    aget-object v8, v27, v7

    if-eqz v8, :cond_1f

    check-cast v8, Landroidx/media3/exoplayer/hls/HlsSampleStream;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_20
    const/4 v10, 0x1

    iput-boolean v10, v14, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->T:Z

    move/from16 v6, v16

    move v9, v6

    :goto_19
    array-length v7, v1

    if-ge v6, v7, :cond_24

    aget-object v7, v27, v6

    aget v8, v28, v6

    move/from16 v10, v38

    if-ne v8, v10, :cond_21

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v8, v36

    aput-object v7, v8, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15, v7, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    goto :goto_1b

    :cond_21
    move-object/from16 v8, v36

    aget v11, v34, v6

    if-ne v11, v10, :cond_23

    if-nez v7, :cond_22

    const/4 v7, 0x1

    goto :goto_1a

    :cond_22
    move/from16 v7, v16

    :goto_1a
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->q(Z)V

    :cond_23
    :goto_1b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v36, v8

    move/from16 v38, v10

    goto :goto_19

    :cond_24
    move-object/from16 v8, v36

    move/from16 v10, v38

    move/from16 v6, v18

    if-eqz v9, :cond_28

    aput-object v14, v17, v6

    add-int/lit8 v18, v6, 0x1

    if-nez v6, :cond_26

    const/4 v6, 0x1

    iput-boolean v6, v13, Landroidx/media3/exoplayer/hls/HlsChunkSource;->n:Z

    if-nez v26, :cond_25

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->z:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v9, v7

    if-eqz v9, :cond_25

    aget-object v7, v7, v16

    if-eq v14, v7, :cond_28

    :cond_25
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->m:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    iget-object v7, v7, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    move/from16 v19, v6

    goto :goto_1d

    :cond_26
    const/4 v6, 0x1

    iget v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->A:I

    if-ge v10, v7, :cond_27

    move v9, v6

    goto :goto_1c

    :cond_27
    move/from16 v9, v16

    :goto_1c
    iput-boolean v9, v13, Landroidx/media3/exoplayer/hls/HlsChunkSource;->n:Z

    :cond_28
    :goto_1d
    add-int/lit8 v6, v10, 0x1

    move-object v9, v8

    move v8, v6

    move-object v6, v9

    move-object/from16 v14, v17

    move-object/from16 v9, v27

    move-object/from16 v13, v28

    move-object/from16 v11, v31

    move/from16 v10, v33

    move-object/from16 v12, v34

    move/from16 v17, v3

    move/from16 v3, v35

    goto/16 :goto_4

    :cond_29
    move v7, v3

    move-object v8, v6

    move-object/from16 v17, v14

    move/from16 v9, v16

    move/from16 v6, v18

    invoke-static {v8, v9, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v1, v17

    invoke-static {v6, v1}, Landroidx/media3/common/util/Util;->T(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->z:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->u([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/hls/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v1}, Lcom/google/common/collect/Lists;->d(Lcom/google/common/base/Function;Ljava/util/List;)Ljava/util/AbstractList;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->n:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    invoke-interface {v3, v1, v2}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->a(Ljava/util/List;Ljava/util/AbstractList;)Landroidx/media3/exoplayer/source/CompositeSequenceableLoader;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->B:Landroidx/media3/exoplayer/source/SequenceableLoader;

    return-wide v4
.end method

.method public final g()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final h()V
    .locals 14

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    iget-object v5, v4, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->k:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v6, v4, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    iget-object v7, v4, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {v7}, Lcom/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->c(Landroidx/media3/exoplayer/hls/HlsMediaChunk;)I

    move-result v8

    iget v9, v7, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->o:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    invoke-virtual {v7}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->f()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, -0x1

    if-eq v9, v4, :cond_1

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v4, v6, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v5, v7, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->m:Landroid/net/Uri;

    invoke-interface {v4, v5, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->r(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    iget-wide v10, v7, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->j:J

    iget-wide v12, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    sub-long/2addr v10, v12

    long-to-int v6, v10

    if-gez v6, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->n:Lcom/google/common/collect/ImmutableList;

    goto :goto_2

    :cond_3
    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->s:Lcom/google/common/collect/ImmutableList;

    :goto_2
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    iget-wide v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->d:J

    :goto_3
    iput-wide v4, v7, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->L:J

    goto :goto_4

    :cond_4
    if-nez v8, :cond_5

    iget-object v5, v4, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->s:Landroid/os/Handler;

    new-instance v6, Landroidx/media3/exoplayer/hls/c;

    invoke-direct {v6, v4, v7}, Landroidx/media3/exoplayer/hls/c;-><init>(Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;Landroidx/media3/exoplayer/hls/HlsMediaChunk;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_5
    const/4 v6, 0x2

    if-ne v8, v6, :cond_6

    iget-boolean v4, v4, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V:Z

    if-nez v4, :cond_6

    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/Loader;->a()V

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public final i(J)J
    .locals 7

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->C:J

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    iput-wide p1, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->W:J

    iget-boolean v4, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-virtual {v6, p1, p2}, Landroidx/media3/exoplayer/source/SampleQueue;->C(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final j(Ljava/lang/String;I[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;[Landroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/exoplayer/hls/HlsChunkSource;

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->r:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->f:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->b:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->c:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->d:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->e:Landroidx/media3/datasource/TransferListener;

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->m:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    iget-wide v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->t:J

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v13}, Landroidx/media3/exoplayer/hls/HlsChunkSource;-><init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;JLjava/util/List;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;)V

    new-instance v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->u:Lcom/google/common/base/Supplier;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/util/ReleasableExecutor;

    :goto_0
    move-object/from16 v16, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->s:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->k:Landroidx/media3/exoplayer/upstream/Allocator;

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->g:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->h:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->i:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-object v14, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v15, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->p:I

    move/from16 v3, p2

    move-object/from16 v10, p5

    move-object/from16 v6, p7

    move-wide/from16 v8, p8

    move-object v5, v1

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v16}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;-><init>(Ljava/lang/String;ILandroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;Landroidx/media3/exoplayer/hls/HlsChunkSource;Ljava/util/Map;Landroidx/media3/exoplayer/upstream/Allocator;JLandroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;ILandroidx/media3/exoplayer/util/ReleasableExecutor;)V

    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->C:J

    iput-wide v2, v1, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->W:J

    iget-boolean v0, v1, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    invoke-virtual {v6, v2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->C(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    return-object v1
.end method

.method public final k()V
    .locals 4

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->H()V

    iget-boolean v3, v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V:Z

    if-eqz v3, :cond_1

    iget-boolean v2, v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "Loading finished before preparation is complete."

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->B:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->m()Z

    move-result p0

    return p0
.end method

.method public final o(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->c:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->k(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    invoke-interface {v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->g()Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->q:Z

    const/4 v11, 0x0

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->m:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v6, v11

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/DrmInitData;

    iget-object v8, v7, Landroidx/media3/common/DrmInitData;->d:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    move v9, v6

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/common/DrmInitData;

    iget-object v13, v12, Landroidx/media3/common/DrmInitData;->d:Ljava/lang/String;

    invoke-static {v13, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v14, v7, Landroidx/media3/common/DrmInitData;->d:Ljava/lang/String;

    if-eqz v14, :cond_1

    if-eqz v13, :cond_1

    invoke-static {v14, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_2

    :cond_0
    move v15, v11

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v15, 0x1

    :goto_3
    invoke-static {v15}, Lcom/google/common/base/Preconditions;->q(Z)V

    if-eqz v14, :cond_2

    move-object v13, v14

    :cond_2
    iget-object v7, v7, Landroidx/media3/common/DrmInitData;->b:[Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v12, v12, Landroidx/media3/common/DrmInitData;->b:[Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v14, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    array-length v14, v7

    array-length v15, v12

    add-int/2addr v14, v15

    invoke-static {v7, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    array-length v7, v7

    array-length v15, v12

    invoke-static {v12, v11, v14, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v14, [Landroidx/media3/common/DrmInitData$SchemeData;

    new-instance v7, Landroidx/media3/common/DrmInitData;

    invoke-direct {v7, v13, v14}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    :goto_4
    move-object v7, v5

    goto :goto_5

    :cond_6
    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_4

    :goto_5
    invoke-interface {v1, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->e(I)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x2

    invoke-interface {v1, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->e(I)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->e(I)Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iput v11, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->w:I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v16, "application/id3"

    const-string v5, "ID3"

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->b:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    iget-boolean v8, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->o:Z

    if-nez v1, :cond_1b

    move-object v1, v5

    iget-object v5, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->j:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    move/from16 p1, v11

    new-array v11, v9, [I

    move/from16 v10, p1

    move/from16 v18, v10

    move/from16 v19, v18

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_a

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    iget-object v12, v12, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->a:Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    iget-object v12, v12, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->a:Landroidx/media3/common/Format;

    iget v0, v12, Landroidx/media3/common/Format;->w:I

    iget-object v12, v12, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    if-gtz v0, :cond_7

    const/4 v0, 0x2

    invoke-static {v0, v12}, Landroidx/media3/common/util/Util;->w(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_8

    :cond_7
    move/from16 v0, v19

    const/16 v20, 0x2

    goto :goto_7

    :cond_8
    const/4 v0, 0x1

    invoke-static {v0, v12}, Landroidx/media3/common/util/Util;->w(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    aput v0, v11, v10

    move/from16 v0, v19

    add-int/lit8 v19, v0, 0x1

    goto :goto_8

    :cond_9
    move/from16 v0, v19

    const/4 v12, -0x1

    aput v12, v11, v10

    goto :goto_8

    :goto_7
    aput v20, v11, v10

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v0

    :goto_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_a
    move/from16 v0, v19

    if-lez v18, :cond_b

    move/from16 v9, p1

    move/from16 v10, v18

    const/4 v0, 0x1

    goto :goto_9

    :cond_b
    if-ge v0, v9, :cond_c

    sub-int/2addr v9, v0

    move/from16 v0, p1

    move v10, v9

    const/4 v9, 0x1

    goto :goto_9

    :cond_c
    move/from16 v0, p1

    move v10, v9

    move v9, v0

    :goto_9
    new-array v12, v10, [Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    move-object/from16 v18, v4

    new-array v4, v10, [Landroidx/media3/common/Format;

    move-object/from16 v19, v11

    new-array v11, v10, [I

    move/from16 v22, p1

    move/from16 v21, v0

    move-object/from16 v23, v1

    move/from16 v0, v22

    :goto_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    if-eqz v21, :cond_d

    aget v1, v19, v0

    move-object/from16 v24, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    goto :goto_b

    :cond_d
    move-object/from16 v24, v2

    :goto_b
    if-eqz v9, :cond_e

    aget v1, v19, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    :cond_e
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    aput-object v1, v12, v22

    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->a:Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->a:Landroidx/media3/common/Format;

    aput-object v1, v4, v22

    add-int/lit8 v1, v22, 0x1

    aput v0, v11, v22

    move/from16 v22, v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v24

    goto :goto_a

    :cond_10
    move-object/from16 v24, v2

    aget-object v0, v4, p1

    iget-object v0, v0, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2, v0}, Landroidx/media3/common/util/Util;->v(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v0}, Landroidx/media3/common/util/Util;->v(ILjava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_11

    if-nez v0, :cond_12

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    if-gt v1, v2, :cond_12

    add-int v2, v0, v1

    if-lez v2, :cond_12

    const/16 v19, 0x1

    goto :goto_c

    :cond_12
    move/from16 v19, p1

    :goto_c
    if-nez v21, :cond_13

    if-lez v0, :cond_13

    const/4 v2, 0x1

    :goto_d
    move v3, v1

    goto :goto_e

    :cond_13
    move/from16 v2, p1

    goto :goto_d

    :goto_e
    const-string v1, "main"

    move-object/from16 v9, v18

    move/from16 v18, v3

    move-object v3, v12

    move-object v12, v9

    move/from16 v21, v0

    move-object/from16 v22, v14

    move-object/from16 v14, v23

    move-object/from16 v0, p0

    move-object/from16 v23, v13

    move-object v13, v6

    move-object/from16 v6, v24

    move/from16 v24, v8

    move-wide/from16 v8, p2

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->j(Ljava/lang/String;I[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;[Landroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v24, :cond_1a

    if-eqz v19, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-lez v18, :cond_17

    new-array v3, v10, [Landroidx/media3/common/Format;

    move/from16 v8, p1

    :goto_f
    if-ge v8, v10, :cond_14

    aget-object v9, v4, v8

    iget-object v11, v9, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    move-object/from16 v18, v4

    const/4 v4, 0x2

    invoke-static {v4, v11}, Landroidx/media3/common/util/Util;->w(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    move-object/from16 v25, v7

    iget-object v7, v9, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    iput-object v7, v4, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object v7, v9, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    iput-object v7, v4, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    iget-object v7, v9, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    iput-object v7, v4, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    iget-object v7, v9, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput-object v11, v4, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iget-object v7, v9, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    iput-object v7, v4, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    iget v7, v9, Landroidx/media3/common/Format;->h:I

    iput v7, v4, Landroidx/media3/common/Format$Builder;->h:I

    iget v7, v9, Landroidx/media3/common/Format;->i:I

    iput v7, v4, Landroidx/media3/common/Format$Builder;->i:I

    iget v7, v9, Landroidx/media3/common/Format;->v:I

    iput v7, v4, Landroidx/media3/common/Format$Builder;->u:I

    iget v7, v9, Landroidx/media3/common/Format;->w:I

    iput v7, v4, Landroidx/media3/common/Format$Builder;->v:I

    iget v7, v9, Landroidx/media3/common/Format;->z:F

    iput v7, v4, Landroidx/media3/common/Format$Builder;->y:F

    iget v7, v9, Landroidx/media3/common/Format;->e:I

    iput v7, v4, Landroidx/media3/common/Format$Builder;->e:I

    iget v7, v9, Landroidx/media3/common/Format;->f:I

    iput v7, v4, Landroidx/media3/common/Format$Builder;->f:I

    iget-object v7, v9, Landroidx/media3/common/Format;->E:Landroidx/media3/common/ColorInfo;

    iput-object v7, v4, Landroidx/media3/common/Format$Builder;->D:Landroidx/media3/common/ColorInfo;

    new-instance v7, Landroidx/media3/common/Format;

    invoke-direct {v7, v4}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    aput-object v7, v3, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v18

    move-object/from16 v7, v25

    goto :goto_f

    :cond_14
    move-object/from16 v18, v4

    move-object/from16 v25, v7

    new-instance v4, Landroidx/media3/common/TrackGroup;

    invoke-direct {v4, v1, v3}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v21, :cond_16

    if-nez v5, :cond_15

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    aget-object v3, v18, p1

    move/from16 v4, p1

    invoke-static {v3, v5, v4}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->l(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iput-object v1, v3, Landroidx/media3/common/Format$Builder;->l:Ljava/lang/String;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    new-instance v3, Landroidx/media3/common/TrackGroup;

    const-string v5, "main:audio"

    filled-new-array {v4}, [Landroidx/media3/common/Format;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz v6, :cond_19

    const/4 v3, 0x0

    :goto_10
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_19

    const-string v4, "main:cc:"

    invoke-static {v3, v4}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Format;

    invoke-interface {v13, v5}, Landroidx/media3/exoplayer/hls/HlsExtractorFactory;->a(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iput-object v1, v5, Landroidx/media3/common/Format$Builder;->l:Ljava/lang/String;

    new-instance v7, Landroidx/media3/common/Format;

    invoke-direct {v7, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    new-instance v5, Landroidx/media3/common/TrackGroup;

    filled-new-array {v7}, [Landroidx/media3/common/Format;

    move-result-object v7

    invoke-direct {v5, v4, v7}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_17
    move-object/from16 v18, v4

    move-object/from16 v25, v7

    new-array v3, v10, [Landroidx/media3/common/Format;

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v10, :cond_18

    aget-object v6, v18, v4

    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->l(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;

    move-result-object v6

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_18
    new-instance v4, Landroidx/media3/common/TrackGroup;

    invoke-direct {v4, v1, v3}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    new-instance v3, Landroidx/media3/common/TrackGroup;

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v14, v4, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput-object v1, v4, Landroidx/media3/common/Format$Builder;->l:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v4}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    filled-new-array {v1}, [Landroidx/media3/common/Format;

    move-result-object v1

    const-string v4, "main:id3"

    invoke-direct {v3, v4, v1}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    new-array v1, v4, [Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->I([Landroidx/media3/common/TrackGroup;[I)V

    goto :goto_12

    :cond_1a
    move-object/from16 v25, v7

    goto :goto_12

    :cond_1b
    move-object v12, v4

    move-object/from16 v25, v7

    move/from16 v24, v8

    move-object/from16 v23, v13

    move-object/from16 v22, v14

    move-object v14, v5

    move-object v13, v6

    :goto_12
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_13
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    move-object/from16 v3, v23

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->a:Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v23, v3

    move-object/from16 v7, v25

    move-object/from16 v0, p0

    goto/16 :goto_16

    :cond_1c
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    const/16 v18, 0x1

    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1f

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    iget-object v6, v6, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->a:Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    iget-object v6, v6, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    iget-object v7, v6, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->a:Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    iget-object v7, v7, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->a:Landroidx/media3/common/Format;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v7, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v7, v6}, Landroidx/media3/common/util/Util;->v(ILjava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_1d

    const/4 v6, 0x1

    goto :goto_15

    :cond_1d
    const/4 v6, 0x0

    :goto_15
    and-int v6, v18, v6

    move/from16 v18, v6

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_1f
    const-string v5, "audio:"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    new-array v7, v5, [Landroidx/media3/common/Format;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/media3/common/Format;

    move-object v7, v1

    move-object v1, v4

    move-object v4, v5

    const/4 v5, 0x0

    move-object/from16 v23, v3

    move-object v3, v6

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move v8, v2

    const/4 v2, 0x1

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v7, v25

    move-object/from16 v0, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->j(Ljava/lang/String;I[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;[Landroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Lcom/google/common/primitives/Ints;->g(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v24, :cond_20

    if-eqz v18, :cond_20

    new-instance v3, Landroidx/media3/common/TrackGroup;

    const-string v4, ":id3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v14, v5, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput-object v1, v5, Landroidx/media3/common/Format$Builder;->l:Ljava/lang/String;

    new-instance v6, Landroidx/media3/common/Format;

    invoke-direct {v6, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    filled-new-array {v6}, [Landroidx/media3/common/Format;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    const/4 v4, 0x0

    new-array v5, v4, [Landroidx/media3/common/Format;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/media3/common/Format;

    new-instance v5, Landroidx/media3/common/TrackGroup;

    invoke-direct {v5, v1, v4}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    filled-new-array {v5, v3}, [Landroidx/media3/common/TrackGroup;

    move-result-object v1

    const/16 v17, 0x1

    filled-new-array/range {v17 .. v17}, [I

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->I([Landroidx/media3/common/TrackGroup;[I)V

    :cond_20
    :goto_16
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v25, v7

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    goto/16 :goto_13

    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v7, v25

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->A:I

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_17
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    move-object/from16 v3, v22

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->a:Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    move-object/from16 v16, v1

    move/from16 v18, v2

    move-object/from16 v22, v3

    const/4 v4, 0x0

    goto/16 :goto_1a

    :cond_22
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    :goto_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_24

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    iget-object v6, v6, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->a:Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    iget-object v6, v6, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->a:Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;

    iget-object v6, v6, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup$GroupKey;->a:Landroidx/media3/common/Format;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_24
    const-string v5, "subtitle:"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Landroidx/media3/common/Format;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/media3/common/Format;

    new-array v8, v5, [Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    move-object/from16 v22, v3

    move-object v3, v5

    const/4 v5, 0x0

    move-object v8, v1

    move-object v1, v4

    move-object v4, v6

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    move v9, v2

    const/4 v2, 0x3

    move-object/from16 v16, v8

    move/from16 v18, v9

    move-wide/from16 v8, p2

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->j(Ljava/lang/String;I[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;[Landroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    move-result-object v2

    invoke-static {v14}, Lcom/google/common/primitives/Ints;->g(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v3, v4

    new-array v5, v3, [Landroidx/media3/common/Format;

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v3, :cond_25

    aget-object v8, v4, v6

    invoke-interface {v13, v8}, Landroidx/media3/exoplayer/hls/HlsExtractorFactory;->a(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v8

    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_25
    new-instance v3, Landroidx/media3/common/TrackGroup;

    invoke-direct {v3, v1, v5}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    filled-new-array {v3}, [Landroidx/media3/common/TrackGroup;

    move-result-object v1

    const/4 v4, 0x0

    new-array v3, v4, [I

    invoke-virtual {v2, v1, v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->I([Landroidx/media3/common/TrackGroup;[I)V

    :goto_1a
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_17

    :cond_26
    const/4 v4, 0x0

    new-array v1, v4, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    new-array v1, v4, [[I

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v1

    iput v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->w:I

    move v1, v4

    :goto_1b
    iget v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->A:I

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    if-ge v1, v2, :cond_27

    aget-object v2, v3, v1

    iget-object v2, v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    const/4 v7, 0x1

    iput-boolean v7, v2, Landroidx/media3/exoplayer/hls/HlsChunkSource;->n:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_27
    array-length v1, v3

    move v11, v4

    :goto_1c
    if-ge v11, v1, :cond_29

    aget-object v2, v3, v11

    iget-boolean v4, v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E:Z

    if-nez v4, :cond_28

    new-instance v4, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v4}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v5, v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    iput-wide v5, v4, Landroidx/media3/exoplayer/LoadingInfo$Builder;->a:J

    new-instance v5, Landroidx/media3/exoplayer/LoadingInfo;

    invoke-direct {v5, v4}, Landroidx/media3/exoplayer/LoadingInfo;-><init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;)V

    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->a(Landroidx/media3/exoplayer/LoadingInfo;)Z

    :cond_28
    add-int/lit8 v11, v11, 0x1

    goto :goto_1c

    :cond_29
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->y:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->z:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    return-void
.end method

.method public final p()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->x:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final s()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->B:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u(JZ)V
    .locals 8

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->z:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    iget-boolean v4, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v4, v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v6, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v6, v6, v5

    iget-object v7, v3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->O:[Z

    aget-boolean v7, v7, v5

    invoke-virtual {v6, p3, v7, p1, p2}, Landroidx/media3/exoplayer/source/SampleQueue;->i(ZZJ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final v(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->B:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->v(J)V

    return-void
.end method
