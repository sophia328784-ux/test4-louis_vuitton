.class final Landroidx/media3/exoplayer/hls/HlsSampleStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field public c:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->a:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->c:I

    const/4 v1, -0x2

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    if-eq v0, v1, :cond_3

    const/4 p0, -0x1

    if-ne v0, p0, :cond_0

    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->H()V

    return-void

    :cond_0
    const/4 p0, -0x3

    if-eq v0, p0, :cond_2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->H()V

    iget-object p0, v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object p0, p0, v0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSession;->a()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p0

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Landroidx/media3/exoplayer/hls/SampleQueueMappingException;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x()V

    iget-object v1, v2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->a:I

    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object p0

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object p0, p0, v1

    iget-object p0, p0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(J)I
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStream;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->c:I

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v1, v1, v0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V:Z

    invoke-virtual {v1, p1, p2, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->s(JZ)I

    move-result p1

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    invoke-static {p2, p0}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    move-object p0, p2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    :goto_1
    check-cast p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->f()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SampleQueue;->q()I

    move-result p2

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->e(I)I

    move-result p0

    sub-int/2addr p0, p2

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_5
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->D(I)V

    return p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->c:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_0

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroidx/media3/decoder/Buffer;->e(I)V

    const/4 v0, -0x4

    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsSampleStream;->e()Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, v0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->c:I

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_8

    move v6, v7

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v6, v8, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget v8, v8, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->k:I

    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v9, v9

    move v10, v7

    :goto_1
    if-ge v10, v9, :cond_3

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->O:[Z

    aget-boolean v11, v11, v10

    if-eqz v11, :cond_2

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/SampleQueue;->x()J

    move-result-wide v11

    int-to-long v13, v8

    cmp-long v11, v11, v13

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v6, v8, :cond_7

    if-ltz v6, :cond_7

    if-eqz v6, :cond_5

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_5
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget-object v11, v6, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->H:Landroidx/media3/common/Format;

    invoke-virtual {v11, v8}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->l:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v10, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->c:I

    iget v12, v6, Landroidx/media3/exoplayer/source/chunk/Chunk;->e:I

    iget-object v13, v6, Landroidx/media3/exoplayer/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v14, v6, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v8

    new-instance v8, Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-static {v14, v15}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v14

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x1

    invoke-direct/range {v8 .. v17}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    new-instance v9, Lp3;

    const/16 v10, 0x11

    invoke-direct {v9, v6, v8, v10}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v9}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    :cond_6
    iput-object v11, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->H:Landroidx/media3/common/Format;

    goto :goto_3

    :cond_7
    invoke-static {}, Lct0;->c()V

    return v7

    :cond_8
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->f()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v4, v4, v3

    iget-boolean v6, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V:Z

    move/from16 v8, p3

    invoke-virtual {v4, v1, v2, v8, v6}, Landroidx/media3/exoplayer/source/SampleQueue;->y(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result v2

    const/4 v4, -0x5

    if-ne v2, v4, :cond_d

    iget-object v4, v1, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->C:I

    if-ne v3, v6, :cond_c

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v3, v6, v3

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/SampleQueue;->x()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v3

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v7, v6, :cond_a

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget v6, v6, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->k:I

    if-eq v6, v3, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v7, v3, :cond_b

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    goto :goto_5

    :cond_b
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->G:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    invoke-virtual {v4, v0}, Landroidx/media3/common/Format;->d(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v4

    :cond_c
    iput-object v4, v1, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    :cond_d
    return v2

    :cond_e
    :goto_6
    return v4
.end method

.method public final d()V
    .locals 6

    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->c:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x()V

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->L:[I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->L:[I

    iget v4, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->a:I

    aget v3, v3, v4

    const/4 v5, -0x2

    if-ne v3, v2, :cond_2

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->K:Ljava/util/Set;

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, -0x3

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v5

    goto :goto_2

    :cond_2
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->O:[Z

    aget-boolean v2, v0, v3

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    aput-boolean v1, v0, v3

    :goto_2
    iput v3, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->c:I

    return-void
.end method

.method public final e()Z
    .locals 1

    iget p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->c:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, -0x3

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isReady()Z
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->c:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStream;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->c:I

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStream;->b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v0, v1, v0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V:Z

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/SampleQueue;->u(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
