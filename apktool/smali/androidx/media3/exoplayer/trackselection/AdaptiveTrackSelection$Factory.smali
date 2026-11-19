.class public Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:F

.field public final h:Landroidx/media3/common/util/Clock;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x61a8

    const v1, 0x3f333333    # 0.7f

    const/16 v2, 0x2710

    .line 23
    invoke-direct {p0, v2, v0, v0, v1}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 9

    const/high16 v7, 0x3f400000    # 0.75f

    .line 20
    sget-object v8, Landroidx/media3/common/util/Clock;->a:Landroidx/media3/common/util/SystemClock;

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLandroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIFFLandroidx/media3/common/util/Clock;)V
    .locals 9

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 22
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLandroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIIIF)V
    .locals 9

    const/high16 v7, 0x3f400000    # 0.75f

    .line 21
    sget-object v8, Landroidx/media3/common/util/Clock;->a:Landroidx/media3/common/util/SystemClock;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLandroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIIIFFLandroidx/media3/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->a:I

    iput p2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->b:I

    iput p3, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->c:I

    iput p4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->d:I

    iput p5, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->e:I

    iput p6, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->f:F

    iput p7, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->g:F

    iput-object p8, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->h:Landroidx/media3/common/util/Clock;

    return-void
.end method


# virtual methods
.method public final a([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-ge v4, v5, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    iget-object v5, v5, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->b:[I

    array-length v5, v5

    if-le v5, v6, :cond_0

    sget-object v5, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v5, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    new-instance v6, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    invoke-direct {v6, v7, v8, v7, v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length v4, v1

    new-array v5, v4, [[J

    move v9, v3

    :goto_2
    array-length v10, v1

    const-wide/16 v11, -0x1

    if-ge v9, v10, :cond_5

    aget-object v10, v1, v9

    if-nez v10, :cond_2

    new-array v10, v3, [J

    aput-object v10, v5, v9

    goto :goto_4

    :cond_2
    iget-object v13, v10, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->b:[I

    array-length v14, v13

    new-array v14, v14, [J

    aput-object v14, v5, v9

    move v14, v3

    :goto_3
    array-length v15, v13

    if-ge v14, v15, :cond_4

    iget-object v15, v10, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->a:Landroidx/media3/common/TrackGroup;

    aget v16, v13, v14

    iget-object v15, v15, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v15, v15, v16

    iget v15, v15, Landroidx/media3/common/Format;->j:I

    int-to-long v7, v15

    aget-object v15, v5, v9

    cmp-long v18, v7, v11

    if-nez v18, :cond_3

    const-wide/16 v7, 0x0

    :cond_3
    aput-wide v7, v15, v14

    add-int/lit8 v14, v14, 0x1

    const-wide/16 v7, 0x0

    goto :goto_3

    :cond_4
    aget-object v7, v5, v9

    invoke-static {v7}, Ljava/util/Arrays;->sort([J)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v7, 0x0

    goto :goto_2

    :cond_5
    new-array v7, v4, [I

    new-array v8, v4, [J

    move v9, v3

    :goto_5
    if-ge v9, v4, :cond_7

    aget-object v10, v5, v9

    array-length v13, v10

    if-nez v13, :cond_6

    const-wide/16 v13, 0x0

    goto :goto_6

    :cond_6
    aget-wide v13, v10, v3

    :goto_6
    aput-wide v13, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    invoke-static {v2, v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->v(Ljava/util/ArrayList;[J)V

    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->b()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->a()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->c()Lcom/google/common/collect/ListMultimap;

    move-result-object v9

    move v10, v3

    :goto_7
    if-ge v10, v4, :cond_d

    aget-object v13, v5, v10

    array-length v14, v13

    if-gt v14, v6, :cond_9

    move/from16 v16, v3

    move-wide/from16 v17, v11

    :cond_8
    move/from16 v21, v6

    goto :goto_c

    :cond_9
    array-length v13, v13

    new-array v14, v13, [D

    move v15, v3

    move/from16 v16, v15

    :goto_8
    aget-object v3, v5, v10

    move-wide/from16 v17, v11

    array-length v11, v3

    const-wide/16 v19, 0x0

    if-ge v15, v11, :cond_b

    aget-wide v11, v3, v15

    cmp-long v3, v11, v17

    if-nez v3, :cond_a

    goto :goto_9

    :cond_a
    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v19

    :goto_9
    aput-wide v19, v14, v15

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v11, v17

    goto :goto_8

    :cond_b
    add-int/lit8 v13, v13, -0x1

    aget-wide v11, v14, v13

    aget-wide v21, v14, v16

    sub-double v11, v11, v21

    move/from16 v3, v16

    :goto_a
    if-ge v3, v13, :cond_8

    aget-wide v21, v14, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v23, v14, v3

    add-double v21, v21, v23

    const-wide/high16 v23, 0x3fe0000000000000L    # 0.5

    mul-double v21, v21, v23

    cmpl-double v15, v11, v19

    if-nez v15, :cond_c

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    goto :goto_b

    :cond_c
    aget-wide v23, v14, v16

    sub-double v21, v21, v23

    div-double v21, v21, v11

    :goto_b
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    move/from16 v21, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v15, v6}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move/from16 v6, v21

    goto :goto_a

    :goto_c
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    move-wide/from16 v11, v17

    move/from16 v6, v21

    goto :goto_7

    :cond_d
    move/from16 v16, v3

    move/from16 v21, v6

    invoke-interface {v9}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move/from16 v4, v16

    :goto_d
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v4, v6, :cond_e

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v9, v7, v6

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v6

    aget-object v10, v5, v6

    aget-wide v9, v10, v9

    aput-wide v9, v8, v6

    invoke-static {v2, v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->v(Ljava/util/ArrayList;[J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_e
    move/from16 v3, v16

    :goto_e
    array-length v4, v1

    if-ge v3, v4, :cond_10

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f

    aget-wide v4, v8, v3

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    aput-wide v4, v8, v3

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_10
    invoke-static {v2, v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->v(Ljava/util/ArrayList;[J)V

    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move/from16 v4, v16

    :goto_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v5, :cond_11

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    goto :goto_10

    :cond_11
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    :goto_10
    invoke-virtual {v3, v5}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_12
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    array-length v3, v1

    new-array v3, v3, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move/from16 v4, v16

    :goto_11
    array-length v5, v1

    if-ge v4, v5, :cond_16

    aget-object v5, v1, v4

    if-eqz v5, :cond_15

    iget-object v6, v5, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->b:[I

    array-length v7, v6

    if-nez v7, :cond_13

    goto :goto_13

    :cond_13
    array-length v7, v6

    iget-object v8, v5, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->a:Landroidx/media3/common/TrackGroup;

    move/from16 v9, v21

    if-ne v7, v9, :cond_14

    new-instance v7, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;

    aget v6, v6, v16

    iget v5, v5, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->c:I

    invoke-direct {v7, v8, v6, v5}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;II)V

    goto :goto_12

    :cond_14
    iget v5, v5, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->c:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v37, v7

    check-cast v37, Lcom/google/common/collect/ImmutableList;

    new-instance v22, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;

    iget v7, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->a:I

    int-to-long v10, v7

    iget v7, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->b:I

    int-to-long v12, v7

    iget v7, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->c:I

    int-to-long v14, v7

    iget v7, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->g:F

    iget-object v9, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->h:Landroidx/media3/common/util/Clock;

    iget v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->d:I

    move/from16 v33, v1

    iget v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->e:I

    move/from16 v34, v1

    iget v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->f:F

    move-object/from16 v26, p2

    move/from16 v35, v1

    move/from16 v25, v5

    move-object/from16 v24, v6

    move/from16 v36, v7

    move-object/from16 v23, v8

    move-object/from16 v38, v9

    move-wide/from16 v27, v10

    move-wide/from16 v29, v12

    move-wide/from16 v31, v14

    invoke-direct/range {v22 .. v38}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;JJJIIFFLcom/google/common/collect/ImmutableList;Landroidx/media3/common/util/Clock;)V

    move-object/from16 v7, v22

    :goto_12
    aput-object v7, v3, v4

    :cond_15
    :goto_13
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    const/16 v21, 0x1

    goto :goto_11

    :cond_16
    return-object v3
.end method
