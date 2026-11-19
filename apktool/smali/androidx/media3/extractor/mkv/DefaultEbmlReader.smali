.class final Landroidx/media3/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mkv/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Landroidx/media3/extractor/mkv/VarintReader;

.field public d:Landroidx/media3/extractor/mkv/EbmlProcessor;

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->a:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->b:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/media3/extractor/mkv/VarintReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->c:Landroidx/media3/extractor/mkv/VarintReader;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    const v4, 0x1654ae6b

    const v5, 0x1549a966

    const v8, 0x1c53bb6b

    const/4 v14, 0x2

    const-wide/16 v16, -0x1

    const-wide/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v3, :cond_a6

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v20

    iget-wide v11, v3, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;->b:J

    cmp-long v3, v20, v11

    if-ltz v3, :cond_a6

    iget-object v0, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v1, v1, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;->a:I

    check-cast v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p0:Ljava/util/Map;

    iget-object v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->C:Landroid/util/SparseArray;

    iget-object v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c:Landroid/util/SparseArray;

    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j0:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0xa0

    const-string v6, "A_OPUS"

    if-eq v1, v12, :cond_a0

    const/16 v12, 0xae

    const/16 v21, 0x8

    const/16 v13, 0x14

    const-string v7, "video/webm"

    if-eq v1, v12, :cond_2d

    const/16 v2, 0xb7

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v2, :cond_2b

    const/16 v2, 0x4dbb

    if-eq v1, v2, :cond_29

    const/16 v2, 0x6240

    if-eq v1, v2, :cond_27

    const/16 v2, 0x6d80

    if-eq v1, v2, :cond_25

    if-eq v1, v5, :cond_23

    if-eq v1, v4, :cond_13

    if-eq v1, v8, :cond_1

    :cond_0
    move/from16 v31, v10

    goto/16 :goto_41

    :cond_1
    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    if-nez v1, :cond_0

    move v1, v9

    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->v:J

    cmp-long v1, v1, v20

    if-nez v1, :cond_3

    :cond_2
    move-object v2, v3

    goto :goto_3

    :cond_3
    move v1, v9

    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v24, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;

    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->v:J

    iget v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:I

    iget-wide v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->s:J

    iget-wide v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r:J

    move-wide/from16 v26, v1

    move-object/from16 v25, v3

    move/from16 v28, v4

    move-wide/from16 v29, v5

    move-wide/from16 v31, v7

    invoke-direct/range {v24 .. v32}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;-><init>(Landroid/util/SparseArray;JIJJ)V

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    iget-object v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j0:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v3, v1}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_4

    :cond_5
    move-object v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_3
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j0:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->v:J

    invoke-direct {v3, v4, v5}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    :goto_4
    iput-boolean v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->D:Z

    move v1, v9

    :goto_5
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_12

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-wide v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->v:J

    iget-wide v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->s:J

    move v12, v9

    move/from16 v31, v10

    iget-wide v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r:J

    iget v8, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e:I

    if-eq v8, v14, :cond_7

    :cond_6
    :goto_6
    move/from16 p0, v12

    move/from16 p1, v13

    goto/16 :goto_d

    :cond_7
    iget v8, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_9

    move/from16 p0, v12

    move/from16 p1, v13

    :goto_7
    move-wide/from16 v4, v20

    goto/16 :goto_b

    :cond_9
    move/from16 p0, v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    const-wide/16 v16, 0x0

    move/from16 p1, v13

    const/4 v14, -0x1

    move/from16 v13, p0

    :goto_8
    if-ge v13, v12, :cond_a

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v15, v22

    check-cast v15, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    move-wide/from16 v22, v4

    iget-wide v4, v15, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->b:J

    move-wide/from16 v27, v4

    iget-wide v4, v15, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->d:J

    move-wide/from16 v29, v4

    iget-wide v4, v15, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->c:J

    const-wide/32 v32, 0x989680

    cmp-long v15, v27, v32

    if-lez v15, :cond_b

    :cond_a
    const/4 v4, -0x1

    goto :goto_a

    :cond_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v13, v15, :cond_c

    add-int/lit8 v15, v13, 0x1

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    move-wide/from16 v32, v4

    iget-wide v4, v15, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->c:J

    move-wide/from16 v34, v4

    iget-wide v4, v15, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->d:J

    add-long v4, v34, v4

    add-long v29, v32, v29

    sub-long v4, v4, v29

    move-wide/from16 v29, v4

    iget-wide v4, v15, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->b:J

    sub-long v4, v4, v27

    move-wide/from16 v27, v6

    move-wide/from16 v6, v29

    goto :goto_9

    :cond_c
    move-wide/from16 v32, v4

    add-long v4, v6, v9

    add-long v29, v32, v29

    sub-long v4, v4, v29

    sub-long v27, v22, v27

    move-wide/from16 v36, v6

    move-wide v6, v4

    move-wide/from16 v4, v27

    move-wide/from16 v27, v36

    :goto_9
    cmp-long v15, v4, v18

    if-lez v15, :cond_d

    long-to-double v6, v6

    long-to-double v4, v4

    div-double/2addr v6, v4

    cmpl-double v4, v6, v16

    if-lez v4, :cond_d

    move-wide/from16 v16, v6

    move v14, v13

    :cond_d
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v4, v22

    move-wide/from16 v6, v27

    goto :goto_8

    :goto_a
    if-ne v14, v4, :cond_e

    goto/16 :goto_7

    :cond_e
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    iget-wide v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;->b:J

    :goto_b
    cmp-long v6, v4, v20

    if-eqz v6, :cond_10

    iget-object v6, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Landroidx/media3/common/Format;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    new-instance v7, Landroidx/media3/extractor/metadata/ThumbnailMetadata;

    invoke-direct {v7, v4, v5}, Landroidx/media3/extractor/metadata/ThumbnailMetadata;-><init>(J)V

    if-nez v6, :cond_f

    new-instance v4, Landroidx/media3/common/Metadata;

    move/from16 v5, v31

    new-array v6, v5, [Landroidx/media3/common/Metadata$Entry;

    aput-object v7, v6, p0

    invoke-direct {v4, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_c

    :cond_f
    move/from16 v5, v31

    new-array v4, v5, [Landroidx/media3/common/Metadata$Entry;

    aput-object v7, v4, p0

    invoke-virtual {v6, v4}, Landroidx/media3/common/Metadata;->a([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v4

    :goto_c
    iget-object v5, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Landroidx/media3/common/Format;

    invoke-virtual {v5}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iput-object v4, v5, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Landroidx/media3/common/Format;

    :cond_10
    :goto_d
    iget-boolean v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Z

    if-nez v4, :cond_11

    iget-object v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Landroidx/media3/common/Format;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, v3}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    :cond_11
    add-int/lit8 v1, v1, 0x1

    move/from16 v9, p0

    move/from16 v13, p1

    const/4 v10, 0x1

    const/4 v14, 0x2

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k()V

    :goto_e
    const/16 v31, 0x1

    return v31

    :cond_13
    move/from16 p0, v9

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_22

    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->d:Z

    if-eqz v1, :cond_15

    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->K:J

    cmp-long v1, v1, v16

    if-nez v1, :cond_14

    goto :goto_f

    :cond_14
    move/from16 v12, p0

    goto :goto_10

    :cond_15
    :goto_f
    const/4 v12, 0x1

    :goto_10
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move/from16 v1, p0

    :goto_11
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1b

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget v7, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_17

    iget-boolean v7, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Y:Z

    if-eqz v7, :cond_16

    iget v2, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    :cond_16
    const/4 v8, -0x1

    if-ne v3, v8, :cond_19

    iget v3, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    goto :goto_12

    :cond_17
    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_19

    iget-boolean v7, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Y:Z

    if-eqz v7, :cond_18

    iget v4, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    :cond_18
    if-ne v5, v8, :cond_19

    iget v5, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    :cond_19
    :goto_12
    if-eqz v12, :cond_1a

    iget-object v7, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v7, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Z

    if-nez v7, :cond_1a

    iget-object v7, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    iget-object v6, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Landroidx/media3/common/Format;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7, v6}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1b
    const/4 v8, -0x1

    if-eq v2, v8, :cond_1c

    iput v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:I

    goto :goto_14

    :cond_1c
    if-eq v3, v8, :cond_1d

    iput v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:I

    goto :goto_14

    :cond_1d
    if-eq v4, v8, :cond_1e

    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:I

    goto :goto_14

    :cond_1e
    if-eq v5, v8, :cond_1f

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:I

    goto :goto_14

    :cond_1f
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_20

    move/from16 v1, p0

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget v15, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    goto :goto_13

    :cond_20
    const/4 v15, -0x1

    :goto_13
    iput v15, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:I

    :goto_14
    if-eqz v12, :cond_21

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k()V

    goto/16 :goto_e

    :cond_21
    :goto_15
    const/16 v31, 0x1

    goto/16 :goto_41

    :cond_22
    const-string v0, "No valid tracks were found"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_23
    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t:J

    cmp-long v1, v1, v20

    if-nez v1, :cond_24

    const-wide/32 v1, 0xf4240

    iput-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t:J

    :cond_24
    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->u:J

    cmp-long v3, v1, v20

    if-eqz v3, :cond_21

    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->v:J

    goto/16 :goto_e

    :cond_25
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->i:Z

    if-eqz v1, :cond_21

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->j:[B

    if-nez v0, :cond_26

    goto :goto_15

    :cond_26
    const-string v0, "Combining encryption and compression is not supported"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_27
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->i:Z

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->k:Landroidx/media3/extractor/TrackOutput$CryptoData;

    if-eqz v1, :cond_28

    new-instance v2, Landroidx/media3/common/DrmInitData;

    new-instance v3, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v4, Landroidx/media3/common/C;->b:Ljava/util/UUID;

    iget-object v1, v1, Landroidx/media3/extractor/TrackOutput$CryptoData;->b:[B

    invoke-direct {v3, v4, v7, v1}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    filled-new-array {v3}, [Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/media3/common/DrmInitData;-><init>([Landroidx/media3/common/DrmInitData$SchemeData;)V

    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->m:Landroidx/media3/common/DrmInitData;

    goto/16 :goto_e

    :cond_28
    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_29
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2a

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:J

    cmp-long v4, v2, v16

    if-eqz v4, :cond_2a

    if-ne v1, v8, :cond_21

    iput-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->K:J

    goto/16 :goto_e

    :cond_2a
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2b
    move-object v2, v3

    iget-boolean v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    if-nez v3, :cond_21

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    iget-wide v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->E:J

    cmp-long v1, v3, v20

    if-eqz v1, :cond_21

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->F:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_21

    iget-wide v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    cmp-long v3, v3, v16

    if-eqz v3, :cond_21

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->F:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2c
    new-instance v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    iget-wide v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->E:J

    iget-wide v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->s:J

    iget-wide v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    add-long/2addr v5, v7

    iget-wide v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->H:J

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;-><init>(JJJ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_2d
    move/from16 p1, v13

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    if-eqz v3, :cond_9f

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "A_MPEG/L3"

    const-string v8, "A_MPEG/L2"

    const-string v9, "A_VORBIS"

    const-string v10, "A_TRUEHD"

    const-string v13, "A_MS/ACM"

    const-string v14, "V_MPEG4/ISO/SP"

    const-string v15, "V_MPEG4/ISO/AP"

    sparse-switch v4, :sswitch_data_0

    :goto_16
    const/4 v4, -0x1

    goto/16 :goto_17

    :sswitch_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto :goto_16

    :cond_2e
    const/16 v4, 0x21

    goto/16 :goto_17

    :sswitch_1
    const-string v4, "A_FLAC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_16

    :cond_2f
    const/16 v4, 0x20

    goto/16 :goto_17

    :sswitch_2
    const-string v4, "A_EAC3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    goto :goto_16

    :cond_30
    const/16 v4, 0x1f

    goto/16 :goto_17

    :sswitch_3
    const-string v4, "V_MPEG2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    goto :goto_16

    :cond_31
    const/16 v4, 0x1e

    goto/16 :goto_17

    :sswitch_4
    const-string v4, "S_TEXT/UTF8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    goto :goto_16

    :cond_32
    const/16 v4, 0x1d

    goto/16 :goto_17

    :sswitch_5
    const-string v4, "S_TEXT/WEBVTT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    goto :goto_16

    :cond_33
    const/16 v4, 0x1c

    goto/16 :goto_17

    :sswitch_6
    const-string v4, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_16

    :cond_34
    const/16 v4, 0x1b

    goto/16 :goto_17

    :sswitch_7
    const-string v4, "S_TEXT/SSA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_16

    :cond_35
    const/16 v4, 0x1a

    goto/16 :goto_17

    :sswitch_8
    const-string v4, "S_TEXT/ASS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_16

    :cond_36
    const/16 v4, 0x19

    goto/16 :goto_17

    :sswitch_9
    const-string v4, "A_PCM/INT/LIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    goto :goto_16

    :cond_37
    const/16 v4, 0x18

    goto/16 :goto_17

    :sswitch_a
    const-string v4, "A_PCM/INT/BIG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    goto/16 :goto_16

    :cond_38
    const/16 v4, 0x17

    goto/16 :goto_17

    :sswitch_b
    const-string v4, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto/16 :goto_16

    :cond_39
    const/16 v4, 0x16

    goto/16 :goto_17

    :sswitch_c
    const-string v4, "A_DTS/EXPRESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    goto/16 :goto_16

    :cond_3a
    const/16 v4, 0x15

    goto/16 :goto_17

    :sswitch_d
    const-string v4, "V_THEORA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    goto/16 :goto_16

    :cond_3b
    move/from16 v4, p1

    goto/16 :goto_17

    :sswitch_e
    const-string v4, "S_HDMV/PGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    goto/16 :goto_16

    :cond_3c
    const/16 v4, 0x13

    goto/16 :goto_17

    :sswitch_f
    const-string v4, "V_VP9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto/16 :goto_16

    :cond_3d
    const/16 v4, 0x12

    goto/16 :goto_17

    :sswitch_10
    const-string v4, "V_VP8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    goto/16 :goto_16

    :cond_3e
    const/16 v4, 0x11

    goto/16 :goto_17

    :sswitch_11
    const-string v4, "V_AV1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    goto/16 :goto_16

    :cond_3f
    const/16 v4, 0x10

    goto/16 :goto_17

    :sswitch_12
    const-string v4, "A_DTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    goto/16 :goto_16

    :cond_40
    const/16 v4, 0xf

    goto/16 :goto_17

    :sswitch_13
    const-string v4, "A_AC3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto/16 :goto_16

    :cond_41
    const/16 v4, 0xe

    goto/16 :goto_17

    :sswitch_14
    const-string v4, "A_AAC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    goto/16 :goto_16

    :cond_42
    const/16 v4, 0xd

    goto/16 :goto_17

    :sswitch_15
    const-string v4, "A_DTS/LOSSLESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    goto/16 :goto_16

    :cond_43
    const/16 v4, 0xc

    goto/16 :goto_17

    :sswitch_16
    const-string v4, "S_VOBSUB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    goto/16 :goto_16

    :cond_44
    const/16 v4, 0xb

    goto/16 :goto_17

    :sswitch_17
    const-string v4, "V_MPEG4/ISO/AVC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    goto/16 :goto_16

    :cond_45
    const/16 v4, 0xa

    goto/16 :goto_17

    :sswitch_18
    const-string v4, "V_MPEG4/ISO/ASP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    goto/16 :goto_16

    :cond_46
    const/16 v4, 0x9

    goto/16 :goto_17

    :sswitch_19
    const-string v4, "S_DVBSUB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    goto/16 :goto_16

    :cond_47
    move/from16 v4, v21

    goto :goto_17

    :sswitch_1a
    const-string v4, "V_MS/VFW/FOURCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    goto/16 :goto_16

    :cond_48
    const/4 v4, 0x7

    goto :goto_17

    :sswitch_1b
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    goto/16 :goto_16

    :cond_49
    const/4 v4, 0x6

    goto :goto_17

    :sswitch_1c
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    goto/16 :goto_16

    :cond_4a
    const/4 v4, 0x5

    goto :goto_17

    :sswitch_1d
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    goto/16 :goto_16

    :cond_4b
    const/4 v4, 0x4

    goto :goto_17

    :sswitch_1e
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    goto/16 :goto_16

    :cond_4c
    const/4 v4, 0x3

    goto :goto_17

    :sswitch_1f
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    goto/16 :goto_16

    :cond_4d
    const/4 v4, 0x2

    goto :goto_17

    :sswitch_20
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto/16 :goto_16

    :cond_4e
    const/4 v4, 0x1

    goto :goto_17

    :sswitch_21
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto/16 :goto_16

    :cond_4f
    const/4 v4, 0x0

    :goto_17
    packed-switch v4, :pswitch_data_0

    :goto_18
    const/4 v1, 0x0

    goto/16 :goto_40

    :pswitch_0
    iget v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v27

    sparse-switch v27, :sswitch_data_1

    :goto_19
    const/4 v5, -0x1

    goto/16 :goto_1a

    :sswitch_22
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    goto :goto_19

    :cond_50
    const/16 v5, 0x21

    goto/16 :goto_1a

    :sswitch_23
    const-string v5, "A_FLAC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    goto :goto_19

    :cond_51
    const/16 v5, 0x20

    goto/16 :goto_1a

    :sswitch_24
    const-string v5, "A_EAC3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    goto :goto_19

    :cond_52
    const/16 v5, 0x1f

    goto/16 :goto_1a

    :sswitch_25
    const-string v5, "V_MPEG2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    goto :goto_19

    :cond_53
    const/16 v5, 0x1e

    goto/16 :goto_1a

    :sswitch_26
    const-string v5, "S_TEXT/UTF8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    goto :goto_19

    :cond_54
    const/16 v5, 0x1d

    goto/16 :goto_1a

    :sswitch_27
    const-string v5, "S_TEXT/WEBVTT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    goto :goto_19

    :cond_55
    const/16 v5, 0x1c

    goto/16 :goto_1a

    :sswitch_28
    const-string v5, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_19

    :cond_56
    const/16 v5, 0x1b

    goto/16 :goto_1a

    :sswitch_29
    const-string v5, "S_TEXT/SSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    goto :goto_19

    :cond_57
    const/16 v5, 0x1a

    goto/16 :goto_1a

    :sswitch_2a
    const-string v5, "S_TEXT/ASS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    goto :goto_19

    :cond_58
    const/16 v5, 0x19

    goto/16 :goto_1a

    :sswitch_2b
    const-string v5, "A_PCM/INT/LIT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    goto :goto_19

    :cond_59
    const/16 v5, 0x18

    goto/16 :goto_1a

    :sswitch_2c
    const-string v5, "A_PCM/INT/BIG"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    goto/16 :goto_19

    :cond_5a
    const/16 v5, 0x17

    goto/16 :goto_1a

    :sswitch_2d
    const-string v5, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    goto/16 :goto_19

    :cond_5b
    const/16 v5, 0x16

    goto/16 :goto_1a

    :sswitch_2e
    const-string v5, "A_DTS/EXPRESS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    goto/16 :goto_19

    :cond_5c
    const/16 v5, 0x15

    goto/16 :goto_1a

    :sswitch_2f
    const-string v5, "V_THEORA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    goto/16 :goto_19

    :cond_5d
    move/from16 v5, p1

    goto/16 :goto_1a

    :sswitch_30
    const-string v5, "S_HDMV/PGS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5e

    goto/16 :goto_19

    :cond_5e
    const/16 v5, 0x13

    goto/16 :goto_1a

    :sswitch_31
    const-string v5, "V_VP9"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    goto/16 :goto_19

    :cond_5f
    const/16 v5, 0x12

    goto/16 :goto_1a

    :sswitch_32
    const-string v5, "V_VP8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    goto/16 :goto_19

    :cond_60
    const/16 v5, 0x11

    goto/16 :goto_1a

    :sswitch_33
    const-string v5, "V_AV1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    goto/16 :goto_19

    :cond_61
    const/16 v5, 0x10

    goto/16 :goto_1a

    :sswitch_34
    const-string v5, "A_DTS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    goto/16 :goto_19

    :cond_62
    const/16 v5, 0xf

    goto/16 :goto_1a

    :sswitch_35
    const-string v5, "A_AC3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_63

    goto/16 :goto_19

    :cond_63
    const/16 v5, 0xe

    goto/16 :goto_1a

    :sswitch_36
    const-string v5, "A_AAC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    goto/16 :goto_19

    :cond_64
    const/16 v5, 0xd

    goto/16 :goto_1a

    :sswitch_37
    const-string v5, "A_DTS/LOSSLESS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    goto/16 :goto_19

    :cond_65
    const/16 v5, 0xc

    goto/16 :goto_1a

    :sswitch_38
    const-string v5, "S_VOBSUB"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    goto/16 :goto_19

    :cond_66
    const/16 v5, 0xb

    goto/16 :goto_1a

    :sswitch_39
    const-string v5, "V_MPEG4/ISO/AVC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_67

    goto/16 :goto_19

    :cond_67
    const/16 v5, 0xa

    goto/16 :goto_1a

    :sswitch_3a
    const-string v5, "V_MPEG4/ISO/ASP"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    goto/16 :goto_19

    :cond_68
    const/16 v5, 0x9

    goto/16 :goto_1a

    :sswitch_3b
    const-string v5, "S_DVBSUB"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    goto/16 :goto_19

    :cond_69
    move/from16 v5, v21

    goto :goto_1a

    :sswitch_3c
    const-string v5, "V_MS/VFW/FOURCC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    goto/16 :goto_19

    :cond_6a
    const/4 v5, 0x7

    goto :goto_1a

    :sswitch_3d
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    goto/16 :goto_19

    :cond_6b
    const/4 v5, 0x6

    goto :goto_1a

    :sswitch_3e
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    goto/16 :goto_19

    :cond_6c
    const/4 v5, 0x5

    goto :goto_1a

    :sswitch_3f
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    goto/16 :goto_19

    :cond_6d
    const/4 v5, 0x4

    goto :goto_1a

    :sswitch_40
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e

    goto/16 :goto_19

    :cond_6e
    const/4 v5, 0x3

    goto :goto_1a

    :sswitch_41
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    goto/16 :goto_19

    :cond_6f
    const/4 v5, 0x2

    goto :goto_1a

    :sswitch_42
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    goto/16 :goto_19

    :cond_70
    const/4 v5, 0x1

    goto :goto_1a

    :sswitch_43
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    goto/16 :goto_19

    :cond_71
    const/4 v5, 0x0

    :goto_1a
    const-string v8, "application/dvbsubs"

    const-string v9, "application/vobsub"

    const-string v10, "application/pgs"

    const-string v13, "video/x-unknown"

    const-string v14, "text/x-ssa"

    const-string v15, "text/vtt"

    const-string v6, "application/x-subrip"

    const-string v12, ". Setting mimeType to audio/x-unknown"

    const-string v29, "audio/raw"

    const-string v30, "audio/x-unknown"

    packed-switch v5, :pswitch_data_1

    const-string v0, "Unrecognized codec identifier."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    iget-wide v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->T:J

    invoke-virtual {v5, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-wide v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->U:J

    invoke-virtual {v5, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v13, "audio/opus"

    const/16 v5, 0x1680

    move/from16 v16, v4

    move v4, v5

    move-object/from16 v29, v13

    :goto_1b
    const/4 v5, 0x0

    :goto_1c
    const/4 v12, -0x1

    goto/16 :goto_34

    :pswitch_2
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v13, "audio/flac"

    :goto_1d
    move/from16 v16, v4

    move-object/from16 v29, v13

    :goto_1e
    const/4 v4, -0x1

    goto :goto_1b

    :pswitch_3
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    const-string v13, "audio/eac3"

    :goto_1f
    move/from16 v16, v4

    move-object/from16 v29, v13

    :goto_20
    const/4 v3, 0x0

    goto :goto_1e

    :pswitch_4
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    const-string v13, "video/mpeg2"

    goto :goto_1f

    :pswitch_5
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move/from16 v16, v4

    move-object/from16 v29, v6

    goto :goto_20

    :pswitch_6
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move/from16 v16, v4

    move-object/from16 v29, v15

    goto :goto_20

    :pswitch_7
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-static {v3, v12, v5}, Landroidx/media3/extractor/HevcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v3

    iget-object v7, v3, Landroidx/media3/extractor/HevcConfig;->a:Ljava/util/List;

    iget v8, v3, Landroidx/media3/extractor/HevcConfig;->b:I

    iput v8, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c0:I

    iget-object v3, v3, Landroidx/media3/extractor/HevcConfig;->n:Ljava/lang/String;

    const-string v13, "video/hevc"

    move-object v5, v3

    move/from16 v16, v4

    move-object v3, v7

    :goto_21
    move-object/from16 v29, v13

    :goto_22
    const/4 v4, -0x1

    goto :goto_1c

    :pswitch_8
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    sget-object v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l0:[B

    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/common/collect/ImmutableList;->D(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move/from16 v16, v4

    move-object/from16 v29, v14

    goto :goto_1e

    :pswitch_9
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v7}, Landroidx/media3/common/util/Util;->C(ILjava/nio/ByteOrder;)I

    move-result v3

    if-nez v3, :cond_72

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported little endian PCM bit depth: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :goto_23
    move/from16 v16, v4

    :goto_24
    move-object/from16 v29, v30

    goto :goto_20

    :cond_72
    move v12, v3

    :goto_25
    move/from16 v16, v4

    :goto_26
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto/16 :goto_34

    :pswitch_a
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    move/from16 v7, v21

    if-ne v3, v7, :cond_73

    move/from16 v16, v4

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v12, 0x3

    goto/16 :goto_34

    :cond_73
    const/16 v7, 0x10

    if-ne v3, v7, :cond_74

    const/high16 v12, 0x10000000

    goto :goto_25

    :cond_74
    const/16 v7, 0x18

    if-ne v3, v7, :cond_75

    const/high16 v12, 0x50000000

    goto :goto_25

    :cond_75
    const/16 v7, 0x20

    if-ne v3, v7, :cond_76

    const/high16 v12, 0x60000000

    goto :goto_25

    :cond_76
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported big endian PCM bit depth: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_23

    :pswitch_b
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    const/16 v7, 0x20

    if-ne v3, v7, :cond_77

    move/from16 v16, v4

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v12, 0x4

    goto/16 :goto_34

    :cond_77
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported floating point PCM bit depth: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_23

    :pswitch_c
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    goto/16 :goto_1f

    :pswitch_d
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move/from16 v16, v4

    move-object/from16 v29, v10

    goto/16 :goto_20

    :pswitch_e
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    iget-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->l:[B

    if-nez v3, :cond_78

    const/4 v3, 0x0

    goto :goto_27

    :cond_78
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    :goto_27
    const-string v13, "video/x-vnd.on2.vp9"

    goto/16 :goto_1d

    :pswitch_f
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    const-string v13, "video/x-vnd.on2.vp8"

    goto/16 :goto_1f

    :pswitch_10
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    iget-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->l:[B

    if-nez v3, :cond_79

    const/4 v3, 0x0

    goto :goto_28

    :cond_79
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    :goto_28
    const-string v13, "video/av01"

    goto/16 :goto_1d

    :pswitch_11
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Z

    const-string v13, "audio/vnd.dts"

    goto/16 :goto_1f

    :pswitch_12
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    const-string v13, "audio/ac3"

    goto/16 :goto_1f

    :pswitch_13
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->l:[B

    new-instance v8, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v8, v7}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    const/4 v12, 0x0

    invoke-static {v8, v12}, Landroidx/media3/extractor/AacUtil;->b(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v5

    iget v7, v5, Landroidx/media3/extractor/AacUtil$Config;->a:I

    iput v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->S:I

    iget v7, v5, Landroidx/media3/extractor/AacUtil$Config;->b:I

    iput v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Q:I

    iget-object v5, v5, Landroidx/media3/extractor/AacUtil$Config;->c:Ljava/lang/String;

    const-string v13, "audio/mp4a-latm"

    :goto_29
    move/from16 v16, v4

    goto/16 :goto_21

    :pswitch_14
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    const-string v13, "audio/vnd.dts.hd"

    goto/16 :goto_1f

    :pswitch_15
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move/from16 v16, v4

    move-object/from16 v29, v9

    goto/16 :goto_1e

    :pswitch_16
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v3}, Landroidx/media3/extractor/AvcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v3

    iget-object v5, v3, Landroidx/media3/extractor/AvcConfig;->a:Ljava/util/ArrayList;

    iget v7, v3, Landroidx/media3/extractor/AvcConfig;->b:I

    iput v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c0:I

    iget-object v3, v3, Landroidx/media3/extractor/AvcConfig;->l:Ljava/lang/String;

    const-string v13, "video/avc"

    move-object v12, v5

    move-object v5, v3

    move-object v3, v12

    goto :goto_29

    :pswitch_17
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    const/4 v5, 0x4

    new-array v7, v5, [B

    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v12, 0x0

    invoke-static {v3, v12, v7, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move/from16 v16, v4

    move-object/from16 v29, v33

    goto/16 :goto_1e

    :pswitch_18
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/16 v7, 0x10

    :try_start_0
    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->r()J

    move-result-wide v7

    const-wide/32 v18, 0x58564944

    cmp-long v5, v7, v18

    if-nez v5, :cond_7a

    new-instance v3, Landroid/util/Pair;

    const-string v5, "video/divx"
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    :try_start_1
    invoke-direct {v3, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2a
    const/4 v7, 0x0

    goto/16 :goto_2c

    :catch_0
    const/4 v7, 0x0

    goto/16 :goto_2d

    :cond_7a
    const-wide/32 v18, 0x33363248

    cmp-long v5, v7, v18

    if-nez v5, :cond_7b

    :try_start_2
    new-instance v3, Landroid/util/Pair;

    const-string v5, "video/3gpp"
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v7, 0x0

    :try_start_3
    invoke-direct {v3, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2a

    :cond_7b
    const-wide/32 v18, 0x31435657

    cmp-long v5, v7, v18

    if-nez v5, :cond_7f

    :try_start_4
    iget v5, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    add-int/lit8 v5, v5, 0x14

    iget-object v3, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    :goto_2b
    array-length v7, v3

    const/16 v20, 0x4

    add-int/lit8 v7, v7, -0x4

    if-ge v5, v7, :cond_7e

    aget-byte v7, v3, v5

    if-nez v7, :cond_7c

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v3, v7

    if-nez v7, :cond_7c

    add-int/lit8 v7, v5, 0x2

    aget-byte v7, v3, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7c

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v3, v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_7d

    array-length v7, v3

    invoke-static {v3, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    new-instance v5, Landroid/util/Pair;

    const-string v7, "video/wvc1"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v7, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v5

    goto :goto_2a

    :cond_7c
    const/16 v8, 0xf

    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_7e
    const-string v0, "Failed to find FourCC VC1 initialization data"
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v1, 0x0

    :try_start_5
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    move-object v7, v1

    goto :goto_2d

    :cond_7f
    const-string v3, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v3}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    new-instance v3, Landroid/util/Pair;

    const/4 v7, 0x0

    invoke-direct {v3, v13, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2c
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v24, v3

    check-cast v24, Ljava/util/List;

    move/from16 v16, v4

    move-object v5, v7

    move-object/from16 v29, v13

    move-object/from16 v3, v24

    goto/16 :goto_22

    :catch_2
    :goto_2d
    const-string v0, "Error parsing FourCC private data"

    invoke-static {v7, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_19
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    const-string v13, "audio/mpeg"

    :goto_2e
    move/from16 v16, v4

    move-object/from16 v29, v13

    const/4 v3, 0x0

    const/16 v4, 0x1000

    goto/16 :goto_1b

    :pswitch_1a
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    const-string v13, "audio/mpeg-L2"

    goto :goto_2e

    :pswitch_1b
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    const-string v5, "Error parsing vorbis codec private"

    const/4 v12, 0x0

    :try_start_7
    aget-byte v7, v3, v12

    const/4 v8, 0x2

    if-ne v7, v8, :cond_85

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_2f
    aget-byte v13, v3, v8

    const/16 v12, 0xff

    and-int/2addr v13, v12

    if-ne v13, v12, :cond_80

    add-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    :cond_80
    const/16 v31, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v13

    move/from16 v16, v4

    const/4 v13, 0x0

    :goto_30
    aget-byte v4, v3, v8

    and-int/2addr v4, v12

    if-ne v4, v12, :cond_81

    add-int/lit16 v13, v13, 0xff

    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    :cond_81
    const/4 v12, 0x1

    add-int/2addr v8, v12

    add-int/2addr v13, v4

    aget-byte v4, v3, v8

    if-ne v4, v12, :cond_84

    new-array v4, v7, [B

    const/4 v12, 0x0

    invoke-static {v3, v8, v4, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v7

    aget-byte v7, v3, v8

    const/4 v12, 0x3

    if-ne v7, v12, :cond_83

    add-int/2addr v8, v13

    aget-byte v7, v3, v8

    const/4 v12, 0x5

    if-ne v7, v12, :cond_82

    array-length v7, v3

    sub-int/2addr v7, v8

    new-array v7, v7, [B

    array-length v12, v3

    sub-int/2addr v12, v8

    const/4 v13, 0x0

    invoke-static {v3, v8, v7, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_3

    const-string v4, "audio/vorbis"

    const/16 v5, 0x2000

    move-object/from16 v29, v4

    move v4, v5

    goto/16 :goto_1b

    :catch_3
    const/4 v1, 0x0

    goto :goto_31

    :cond_82
    const/4 v1, 0x0

    :try_start_8
    invoke-static {v1, v5}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_83
    const/4 v1, 0x0

    invoke-static {v1, v5}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_84
    const/4 v1, 0x0

    invoke-static {v1, v5}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_85
    const/4 v1, 0x0

    invoke-static {v1, v5}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :goto_31
    invoke-static {v1, v5}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1c
    move/from16 v16, v4

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    new-instance v3, Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-direct {v3}, Landroidx/media3/extractor/TrueHdSampleRechunker;-><init>()V

    iput-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->V:Landroidx/media3/extractor/TrueHdSampleRechunker;

    const-string v3, "audio/true-hd"

    move-object/from16 v29, v3

    goto/16 :goto_20

    :pswitch_1d
    move/from16 v16, v4

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    :try_start_9
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->t()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_86

    goto :goto_32

    :cond_86
    const v5, 0xfffe

    if-ne v4, v5, :cond_88

    const/16 v7, 0x18

    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->u()J

    move-result-wide v4

    sget-object v7, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o0:Ljava/util/UUID;

    invoke-virtual {v7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v18

    cmp-long v4, v4, v18

    if-nez v4, :cond_88

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->u()J

    move-result-wide v3

    invoke-virtual {v7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v7
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5

    cmp-long v3, v3, v7

    if-nez v3, :cond_88

    :goto_32
    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    sget-object v4, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->C(ILjava/nio/ByteOrder;)I

    move-result v3

    if-nez v3, :cond_87

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported PCM bit depth: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_24

    :cond_87
    move v12, v3

    goto/16 :goto_26

    :cond_88
    const-string v3, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    invoke-static {v3}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_24

    :catch_5
    const-string v0, "Error parsing MS/ACM codec private"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1e
    move/from16 v16, v4

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    iget-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->l:[B

    if-nez v3, :cond_89

    const/4 v3, 0x0

    goto :goto_33

    :cond_89
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_33
    const-string v4, "video/mp4v-es"

    move-object/from16 v29, v4

    goto/16 :goto_1e

    :goto_34
    iget-object v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->P:[B

    if-eqz v7, :cond_8a

    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v8, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->P:[B

    invoke-direct {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v7}, Landroidx/media3/container/DolbyVisionConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/DolbyVisionConfig;

    move-result-object v7

    if-eqz v7, :cond_8a

    iget-object v5, v7, Landroidx/media3/container/DolbyVisionConfig;->a:Ljava/lang/String;

    const-string v29, "video/dolby-vision"

    :cond_8a
    move-object/from16 v7, v29

    iget-boolean v8, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Y:Z

    iget-boolean v13, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->X:Z

    if-eqz v13, :cond_8b

    const/16 v25, 0x2

    goto :goto_35

    :cond_8b
    const/16 v25, 0x0

    :goto_35
    or-int v8, v8, v25

    new-instance v13, Landroidx/media3/common/Format$Builder;

    invoke-direct {v13}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8c

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Q:I

    iput v6, v13, Landroidx/media3/common/Format$Builder;->F:I

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->S:I

    iput v6, v13, Landroidx/media3/common/Format$Builder;->G:I

    iput v12, v13, Landroidx/media3/common/Format$Builder;->H:I

    goto/16 :goto_3e

    :cond_8c
    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->o(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9a

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->s:I

    if-nez v6, :cond_8f

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->q:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_8d

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->n:I

    :cond_8d
    iput v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->q:I

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->r:I

    if-ne v6, v9, :cond_8e

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->o:I

    :cond_8e
    iput v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->r:I

    goto :goto_36

    :cond_8f
    const/4 v9, -0x1

    :goto_36
    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->q:I

    const/high16 v10, -0x40800000    # -1.0f

    if-eq v6, v9, :cond_90

    iget v12, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->r:I

    if-eq v12, v9, :cond_90

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->o:I

    mul-int/2addr v9, v6

    int-to-float v6, v9

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->n:I

    mul-int/2addr v9, v12

    int-to-float v9, v9

    div-float/2addr v6, v9

    goto :goto_37

    :cond_90
    move v6, v10

    :goto_37
    iget-boolean v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->z:Z

    if-eqz v9, :cond_93

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->F:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_92

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->G:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_92

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->H:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_92

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->I:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_92

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->J:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_92

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->K:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_92

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->L:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_92

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->M:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_92

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->N:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_92

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->O:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_91

    goto/16 :goto_38

    :cond_91
    const/16 v9, 0x19

    new-array v9, v9, [B

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->F:F

    const v15, 0x47435000    # 50000.0f

    mul-float/2addr v14, v15

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v14, v14, v17

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->G:F

    mul-float/2addr v14, v15

    add-float v14, v14, v17

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->H:F

    mul-float/2addr v14, v15

    add-float v14, v14, v17

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->I:F

    mul-float/2addr v14, v15

    add-float v14, v14, v17

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->J:F

    mul-float/2addr v14, v15

    add-float v14, v14, v17

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->K:F

    mul-float/2addr v14, v15

    add-float v14, v14, v17

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->L:F

    mul-float/2addr v14, v15

    add-float v14, v14, v17

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->M:F

    mul-float/2addr v14, v15

    add-float v14, v14, v17

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->N:F

    add-float v14, v14, v17

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->O:F

    add-float v14, v14, v17

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->D:I

    int-to-short v14, v14

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->E:I

    int-to-short v14, v14

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_39

    :cond_92
    :goto_38
    const/4 v9, 0x0

    :goto_39
    new-instance v10, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v10}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->A:I

    iput v14, v10, Landroidx/media3/common/ColorInfo$Builder;->a:I

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->C:I

    iput v14, v10, Landroidx/media3/common/ColorInfo$Builder;->b:I

    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->B:I

    iput v14, v10, Landroidx/media3/common/ColorInfo$Builder;->c:I

    iput-object v9, v10, Landroidx/media3/common/ColorInfo$Builder;->d:[B

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->p:I

    iput v9, v10, Landroidx/media3/common/ColorInfo$Builder;->e:I

    iput v9, v10, Landroidx/media3/common/ColorInfo$Builder;->f:I

    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v9

    goto :goto_3a

    :cond_93
    const/4 v9, 0x0

    :goto_3a
    iget-object v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b:Ljava/lang/String;

    if-eqz v10, :cond_94

    invoke-interface {v2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    iget-object v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_3b

    :cond_94
    const/4 v15, -0x1

    :goto_3b
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->t:I

    if-nez v10, :cond_99

    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->u:F

    const/4 v14, 0x0

    invoke-static {v10, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_99

    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->v:F

    invoke-static {v10, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_99

    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->w:F

    invoke-static {v10, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_95

    const/4 v10, 0x0

    goto :goto_3d

    :cond_95
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->w:F

    const/high16 v12, 0x42b40000    # 90.0f

    invoke-static {v10, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_96

    const/16 v10, 0x5a

    goto :goto_3d

    :cond_96
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->w:F

    const/high16 v12, -0x3ccc0000    # -180.0f

    invoke-static {v10, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-eqz v10, :cond_98

    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->w:F

    const/high16 v12, 0x43340000    # 180.0f

    invoke-static {v10, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_97

    goto :goto_3c

    :cond_97
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->w:F

    const/high16 v12, -0x3d4c0000    # -90.0f

    invoke-static {v10, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_99

    const/16 v10, 0x10e

    goto :goto_3d

    :cond_98
    :goto_3c
    const/16 v10, 0xb4

    goto :goto_3d

    :cond_99
    move v10, v15

    :goto_3d
    iget v12, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->n:I

    iput v12, v13, Landroidx/media3/common/Format$Builder;->u:I

    iget v12, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->o:I

    iput v12, v13, Landroidx/media3/common/Format$Builder;->v:I

    iput v6, v13, Landroidx/media3/common/Format$Builder;->A:F

    iput v10, v13, Landroidx/media3/common/Format$Builder;->z:I

    iget-object v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->x:[B

    iput-object v6, v13, Landroidx/media3/common/Format$Builder;->B:[B

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->y:I

    iput v6, v13, Landroidx/media3/common/Format$Builder;->C:I

    iput-object v9, v13, Landroidx/media3/common/Format$Builder;->D:Landroidx/media3/common/ColorInfo;

    goto :goto_3e

    :cond_9a
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9c

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9c

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9c

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9c

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9c

    move-object/from16 v6, v33

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    goto :goto_3e

    :cond_9b
    const-string v0, "Unexpected MIME type."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_9c
    :goto_3e
    iget-object v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b:Ljava/lang/String;

    if-eqz v6, :cond_9d

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b:Ljava/lang/String;

    iput-object v2, v13, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    :cond_9d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-boolean v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a:Z

    if-eqz v2, :cond_9e

    goto :goto_3f

    :cond_9e
    const-string v2, "video/x-matroska"

    move-object/from16 v32, v2

    :goto_3f
    invoke-static/range {v32 .. v32}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v4, v13, Landroidx/media3/common/Format$Builder;->o:I

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Z:Ljava/lang/String;

    iput-object v2, v13, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iput v8, v13, Landroidx/media3/common/Format$Builder;->e:I

    iput-object v3, v13, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    iput-object v5, v13, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->m:Landroidx/media3/common/DrmInitData;

    iput-object v2, v13, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v13}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Landroidx/media3/common/Format;

    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j0:Landroidx/media3/extractor/ExtractorOutput;

    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    iget v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e:I

    invoke-interface {v2, v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    iget v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    invoke-virtual {v11, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_18

    :goto_40
    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    goto/16 :goto_e

    :cond_9f
    const/4 v1, 0x0

    const-string v0, "CodecId is missing in TrackEntry element"

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_a0
    move/from16 v31, v10

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:I

    const/4 v8, 0x2

    if-eq v1, v8, :cond_a1

    :goto_41
    return v31

    :cond_a1
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:J

    cmp-long v2, v2, v18

    if-lez v2, :cond_a2

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v21, 0x8

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v3

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    :cond_a2
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_42
    iget v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:I

    if-ge v2, v4, :cond_a3

    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_a3
    const/4 v2, 0x0

    :goto_43
    iget v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:I

    if-ge v2, v4, :cond_a5

    iget-wide v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->P:J

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f:I

    mul-int/2addr v6, v2

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long v26, v4, v6

    iget v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->W:I

    if-nez v2, :cond_a4

    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:Z

    if-nez v5, :cond_a4

    or-int/lit8 v4, v4, 0x1

    :cond_a4
    move/from16 v28, v4

    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    aget v29, v4, v2

    sub-int v30, v3, v29

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    invoke-virtual/range {v24 .. v30}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v30

    goto :goto_43

    :cond_a5
    const/4 v12, 0x0

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:I

    const/4 v3, 0x1

    return v3

    :cond_a6
    move v12, v9

    move v3, v10

    iget v6, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    iget-object v7, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->c:Landroidx/media3/extractor/mkv/VarintReader;

    if-nez v6, :cond_ad

    const/4 v6, 0x4

    invoke-virtual {v7, v1, v3, v12, v6}, Landroidx/media3/extractor/mkv/VarintReader;->b(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v9

    const-wide/16 v13, -0x2

    cmp-long v3, v9, v13

    if-nez v3, :cond_ab

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    :goto_44
    iget-object v3, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->a:[B

    invoke-interface {v1, v12, v6, v3}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    aget-byte v6, v3, v12

    const/4 v9, 0x0

    :goto_45
    const/16 v10, 0x8

    if-ge v9, v10, :cond_a8

    sget-object v10, Landroidx/media3/extractor/mkv/VarintReader;->d:[J

    aget-wide v10, v10, v9

    int-to-long v13, v6

    and-long/2addr v10, v13

    cmp-long v10, v10, v18

    if-eqz v10, :cond_a7

    add-int/lit8 v6, v9, 0x1

    :goto_46
    const/4 v11, -0x1

    goto :goto_47

    :cond_a7
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    :cond_a8
    const/4 v6, -0x1

    goto :goto_46

    :goto_47
    if-eq v6, v11, :cond_a9

    const/4 v9, 0x4

    if-gt v6, v9, :cond_a9

    const/4 v12, 0x0

    invoke-static {v6, v3, v12}, Landroidx/media3/extractor/mkv/VarintReader;->a(I[BZ)J

    move-result-wide v9

    long-to-int v3, v9

    iget-object v9, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    check-cast v9, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v3, v5, :cond_aa

    const v9, 0x1f43b675

    if-eq v3, v9, :cond_aa

    if-eq v3, v8, :cond_aa

    if-ne v3, v4, :cond_a9

    goto :goto_48

    :cond_a9
    const/4 v3, 0x1

    goto :goto_49

    :cond_aa
    :goto_48
    invoke-interface {v1, v6}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    int-to-long v9, v3

    :cond_ab
    const/4 v3, 0x1

    goto :goto_4a

    :goto_49
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    const/4 v6, 0x4

    const/4 v12, 0x0

    goto :goto_44

    :goto_4a
    cmp-long v4, v9, v16

    if-nez v4, :cond_ac

    const/4 v12, 0x0

    return v12

    :cond_ac
    const/4 v12, 0x0

    long-to-int v4, v9

    iput v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->f:I

    iput v3, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    :cond_ad
    iget v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    if-ne v4, v3, :cond_ae

    const/16 v10, 0x8

    invoke-virtual {v7, v1, v12, v3, v10}, Landroidx/media3/extractor/mkv/VarintReader;->b(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    const/4 v8, 0x2

    iput v8, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    :cond_ae
    iget-object v3, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->f:I

    check-cast v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sparse-switch v4, :sswitch_data_2

    const/4 v3, 0x0

    goto :goto_4b

    :sswitch_44
    const/4 v3, 0x5

    goto :goto_4b

    :sswitch_45
    const/4 v3, 0x4

    goto :goto_4b

    :sswitch_46
    const/4 v3, 0x1

    goto :goto_4b

    :sswitch_47
    const/4 v3, 0x3

    goto :goto_4b

    :sswitch_48
    const/4 v3, 0x2

    :goto_4b
    if-eqz v3, :cond_c3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_c2

    const-wide/16 v4, 0x8

    const/4 v8, 0x2

    if-eq v3, v8, :cond_c0

    const/4 v2, 0x3

    if-eq v3, v2, :cond_b6

    const/4 v6, 0x4

    if-eq v3, v6, :cond_b5

    const/4 v2, 0x5

    if-ne v3, v2, :cond_b4

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    const-wide/16 v6, 0x4

    cmp-long v6, v2, v6

    if-eqz v6, :cond_b0

    cmp-long v4, v2, v4

    if-nez v4, :cond_af

    goto :goto_4c

    :cond_af
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid float size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_b0
    :goto_4c
    iget-object v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v5, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->f:I

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->b(Landroidx/media3/extractor/ExtractorInput;I)J

    move-result-wide v6

    const/4 v9, 0x4

    if-ne v2, v9, :cond_b1

    long-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    float-to-double v1, v1

    goto :goto_4d

    :cond_b1
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    :goto_4d
    check-cast v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    iget-object v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    const/16 v4, 0xb5

    if-eq v5, v4, :cond_b3

    const/16 v4, 0x4489

    if-eq v5, v4, :cond_b2

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    :goto_4e
    const/4 v12, 0x0

    goto/16 :goto_4f

    :pswitch_1f
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->w:F

    goto :goto_4e

    :pswitch_20
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->v:F

    goto :goto_4e

    :pswitch_21
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->u:F

    goto :goto_4e

    :pswitch_22
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->O:F

    goto :goto_4e

    :pswitch_23
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->N:F

    goto :goto_4e

    :pswitch_24
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->M:F

    goto :goto_4e

    :pswitch_25
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->L:F

    goto :goto_4e

    :pswitch_26
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->K:F

    goto :goto_4e

    :pswitch_27
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->J:F

    goto :goto_4e

    :pswitch_28
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->I:F

    goto :goto_4e

    :pswitch_29
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->H:F

    goto :goto_4e

    :pswitch_2a
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->G:F

    goto :goto_4e

    :pswitch_2b
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->F:F

    goto :goto_4e

    :cond_b2
    double-to-long v1, v1

    iput-wide v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->u:J

    goto :goto_4e

    :cond_b3
    invoke-virtual {v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-int v1, v1

    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->S:I

    goto/16 :goto_4e

    :goto_4f
    iput v12, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_e

    :cond_b4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid element type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_b5
    iget-object v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v3, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->f:I

    iget-wide v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    long-to-int v4, v4

    check-cast v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    invoke-virtual {v2, v3, v4, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a(IILandroidx/media3/extractor/ExtractorInput;)V

    const/4 v12, 0x0

    iput v12, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_e

    :cond_b6
    iget-wide v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_bf

    iget-object v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v5, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->f:I

    long-to-int v2, v2

    if-nez v2, :cond_b7

    const-string v1, ""

    goto :goto_51

    :cond_b7
    new-array v3, v2, [B

    const/4 v12, 0x0

    invoke-interface {v1, v3, v12, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    :goto_50
    if-lez v2, :cond_b8

    add-int/lit8 v1, v2, -0x1

    aget-byte v1, v3, v1

    if-nez v1, :cond_b8

    add-int/lit8 v2, v2, -0x1

    goto :goto_50

    :cond_b8
    new-instance v1, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v1, v3, v12, v2}, Ljava/lang/String;-><init>([BII)V

    :goto_51
    check-cast v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    iget-object v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    const/16 v3, 0x86

    if-eq v5, v3, :cond_be

    const/16 v3, 0x4282

    if-eq v5, v3, :cond_bb

    const/16 v3, 0x536e

    if-eq v5, v3, :cond_ba

    const v3, 0x22b59c

    if-eq v5, v3, :cond_b9

    :goto_52
    const/4 v12, 0x0

    goto :goto_54

    :cond_b9
    invoke-virtual {v2, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-object v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Z:Ljava/lang/String;

    goto :goto_52

    :cond_ba
    invoke-virtual {v2, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-object v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b:Ljava/lang/String;

    goto :goto_52

    :cond_bb
    const-string v3, "webm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bd

    const-string v4, "matroska"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    goto :goto_53

    :cond_bc
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DocType "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_bd
    :goto_53
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->w:Z

    goto :goto_52

    :cond_be
    invoke-virtual {v2, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-object v1, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    goto :goto_52

    :goto_54
    iput v12, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_e

    :cond_bf
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String element size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_c0
    iget-wide v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_c1

    iget-object v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v5, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->f:I

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->b(Landroidx/media3/extractor/ExtractorInput;I)J

    move-result-wide v1

    check-cast v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    invoke-virtual {v4, v5, v1, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->b(IJ)V

    const/4 v12, 0x0

    iput v12, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_e

    :cond_c1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid integer size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_c2
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    add-long/2addr v5, v3

    new-instance v1, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v7, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->f:I

    invoke-direct {v1, v7, v5, v6}, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJ)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->f:I

    iget-wide v5, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    check-cast v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->c(IJJ)V

    const/4 v12, 0x0

    iput v12, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_e

    :cond_c3
    const/4 v12, 0x0

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    long-to-int v2, v2

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iput v12, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_21
        -0x7ce7f3b0 -> :sswitch_20
        -0x76567dc0 -> :sswitch_1f
        -0x6a615338 -> :sswitch_1e
        -0x672350af -> :sswitch_1d
        -0x585f4fce -> :sswitch_1c
        -0x585f4fcd -> :sswitch_1b
        -0x51dc40b2 -> :sswitch_1a
        -0x37a9c464 -> :sswitch_19
        -0x2016c535 -> :sswitch_18
        -0x2016c4e5 -> :sswitch_17
        -0x19552dbd -> :sswitch_16
        -0x1538b2ba -> :sswitch_15
        0x3c02325 -> :sswitch_14
        0x3c02353 -> :sswitch_13
        0x3c030c5 -> :sswitch_12
        0x4e81333 -> :sswitch_11
        0x4e86155 -> :sswitch_10
        0x4e86156 -> :sswitch_f
        0x5e8da3e -> :sswitch_e
        0x1a8350d6 -> :sswitch_d
        0x2056f406 -> :sswitch_c
        0x25e26ee2 -> :sswitch_b
        0x2b45174d -> :sswitch_a
        0x2b453ce4 -> :sswitch_9
        0x2c0618eb -> :sswitch_8
        0x2c065c6b -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_43
        -0x7ce7f3b0 -> :sswitch_42
        -0x76567dc0 -> :sswitch_41
        -0x6a615338 -> :sswitch_40
        -0x672350af -> :sswitch_3f
        -0x585f4fce -> :sswitch_3e
        -0x585f4fcd -> :sswitch_3d
        -0x51dc40b2 -> :sswitch_3c
        -0x37a9c464 -> :sswitch_3b
        -0x2016c535 -> :sswitch_3a
        -0x2016c4e5 -> :sswitch_39
        -0x19552dbd -> :sswitch_38
        -0x1538b2ba -> :sswitch_37
        0x3c02325 -> :sswitch_36
        0x3c02353 -> :sswitch_35
        0x3c030c5 -> :sswitch_34
        0x4e81333 -> :sswitch_33
        0x4e86155 -> :sswitch_32
        0x4e86156 -> :sswitch_31
        0x5e8da3e -> :sswitch_30
        0x1a8350d6 -> :sswitch_2f
        0x2056f406 -> :sswitch_2e
        0x25e26ee2 -> :sswitch_2d
        0x2b45174d -> :sswitch_2c
        0x2b453ce4 -> :sswitch_2b
        0x2c0618eb -> :sswitch_2a
        0x2c065c6b -> :sswitch_29
        0x32fdf009 -> :sswitch_28
        0x3e4ca2d8 -> :sswitch_27
        0x54c61e47 -> :sswitch_26
        0x6bd6c624 -> :sswitch_25
        0x7446132a -> :sswitch_24
        0x7446b0a6 -> :sswitch_23
        0x744ad97d -> :sswitch_22
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1e
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_11
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x83 -> :sswitch_48
        0x86 -> :sswitch_47
        0x88 -> :sswitch_48
        0x9b -> :sswitch_48
        0x9f -> :sswitch_48
        0xa0 -> :sswitch_46
        0xa1 -> :sswitch_45
        0xa3 -> :sswitch_45
        0xa5 -> :sswitch_45
        0xa6 -> :sswitch_46
        0xae -> :sswitch_46
        0xb0 -> :sswitch_48
        0xb3 -> :sswitch_48
        0xb5 -> :sswitch_44
        0xb7 -> :sswitch_46
        0xba -> :sswitch_48
        0xbb -> :sswitch_46
        0xd7 -> :sswitch_48
        0xe0 -> :sswitch_46
        0xe1 -> :sswitch_46
        0xe7 -> :sswitch_48
        0xee -> :sswitch_48
        0xf0 -> :sswitch_48
        0xf1 -> :sswitch_48
        0xf7 -> :sswitch_48
        0xfb -> :sswitch_48
        0x41e4 -> :sswitch_46
        0x41e7 -> :sswitch_48
        0x41ed -> :sswitch_45
        0x4254 -> :sswitch_48
        0x4255 -> :sswitch_45
        0x4282 -> :sswitch_47
        0x4285 -> :sswitch_48
        0x42f7 -> :sswitch_48
        0x4489 -> :sswitch_44
        0x47e1 -> :sswitch_48
        0x47e2 -> :sswitch_45
        0x47e7 -> :sswitch_46
        0x47e8 -> :sswitch_48
        0x4dbb -> :sswitch_46
        0x5031 -> :sswitch_48
        0x5032 -> :sswitch_48
        0x5034 -> :sswitch_46
        0x5035 -> :sswitch_46
        0x536e -> :sswitch_47
        0x53ab -> :sswitch_45
        0x53ac -> :sswitch_48
        0x53b8 -> :sswitch_48
        0x54b0 -> :sswitch_48
        0x54b2 -> :sswitch_48
        0x54ba -> :sswitch_48
        0x55aa -> :sswitch_48
        0x55b0 -> :sswitch_46
        0x55b2 -> :sswitch_48
        0x55b9 -> :sswitch_48
        0x55ba -> :sswitch_48
        0x55bb -> :sswitch_48
        0x55bc -> :sswitch_48
        0x55bd -> :sswitch_48
        0x55d0 -> :sswitch_46
        0x55d1 -> :sswitch_44
        0x55d2 -> :sswitch_44
        0x55d3 -> :sswitch_44
        0x55d4 -> :sswitch_44
        0x55d5 -> :sswitch_44
        0x55d6 -> :sswitch_44
        0x55d7 -> :sswitch_44
        0x55d8 -> :sswitch_44
        0x55d9 -> :sswitch_44
        0x55da -> :sswitch_44
        0x55ee -> :sswitch_48
        0x56aa -> :sswitch_48
        0x56bb -> :sswitch_48
        0x6240 -> :sswitch_46
        0x6264 -> :sswitch_48
        0x63a2 -> :sswitch_45
        0x6d80 -> :sswitch_46
        0x75a1 -> :sswitch_46
        0x75a2 -> :sswitch_48
        0x7670 -> :sswitch_46
        0x7671 -> :sswitch_48
        0x7672 -> :sswitch_45
        0x7673 -> :sswitch_44
        0x7674 -> :sswitch_44
        0x7675 -> :sswitch_44
        0x22b59c -> :sswitch_47
        0x23e383 -> :sswitch_48
        0x2ad7b1 -> :sswitch_48
        0x114d9b74 -> :sswitch_46
        0x1549a966 -> :sswitch_46
        0x1654ae6b -> :sswitch_46
        0x18538067 -> :sswitch_46
        0x1a45dfa3 -> :sswitch_46
        0x1c53bb6b -> :sswitch_46
        0x1f43b675 -> :sswitch_46
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x55d1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7673
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;I)J
    .locals 5

    iget-object p0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->a:[B

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0, p2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    const-wide/16 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v1, p1

    aget-byte p1, p0, v0

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method
