.class final Landroidx/media3/exoplayer/MediaPeriodHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MediaPeriodHolder$Factory;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/MediaPeriod;

.field public final b:Ljava/lang/Object;

.field public final c:[Landroidx/media3/exoplayer/source/SampleStream;

.field public final d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Landroidx/media3/exoplayer/MediaPeriodInfo;

.field public i:Z

.field public final j:[Z

.field public final k:[Landroidx/media3/exoplayer/RendererCapabilities;

.field public final l:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field public final m:Landroidx/media3/exoplayer/MediaSourceList;

.field public n:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public o:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field public p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public q:J


# direct methods
.method public constructor <init>([Landroidx/media3/exoplayer/RendererCapabilities;JLandroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;J)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->k:[Landroidx/media3/exoplayer/RendererCapabilities;

    iput-wide p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    iput-object p4, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->l:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iput-object p6, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p2, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p3, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-wide/from16 p3, p9

    iput-wide p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->d:J

    sget-object p3, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object p8, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    array-length p3, p1

    new-array p3, p3, [Landroidx/media3/exoplayer/source/SampleStream;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->j:[Z

    iget-wide p3, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iget-wide v5, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    iget-boolean p1, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->g:Z

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    sget v2, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->h:I

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p2

    iget-object v1, p6, Landroidx/media3/exoplayer/MediaSourceList;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p6, Landroidx/media3/exoplayer/MediaSourceList;->g:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p6, Landroidx/media3/exoplayer/MediaSourceList;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/source/MediaSource;->j(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    :cond_0
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v2, p2, p5, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->G(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    move-result-object p2

    iget-object p3, p6, Landroidx/media3/exoplayer/MediaSourceList;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6}, Landroidx/media3/exoplayer/MediaSourceList;->c()V

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v5, p3

    if-eqz p3, :cond_1

    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    xor-int/lit8 v2, p1, 0x1

    const-wide/16 v3, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V

    move-object p2, v0

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    if-nez p4, :cond_0

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {v1, v4, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->j:[Z

    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_2
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->k:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v6, v4

    const/4 v7, -0x2

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    if-ge v3, v6, :cond_3

    aget-object v4, v4, v3

    invoke-interface {v4}, Landroidx/media3/exoplayer/RendererCapabilities;->f()I

    move-result v4

    if-ne v4, v7, :cond_2

    const/4 v4, 0x0

    aput-object v4, v8, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->b()V

    iput-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->c()V

    iget-object v10, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v11, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->j:[Z

    iget-object v12, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    iget-object v9, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    move-wide/from16 v14, p2

    move-object/from16 v13, p5

    invoke-interface/range {v9 .. v15}, Landroidx/media3/exoplayer/source/MediaPeriod;->f([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v9

    move v3, v2

    :goto_3
    array-length v6, v4

    if-ge v3, v6, :cond_5

    aget-object v6, v4, v3

    invoke-interface {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->f()I

    move-result v6

    if-ne v6, v7, :cond_4

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {v6, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Landroidx/media3/exoplayer/source/EmptySampleStream;

    invoke-direct {v6}, Landroidx/media3/exoplayer/source/EmptySampleStream;-><init>()V

    aput-object v6, v8, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iput-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Z

    move v3, v2

    :goto_4
    array-length v6, v8

    if-ge v3, v6, :cond_9

    aget-object v6, v8, v3

    if-eqz v6, :cond_6

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->q(Z)V

    aget-object v6, v4, v3

    invoke-interface {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->f()I

    move-result v6

    if-eq v6, v7, :cond_8

    iput-boolean v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Z

    goto :goto_6

    :cond_6
    iget-object v6, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v6, v6, v3

    if-nez v6, :cond_7

    move v6, v5

    goto :goto_5

    :cond_7
    move v6, v2

    :goto_5
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->q(Z)V

    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    return-wide v9
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->c()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->p()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d()J
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->s()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final e()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final f(FLandroidx/media3/common/Timeline;Z)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->p()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j(FLandroidx/media3/common/Timeline;Z)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v2

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide p2, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iget-wide v0, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_0
    move-wide v3, p2

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->k:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length p1, p1

    new-array v6, p1, [Z

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide p0

    iget-wide p2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    iget-object v0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    sub-long/2addr v2, p0

    add-long/2addr v2, p2

    iput-wide v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->q:J

    iget-wide p2, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->c:J

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodInfo;->b(JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    iput-object p0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    return-void
.end method

.method public final g()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->s()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final h()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->d()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->d:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->b()V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    :try_start_0
    instance-of v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaSourceList;

    if-eqz v1, :cond_0

    :try_start_1
    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->b:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaSourceList;->f(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaSourceList;->f(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Period release failed."

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j(FLandroidx/media3/common/Timeline;Z)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->l:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->k:[Landroidx/media3/exoplayer/RendererCapabilities;

    invoke-virtual {v2, p0, v0, v1, p2}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->f([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a:I

    iget-object v3, p2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    aget-object v2, v3, v1

    if-nez v2, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->f()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    :cond_1
    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->q(Z)V

    goto :goto_3

    :cond_2
    aget-object v2, v3, v1

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->q(Z)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    array-length p0, v3

    :goto_4
    if-ge v0, p0, :cond_6

    aget-object v1, v3, v0

    if-eqz v1, :cond_5

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->i(F)V

    invoke-interface {v1, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->o(Z)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    return-object p2
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MediaPeriod;

    instance-of v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    :cond_0
    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->r(JJ)V

    :cond_1
    return-void
.end method
