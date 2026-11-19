.class final Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;
.super Landroidx/media3/extractor/BinarySearchSeeker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;IJJ)V
    .locals 16

    move-object/from16 v0, p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    new-instance v3, Lfw;

    const/4 v2, 0x3

    invoke-direct {v3, v0, v2}, Lfw;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;

    move/from16 v2, p2

    invoke-direct {v4, v0, v2}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;I)V

    invoke-virtual {v0}, Landroidx/media3/extractor/FlacStreamMetadata;->b()J

    move-result-wide v5

    iget-wide v7, v0, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    iget v2, v0, Landroidx/media3/extractor/FlacStreamMetadata;->d:I

    if-lez v2, :cond_0

    int-to-long v9, v2

    int-to-long v11, v1

    add-long/2addr v9, v11

    const-wide/16 v11, 0x2

    div-long/2addr v9, v11

    const-wide/16 v11, 0x1

    :goto_0
    add-long/2addr v9, v11

    move-wide v13, v9

    goto :goto_2

    :cond_0
    iget v2, v0, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    iget v9, v0, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    if-ne v2, v9, :cond_1

    if-lez v2, :cond_1

    int-to-long v9, v2

    goto :goto_1

    :cond_1
    const-wide/16 v9, 0x1000

    :goto_1
    iget v2, v0, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    int-to-long v11, v2

    mul-long/2addr v9, v11

    iget v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->h:I

    int-to-long v11, v0

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x8

    div-long/2addr v9, v11

    const-wide/16 v11, 0x40

    goto :goto_0

    :goto_2
    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v2, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-direct/range {v2 .. v15}, Landroidx/media3/extractor/BinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V

    return-void
.end method
