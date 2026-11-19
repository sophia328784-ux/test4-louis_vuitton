.class Landroidx/media3/exoplayer/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;,
        Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;,
        Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;,
        Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;,
        Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

.field public final b:Landroidx/media3/datasource/DataSource;

.field public final c:Landroidx/media3/datasource/DataSource;

.field public final d:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

.field public final e:[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

.field public final f:[Landroidx/media3/common/Format;

.field public final g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field public final h:Landroidx/media3/common/TrackGroup;

.field public final i:Ljava/util/List;

.field public final j:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

.field public final k:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final l:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

.field public final m:J

.field public n:Z

.field public o:[B

.field public p:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

.field public q:Landroid/net/Uri;

.field public r:Landroid/net/Uri;

.field public s:Z

.field public t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

.field public u:J

.field public v:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;JLjava/util/List;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/HlsExtractorFactory;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;",
            "[",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;",
            "Landroidx/media3/datasource/TransferListener;",
            "Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;",
            "J",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            "Landroidx/media3/exoplayer/upstream/CmcdConfiguration;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->a:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e:[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    iput-object p4, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->f:[Landroidx/media3/common/Format;

    iput-object p7, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->d:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    iput-wide p8, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->m:J

    iput-object p10, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->i:Ljava/util/List;

    iput-object p11, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->k:Landroidx/media3/exoplayer/analytics/PlayerId;

    iput-object p12, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->l:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->v:J

    new-instance p7, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    const/4 p8, 0x4

    invoke-direct {p7, p8}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;-><init>(I)V

    iput-object p7, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->j:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    sget-object p7, Landroidx/media3/common/util/Util;->b:[B

    iput-object p7, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->o:[B

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->u:J

    invoke-interface {p5}, Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;->a()Landroidx/media3/datasource/DataSource;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->b:Landroidx/media3/datasource/DataSource;

    if-eqz p6, :cond_0

    invoke-interface {p1, p6}, Landroidx/media3/datasource/DataSource;->c(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    invoke-interface {p5}, Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;->a()Landroidx/media3/datasource/DataSource;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->c:Landroidx/media3/datasource/DataSource;

    new-instance p1, Landroidx/media3/common/TrackGroup;

    invoke-direct {p1, p4}, Landroidx/media3/common/TrackGroup;-><init>([Landroidx/media3/common/Format;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->h:Landroidx/media3/common/TrackGroup;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    :goto_0
    array-length p5, p3

    if-ge p2, p5, :cond_2

    aget-object p5, p4, p2

    iget p5, p5, Landroidx/media3/common/Format;->f:I

    and-int/lit16 p5, p5, 0x4000

    if-nez p5, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-instance p2, Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object p3, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->h:Landroidx/media3/common/TrackGroup;

    invoke-static {p1}, Lcom/google/common/primitives/Ints;->g(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    return-void
.end method

.method public static f(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .locals 7

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->s:Lcom/google/common/collect/ImmutableList;

    sub-long v0, p1, v0

    long-to-int v0, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v1, :cond_1

    if-eq p3, v4, :cond_0

    goto :goto_0

    :cond_0
    move p3, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ge p3, p0, :cond_5

    new-instance p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    return-object p0

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    if-ne p3, v4, :cond_2

    new-instance p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    invoke-direct {p0, v1, p1, p2, v4}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    return-object p0

    :cond_2
    iget-object v5, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->n:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p3, v5, :cond_3

    new-instance p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->n:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    return-object p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    const-wide/16 v5, 0x1

    if-ge v0, p3, :cond_4

    new-instance p3, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    add-long/2addr p1, v5

    invoke-direct {p3, p0, p1, p2, v4}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    return-object p3

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    new-instance p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    add-long/2addr p1, v5

    invoke-direct {p0, p3, p1, p2, v3}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->p(Landroid/net/Uri;)Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->s(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-interface {v2, v5, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->a(Landroid/net/Uri;J)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result p1

    new-instance v2, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->d(J)I

    move-result p0

    invoke-direct {v2, v3, v4, p1, p0}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    return-object v2
.end method

.method public final b(Landroidx/media3/exoplayer/hls/HlsMediaChunk;J)[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    const/4 v9, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->h:Landroidx/media3/common/TrackGroup;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    invoke-virtual {v2, v3}, Landroidx/media3/common/TrackGroup;->b(Landroidx/media3/common/Format;)I

    move-result v2

    move v9, v2

    :goto_0
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v10

    new-array v11, v10, [Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v10, :cond_b

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v2, v13}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->f(I)I

    move-result v2

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e:[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->c()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v4, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->i(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v2, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->a:Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    aput-object v2, v11, v13

    const/4 v14, -0x1

    goto/16 :goto_7

    :cond_1
    invoke-interface {v4, v3, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->r(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->h:J

    invoke-interface {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->f()J

    move-result-wide v14

    sub-long v4, v5, v14

    if-eq v2, v9, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-wide/from16 v6, p2

    goto :goto_3

    :cond_2
    move v2, v12

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e(Landroidx/media3/exoplayer/hls/HlsMediaChunk;ZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v6, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;

    iget-object v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->a:Ljava/lang/String;

    iget-wide v14, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    iget-object v12, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->s:Lcom/google/common/collect/ImmutableList;

    iget-object v8, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    sub-long/2addr v0, v14

    long-to-int v0, v0

    if-ltz v0, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_4

    :cond_3
    const/4 v14, -0x1

    goto :goto_5

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v0, v14, :cond_8

    const/4 v14, -0x1

    if-eq v2, v14, :cond_7

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    if-nez v2, :cond_5

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    iget-object v15, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->n:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v2, v15, :cond_6

    iget-object v14, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->n:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface {v14, v2, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v8, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    :cond_8
    iget-wide v14, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->n:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v14, v16

    const/4 v14, -0x1

    if-eqz v0, :cond_a

    if-ne v2, v14, :cond_9

    const/4 v2, 0x0

    :cond_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v12, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :goto_5
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_6
    invoke-direct {v6, v7, v4, v5, v0}, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;-><init>(Ljava/lang/String;JLjava/util/List;)V

    aput-object v6, v11, v13

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_b
    return-object v11
.end method

.method public final c(Landroidx/media3/exoplayer/hls/HlsMediaChunk;)I
    .locals 8

    iget v0, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v2, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->m:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->r(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    iget-wide v4, p1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->j:J

    iget-wide v6, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    if-gez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v2, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->n:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->s:Lcom/google/common/collect/ImmutableList;

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->n:Z

    if-eqz v2, :cond_4

    return v3

    :cond_4
    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->a:Ljava/lang/String;

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/common/util/UriUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->b:Landroidx/media3/datasource/DataSpec;

    iget-object p1, p1, Landroidx/media3/datasource/DataSpec;->a:Landroid/net/Uri;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->l:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    if-eqz p0, :cond_7

    sget-object p0, Landroidx/media3/exoplayer/upstream/CmcdData;->f:Lcom/google/common/base/Joiner;

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "CMCD"

    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    move-object p1, p0

    :cond_7
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_3
    const/4 p0, 0x2

    return p0
.end method

.method public final d(J)I
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->f(I)I

    move-result v4

    invoke-interface {v0, v2, p1, p2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->b(IJ)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e:[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    aget-object v4, v5, v4

    iget-object v5, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v5, v4, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->o(Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;J)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final e(Landroidx/media3/exoplayer/hls/HlsMediaChunk;ZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v5, 0x1

    const/4 v7, 0x1

    if-eqz v1, :cond_5

    iget-wide v8, v1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->j:J

    iget v10, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->o:I

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->I:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/util/Pair;

    if-ne v10, v3, :cond_2

    const-wide/16 v1, -0x1

    cmp-long v4, v8, v1

    if-eqz v4, :cond_1

    add-long/2addr v8, v5

    goto :goto_0

    :cond_1
    move-wide v8, v1

    :cond_2
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-ne v10, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v10, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_4
    new-instance v0, Landroid/util/Pair;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_5
    :goto_2
    iget-wide v8, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->u:J

    iget-wide v10, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    iget-object v12, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->s:Lcom/google/common/collect/ImmutableList;

    iget-object v13, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    add-long v8, p4, v8

    if-eqz v1, :cond_7

    iget-boolean v14, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->s:Z

    if-eqz v14, :cond_6

    goto :goto_3

    :cond_6
    iget-wide v14, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    goto :goto_4

    :cond_7
    :goto_3
    move-wide/from16 v14, p6

    :goto_4
    iget-boolean v2, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    if-nez v2, :cond_8

    cmp-long v2, v14, v8

    if-ltz v2, :cond_8

    new-instance v0, Landroid/util/Pair;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_8
    sub-long v14, v14, p4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->m()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    move v7, v9

    :cond_a
    :goto_5
    invoke-static {v13, v2, v7}, Landroidx/media3/common/util/Util;->d(Ljava/util/List;Ljava/lang/Long;Z)I

    move-result v1

    int-to-long v7, v1

    add-long/2addr v7, v10

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->m()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_b
    if-ltz v1, :cond_f

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->f:J

    iget-wide v10, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->d:J

    add-long/2addr v1, v10

    cmp-long v1, v14, v1

    if-gez v1, :cond_c

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->n:Lcom/google/common/collect/ImmutableList;

    goto :goto_6

    :cond_c
    move-object v0, v12

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_f

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    iget-wide v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->f:J

    iget-wide v3, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->d:J

    add-long/2addr v10, v3

    cmp-long v3, v14, v10

    if-gez v3, :cond_e

    iget-boolean v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->m:Z

    if-eqz v1, :cond_f

    if-ne v0, v12, :cond_d

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    const-wide/16 v5, 0x0

    :goto_7
    add-long/2addr v7, v5

    move v3, v9

    goto :goto_8

    :cond_e
    add-int/lit8 v9, v9, 0x1

    const/4 v3, -0x1

    goto :goto_6

    :cond_f
    const/4 v3, -0x1

    :goto_8
    new-instance v0, Landroid/util/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final g(Landroid/net/Uri;IZLandroidx/media3/exoplayer/upstream/CmcdData$Factory;)Landroidx/media3/exoplayer/source/chunk/Chunk;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->j:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    iget-object v2, v1, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_1

    iget-object p0, v1, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object v0

    :cond_1
    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    iput-object p1, v0, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    const/4 p1, 0x1

    iput p1, v0, Landroidx/media3/datasource/DataSpec$Builder;->i:I

    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    const-string p3, "i"

    iput-object p3, p4, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->j:Ljava/lang/String;

    :cond_2
    invoke-virtual {p4}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->a()Landroidx/media3/exoplayer/upstream/CmcdData;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/upstream/CmcdData;->a(Landroidx/media3/datasource/DataSpec;)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    :cond_3
    move-object v2, p1

    new-instance v0, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->f:[Landroidx/media3/common/Format;

    aget-object v3, p1, p2

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->t()I

    move-result v4

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->j()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->o:[B

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->c:Landroidx/media3/datasource/DataSource;

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;[B)V

    return-object v0
.end method
