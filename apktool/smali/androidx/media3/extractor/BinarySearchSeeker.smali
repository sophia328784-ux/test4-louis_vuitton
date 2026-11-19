.class public abstract Landroidx/media3/extractor/BinarySearchSeeker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;,
        Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;,
        Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;,
        Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;,
        Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;,
        Landroidx/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

.field public final b:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

.field public c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

.field public final d:I


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p2

    iput-object v0, p0, Landroidx/media3/extractor/BinarySearchSeeker;->b:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    move/from16 v0, p13

    iput v0, p0, Landroidx/media3/extractor/BinarySearchSeeker;->d:I

    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJJ)V

    iput-object v0, p0, Landroidx/media3/extractor/BinarySearchSeeker;->a:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-void
.end method

.method public static b(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I
    .locals 2

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p3, Landroidx/media3/extractor/PositionHolder;->a:J

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_0
    iget-object v3, v0, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->f:J

    iget-wide v6, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->g:J

    iget-wide v8, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->h:J

    sub-long/2addr v6, v4

    iget v10, v0, Landroidx/media3/extractor/BinarySearchSeeker;->d:I

    int-to-long v10, v10

    cmp-long v6, v6, v10

    const/4 v7, 0x0

    iget-object v10, v0, Landroidx/media3/extractor/BinarySearchSeeker;->b:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    if-gtz v6, :cond_0

    iput-object v7, v0, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-interface {v10}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->b()V

    invoke-static {v1, v4, v5, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->b(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_0
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v8, v4

    const-wide/16 v11, 0x0

    cmp-long v6, v4, v11

    if-ltz v6, :cond_6

    const-wide/32 v13, 0x40000

    cmp-long v6, v4, v13

    if-gtz v6, :cond_6

    long-to-int v4, v4

    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->b:J

    invoke-interface {v10, v1, v4, v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->a(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v4

    iget v5, v4, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->a:I

    move-wide v15, v11

    iget-wide v11, v4, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->b:J

    move-wide/from16 v17, v13

    iget-wide v13, v4, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->c:J

    const/4 v4, -0x3

    if-eq v5, v4, :cond_5

    const/4 v4, -0x2

    if-eq v5, v4, :cond_4

    const/4 v4, -0x1

    if-eq v5, v4, :cond_3

    if-nez v5, :cond_2

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    sub-long v3, v13, v3

    cmp-long v5, v3, v15

    if-ltz v5, :cond_1

    cmp-long v5, v3, v17

    if-gtz v5, :cond_1

    long-to-int v3, v3

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    :cond_1
    iput-object v7, v0, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-interface {v10}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->b()V

    invoke-static {v1, v13, v14, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->b(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_2
    const-string v0, "Invalid case"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_3
    iput-wide v11, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->e:J

    iput-wide v13, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->g:J

    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->b:J

    iget-wide v6, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->d:J

    iget-wide v8, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->f:J

    move-wide v15, v4

    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->c:J

    move-wide/from16 v25, v4

    move-wide/from16 v17, v6

    move-wide/from16 v21, v8

    move-wide/from16 v19, v11

    move-wide/from16 v23, v13

    invoke-static/range {v15 .. v26}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->a(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->h:J

    goto/16 :goto_0

    :cond_4
    move-wide v4, v11

    move-wide v6, v13

    iput-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->d:J

    iput-wide v6, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->f:J

    iget-wide v8, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->b:J

    iget-wide v10, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->e:J

    iget-wide v12, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->g:J

    iget-wide v14, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->c:J

    move-wide/from16 v17, v4

    move-wide/from16 v21, v6

    move-wide/from16 v19, v10

    move-wide/from16 v23, v12

    move-wide/from16 v25, v14

    move-wide v15, v8

    invoke-static/range {v15 .. v26}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->a(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->h:J

    goto/16 :goto_0

    :cond_5
    iput-object v7, v0, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-interface {v10}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->b()V

    invoke-static {v1, v8, v9, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->b(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_6
    invoke-static {v1, v8, v9, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->b(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public final c(J)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->a:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    iget-object v4, v0, Landroidx/media3/extractor/BinarySearchSeeker;->a:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    iget-object v5, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->a:Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;

    invoke-interface {v5, v2, v3}, Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;->a(J)J

    move-result-wide v5

    move-wide v8, v5

    iget-wide v6, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->c:J

    move-wide v10, v8

    iget-wide v8, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->d:J

    move-wide v12, v10

    iget-wide v10, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->e:J

    move-wide v14, v12

    iget-wide v12, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->f:J

    iget-wide v4, v4, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->g:J

    move-wide/from16 v16, v14

    move-wide v14, v4

    move-wide/from16 v4, v16

    invoke-direct/range {v1 .. v15}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;-><init>(JJJJJJJ)V

    iput-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    return-void
.end method
