.class public Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;
.super Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;,
        Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation


# instance fields
.field public final g:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:I

.field public final l:I

.field public final m:F

.field public final n:F

.field public final o:Lcom/google/common/collect/ImmutableList;

.field public final p:Landroidx/media3/common/util/Clock;

.field public q:F

.field public r:I

.field public s:I

.field public t:J

.field public u:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

.field public v:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;JJJIIFFLcom/google/common/collect/ImmutableList;Landroidx/media3/common/util/Clock;)V
    .locals 0

    invoke-direct/range {p0 .. p3}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[II)V

    cmp-long p1, p9, p5

    if-gez p1, :cond_0

    const-string p1, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    invoke-static {p1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    move-wide p1, p5

    goto :goto_0

    :cond_0
    move-wide p1, p9

    :goto_0
    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->g:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    const-wide/16 p3, 0x3e8

    mul-long/2addr p5, p3

    iput-wide p5, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->h:J

    mul-long/2addr p7, p3

    iput-wide p7, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->i:J

    mul-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->j:J

    iput p11, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->k:I

    iput p12, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->l:I

    iput p13, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->m:F

    iput p14, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->n:F

    invoke-static {p15}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->o:Lcom/google/common/collect/ImmutableList;

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->p:Landroidx/media3/common/util/Clock;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->q:F

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->s:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->t:J

    const-wide/32 p1, -0x7fffffff

    iput-wide p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->v:J

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;[ILandroidx/media3/exoplayer/upstream/BandwidthMeter;)V
    .locals 17

    .line 66
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    sget-object v16, Landroidx/media3/common/util/Clock;->a:Landroidx/media3/common/util/SystemClock;

    const/4 v3, 0x0

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x61a8

    const-wide/16 v9, 0x61a8

    const/16 v11, 0x4ff

    const/16 v12, 0x2cf

    const v13, 0x3f333333    # 0.7f

    const/high16 v14, 0x3f400000    # 0.75f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    .line 67
    invoke-direct/range {v0 .. v16}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;JJJIIFFLcom/google/common/collect/ImmutableList;Landroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public static v(Ljava/util/ArrayList;[J)V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    aget-wide v4, p1, v3

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    aget-wide v5, p1, v2

    invoke-direct {v4, v0, v1, v5, v6}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static x(Ljava/util/List;)J
    .locals 7

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->h:J

    cmp-long p0, v5, v1

    if-eqz p0, :cond_1

    sub-long/2addr v5, v3

    return-wide v5

    :cond_1
    :goto_0
    return-wide v1
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->v:J

    return-wide v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->u:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    return-void
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->r:I

    return p0
.end method

.method public final g(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .locals 10

    move-object/from16 p1, p8

    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->p:Landroidx/media3/common/util/Clock;

    invoke-interface {p2}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v0

    iget p2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->r:I

    array-length v2, p1

    const/4 v3, 0x0

    if-ge p2, v2, :cond_0

    aget-object p2, p1, p2

    invoke-interface {p2}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->next()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->r:I

    aget-object p1, p1, p2

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->b()J

    move-result-wide v4

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->a()J

    move-result-wide p1

    sub-long/2addr v4, p1

    goto :goto_1

    :cond_0
    array-length p2, p1

    move v2, v3

    :goto_0
    if-ge v2, p2, :cond_2

    aget-object v4, p1, v2

    invoke-interface {v4}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->b()J

    move-result-wide p1

    invoke-interface {v4}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->a()J

    move-result-wide v4

    sub-long v4, p1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static/range {p7 .. p7}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->x(Ljava/util/List;)J

    move-result-wide v4

    :goto_1
    iget p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->s:I

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->s:I

    invoke-virtual {p0, v0, v1, v4, v5}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->w(JJ)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->r:I

    return-void

    :cond_3
    iget p2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->r:I

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    iget-object v6, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    const/4 v7, -0x1

    if-eqz v2, :cond_5

    :cond_4
    move v3, v7

    goto :goto_3

    :cond_5
    invoke-static/range {p7 .. p7}, Lcom/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    :goto_2
    iget v8, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->b:I

    if-ge v3, v8, :cond_4

    aget-object v8, v6, v3

    if-ne v8, v2, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :goto_3
    if-eq v3, v7, :cond_7

    invoke-static/range {p7 .. p7}, Lcom/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    iget p1, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->e:I

    move p2, v3

    :cond_7
    invoke-virtual {p0, v0, v1, v4, v5}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->w(JJ)I

    move-result v2

    if-eq v2, p2, :cond_b

    invoke-virtual {p0, p2, v0, v1}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->b(IJ)Z

    move-result v0

    if-nez v0, :cond_b

    aget-object v0, v6, p2

    aget-object v1, v6, v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p5, v6

    iget-wide v8, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->h:J

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    cmp-long v3, v4, v6

    if-eqz v3, :cond_9

    sub-long v3, p5, v4

    goto :goto_4

    :cond_9
    move-wide v3, p5

    :goto_4
    long-to-float v3, v3

    iget v4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->n:F

    mul-float/2addr v3, v4

    float-to-long v3, v3

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :goto_5
    iget v1, v1, Landroidx/media3/common/Format;->j:I

    iget v0, v0, Landroidx/media3/common/Format;->j:I

    if-le v1, v0, :cond_a

    cmp-long v3, p3, v8

    if-gez v3, :cond_a

    goto :goto_6

    :cond_a
    if-ge v1, v0, :cond_b

    iget-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->i:J

    cmp-long v0, p3, v0

    if-ltz v0, :cond_b

    :goto_6
    move v2, p2

    :cond_b
    if-ne v2, p2, :cond_c

    goto :goto_7

    :cond_c
    const/4 p1, 0x3

    :goto_7
    iput p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->s:I

    iput v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->r:I

    return-void
.end method

.method public final i(F)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->q:F

    return-void
.end method

.method public final j()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final p()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->t:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->u:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    return-void
.end method

.method public final q(JLjava/util/List;)I
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->p:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->b()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->t:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Lcom/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->u:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->t:J

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    :goto_1
    iput-object v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->u:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    return v3

    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    iget-wide v4, v4, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    sub-long/2addr v4, p1

    iget v6, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->q:F

    invoke-static {v6, v4, v5}, Landroidx/media3/common/util/Util;->D(FJ)J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->j:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p3}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->x(Ljava/util/List;)J

    move-result-wide v4

    invoke-virtual {p0, v0, v1, v4, v5}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->w(JJ)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    aget-object v0, v1, v0

    :goto_2
    if-ge v3, v2, :cond_6

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    iget-object v4, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    iget-wide v8, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    sub-long/2addr v8, p1

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->q:F

    invoke-static {v1, v8, v9}, Landroidx/media3/common/util/Util;->D(FJ)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-ltz v1, :cond_5

    iget v1, v4, Landroidx/media3/common/Format;->j:I

    iget v5, v0, Landroidx/media3/common/Format;->j:I

    if-ge v1, v5, :cond_5

    iget v1, v4, Landroidx/media3/common/Format;->w:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_5

    iget v8, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->l:I

    if-gt v1, v8, :cond_5

    iget v4, v4, Landroidx/media3/common/Format;->v:I

    if-eq v4, v5, :cond_5

    iget v5, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->k:I

    if-gt v4, v5, :cond_5

    iget v4, v0, Landroidx/media3/common/Format;->w:I

    if-ge v1, v4, :cond_5

    return v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return v2
.end method

.method public final t()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->s:I

    return p0
.end method

.method public final w(JJ)I
    .locals 6

    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->g:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-interface {p3}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->e()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->v:J

    long-to-float p3, p3

    iget p4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->m:F

    mul-float/2addr p3, p4

    float-to-long p3, p3

    long-to-float p3, p3

    iget p4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->q:F

    div-float/2addr p3, p4

    float-to-long p3, p3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->o:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    iget-wide v3, v3, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->a:J

    cmp-long v3, v3, p3

    if-gez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    iget-wide v2, v1, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->a:J

    sub-long/2addr p3, v2

    long-to-float p3, p3

    iget-wide v4, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->a:J

    sub-long/2addr v4, v2

    long-to-float p4, v4

    div-float/2addr p3, p4

    iget-wide v1, v1, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->b:J

    iget-wide v3, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->b:J

    sub-long/2addr v3, v1

    long-to-float p4, v3

    mul-float/2addr p3, p4

    float-to-long p3, p3

    add-long/2addr p3, v1

    :goto_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->b:I

    if-ge v0, v2, :cond_5

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->b(IJ)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    aget-object v1, v1, v0

    iget v1, v1, Landroidx/media3/common/Format;->j:I

    int-to-long v1, v1

    cmp-long v1, v1, p3

    if-gtz v1, :cond_3

    return v0

    :cond_3
    move v1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return v1
.end method
