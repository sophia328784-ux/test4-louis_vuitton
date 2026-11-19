.class public abstract Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;
.super Landroidx/media3/exoplayer/trackselection/TrackSelector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method

.method public final f([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Landroidx/media3/common/TrackGroup;

    array-length v6, v0

    add-int/2addr v6, v3

    new-array v11, v6, [[[I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_0

    iget v8, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    new-array v9, v8, [Landroidx/media3/common/TrackGroup;

    aput-object v9, v5, v7

    new-array v8, v8, [[I

    aput-object v8, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    array-length v4, v0

    new-array v10, v4, [I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_1

    aget-object v8, v0, v7

    invoke-interface {v8}, Landroidx/media3/exoplayer/RendererCapabilities;->F()I

    move-result v8

    aput v8, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iget v7, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    if-ge v4, v7, :cond_a

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v7

    iget v8, v7, Landroidx/media3/common/TrackGroup;->c:I

    iget-object v9, v7, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    iget v12, v7, Landroidx/media3/common/TrackGroup;->a:I

    const/4 v13, 0x5

    if-ne v8, v13, :cond_2

    move v8, v3

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    array-length v13, v0

    move/from16 v16, v3

    move/from16 v17, v16

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    array-length v3, v0

    if-ge v14, v3, :cond_7

    aget-object v3, v0, v14

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v12, :cond_3

    move-object/from16 v18, v2

    aget-object v2, v9, v6

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/RendererCapabilities;->b(Landroidx/media3/common/Format;)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v18

    goto :goto_5

    :cond_3
    move-object/from16 v18, v2

    aget v2, v18, v14

    if-nez v2, :cond_4

    move/from16 v2, v17

    goto :goto_6

    :cond_4
    const/4 v2, 0x0

    :goto_6
    if-gt v1, v15, :cond_5

    if-ne v1, v15, :cond_6

    if-eqz v8, :cond_6

    if-nez v16, :cond_6

    if-eqz v2, :cond_6

    :cond_5
    move v15, v1

    move/from16 v16, v2

    move v13, v14

    :cond_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    goto :goto_4

    :cond_7
    move-object/from16 v18, v2

    array-length v1, v0

    if-ne v13, v1, :cond_8

    new-array v1, v12, [I

    goto :goto_8

    :cond_8
    aget-object v1, v0, v13

    new-array v2, v12, [I

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v12, :cond_9

    aget-object v6, v9, v3

    invoke-interface {v1, v6}, Landroidx/media3/exoplayer/RendererCapabilities;->b(Landroidx/media3/common/Format;)I

    move-result v6

    aput v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    move-object v1, v2

    :goto_8
    aget v2, v18, v13

    aget-object v3, v5, v13

    aput-object v7, v3, v2

    aget-object v3, v11, v13

    aput-object v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v18, v13

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    move/from16 v3, v17

    move-object/from16 v2, v18

    goto/16 :goto_2

    :cond_a
    move-object/from16 v18, v2

    move/from16 v17, v3

    array-length v1, v0

    new-array v9, v1, [Landroidx/media3/exoplayer/source/TrackGroupArray;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    array-length v2, v0

    new-array v8, v2, [I

    const/4 v2, 0x0

    :goto_9
    array-length v3, v0

    if-ge v2, v3, :cond_b

    aget v3, v18, v2

    new-instance v4, Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v6, v5, v2

    invoke-static {v3, v6}, Landroidx/media3/common/util/Util;->T(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v4, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    aput-object v4, v9, v2

    aget-object v4, v11, v2

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->T(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    aput-object v3, v11, v2

    aget-object v3, v0, v2

    invoke-interface {v3}, Landroidx/media3/exoplayer/RendererCapabilities;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aget-object v3, v0, v2

    invoke-interface {v3}, Landroidx/media3/exoplayer/RendererCapabilities;->f()I

    move-result v3

    aput v3, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_b
    array-length v1, v0

    aget v1, v18, v1

    new-instance v12, Landroidx/media3/exoplayer/source/TrackGroupArray;

    array-length v0, v0

    aget-object v0, v5, v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->T(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v12, v0}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    new-instance v7, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-direct/range {v7 .. v12}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Landroidx/media3/exoplayer/source/TrackGroupArray;[I[[[ILandroidx/media3/exoplayer/source/TrackGroupArray;)V

    move-object/from16 v12, p4

    move-object v8, v7

    move-object v9, v11

    move-object/from16 v7, p0

    move-object/from16 v11, p3

    invoke-virtual/range {v7 .. v12}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->i(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v0

    move-object v7, v8

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Landroidx/media3/exoplayer/trackselection/TrackSelection;

    array-length v2, v1

    new-array v3, v2, [Ljava/util/List;

    const/4 v4, 0x0

    :goto_a
    array-length v5, v1

    if-ge v4, v5, :cond_d

    aget-object v5, v1, v4

    if-eqz v5, :cond_c

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    goto :goto_b

    :cond_c
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    :goto_b
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_d
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v4, 0x0

    :goto_c
    iget v5, v7, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    if-ge v4, v5, :cond_19

    iget-object v5, v7, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->c:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v6, v5, v4

    const/4 v8, 0x0

    :goto_d
    iget v9, v6, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    if-ge v8, v9, :cond_18

    invoke-virtual {v6, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    aget-object v10, v5, v4

    invoke-virtual {v10, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v10

    iget v10, v10, Landroidx/media3/common/TrackGroup;->a:I

    new-array v11, v10, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_e
    iget-object v14, v7, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->e:[[[I

    if-ge v12, v10, :cond_f

    aget-object v14, v14, v4

    aget-object v14, v14, v8

    aget v14, v14, v12

    and-int/lit8 v14, v14, 0x7

    const/4 v15, 0x4

    if-eq v14, v15, :cond_e

    goto :goto_f

    :cond_e
    add-int/lit8 v14, v13, 0x1

    aput v12, v11, v13

    move v13, v14

    :goto_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_f
    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    const/16 v11, 0x10

    const/4 v12, 0x0

    move-object/from16 v18, v3

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_10
    array-length v3, v10

    if-ge v13, v3, :cond_11

    aget v3, v10, v13

    move/from16 p0, v3

    aget-object v3, v5, v4

    invoke-virtual {v3, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v3, v3, p0

    iget-object v3, v3, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    add-int/lit8 v19, v16, 0x1

    if-nez v16, :cond_10

    move-object v12, v3

    goto :goto_11

    :cond_10
    invoke-static {v12, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v15, v3

    :goto_11
    aget-object v3, v14, v4

    aget-object v3, v3, v8

    aget v3, v3, v13

    and-int/lit8 v3, v3, 0x18

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v19

    goto :goto_10

    :cond_11
    if-eqz v15, :cond_12

    iget-object v3, v7, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->d:[I

    aget v3, v3, v4

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_12
    if-eqz v11, :cond_13

    move/from16 v3, v17

    goto :goto_12

    :cond_13
    const/4 v3, 0x0

    :goto_12
    iget v10, v9, Landroidx/media3/common/TrackGroup;->a:I

    new-array v11, v10, [I

    new-array v10, v10, [Z

    const/4 v12, 0x0

    :goto_13
    iget v13, v9, Landroidx/media3/common/TrackGroup;->a:I

    if-ge v12, v13, :cond_17

    aget-object v13, v14, v4

    aget-object v13, v13, v8

    aget v13, v13, v12

    and-int/lit8 v13, v13, 0x7

    aput v13, v11, v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_14
    if-ge v13, v2, :cond_16

    move/from16 v16, v2

    aget-object v2, v18, v13

    move/from16 v19, v4

    move-object/from16 p0, v5

    const/4 v4, 0x0

    :goto_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_15

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/trackselection/TrackSelection;

    move-object/from16 p1, v2

    invoke-interface {v5}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->m()Landroidx/media3/common/TrackGroup;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v5, v12}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->l(I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_14

    move/from16 v15, v17

    goto :goto_16

    :cond_14
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    goto :goto_15

    :cond_15
    :goto_16
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, p0

    move/from16 v2, v16

    move/from16 v4, v19

    goto :goto_14

    :cond_16
    move/from16 v16, v2

    move/from16 v19, v4

    move-object/from16 p0, v5

    aput-boolean v15, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    :cond_17
    move/from16 v16, v2

    move/from16 v19, v4

    move-object/from16 p0, v5

    new-instance v2, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v2, v9, v3, v11, v10}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v18

    goto/16 :goto_d

    :cond_18
    move/from16 v16, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v19, 0x1

    goto/16 :goto_c

    :cond_19
    const/4 v2, 0x0

    :goto_17
    iget-object v3, v7, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->f:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget v4, v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    if-ge v2, v4, :cond_1a

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v3

    iget v4, v3, Landroidx/media3/common/TrackGroup;->a:I

    new-array v4, v4, [I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    iget v6, v3, Landroidx/media3/common/TrackGroup;->a:I

    new-array v6, v6, [Z

    new-instance v8, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v8, v3, v5, v4, v6}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v8}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_1a
    new-instance v2, Landroidx/media3/common/Tracks;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    new-instance v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [Landroidx/media3/exoplayer/RendererConfiguration;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-direct {v1, v3, v0, v2, v7}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    return-object v1
.end method

.method public abstract i(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroid/util/Pair;
.end method
