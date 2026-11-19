.class public final Landroidx/media3/extractor/avi/AviExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;,
        Landroidx/media3/extractor/avi/AviExtractor$AviSeekMap;,
        Landroidx/media3/extractor/avi/AviExtractor$Flags;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

.field public final c:Z

.field public final d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public e:I

.field public f:Landroidx/media3/extractor/ExtractorOutput;

.field public g:Landroidx/media3/extractor/avi/AviMainHeaderChunk;

.field public h:J

.field public i:[Landroidx/media3/extractor/avi/ChunkReader;

.field public j:J

.field public k:Landroidx/media3/extractor/avi/ChunkReader;

.field public l:I

.field public m:J

.field public n:J

.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 58
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/avi/AviExtractor;-><init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/extractor/avi/AviExtractor;->d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/4 p2, 0x1

    and-int/2addr p1, p2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Landroidx/media3/extractor/avi/AviExtractor;->c:Z

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->b:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    new-instance p1, Landroidx/media3/extractor/NoOpExtractorOutput;

    invoke-direct {p1}, Landroidx/media3/extractor/NoOpExtractorOutput;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    new-array p1, v0, [Landroidx/media3/extractor/avi/ChunkReader;

    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->m:J

    iput-wide p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->n:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->l:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->h:J

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 5

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    const/4 p3, 0x0

    iput-object p3, p0, Landroidx/media3/extractor/avi/AviExtractor;->k:Landroidx/media3/extractor/avi/ChunkReader;

    iget-object p3, p0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    aget-object v2, p3, v1

    iget v3, v2, Landroidx/media3/extractor/avi/ChunkReader;->k:I

    if-nez v3, :cond_0

    iput v0, v2, Landroidx/media3/extractor/avi/ChunkReader;->i:I

    goto :goto_1

    :cond_0
    iget-object v3, v2, Landroidx/media3/extractor/avi/ChunkReader;->m:[J

    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4}, Landroidx/media3/common/util/Util;->f([JJZ)I

    move-result v3

    iget-object v4, v2, Landroidx/media3/extractor/avi/ChunkReader;->n:[I

    aget v3, v4, v3

    iput v3, v2, Landroidx/media3/extractor/avi/ChunkReader;->i:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    array-length p1, p1

    if-nez p1, :cond_2

    iput v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    return-void

    :cond_2
    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    return-void

    :cond_3
    const/4 p1, 0x6

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    iget-boolean v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/avi/AviExtractor;->d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3

    iget-object p0, p0, Landroidx/media3/extractor/avi/AviExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1, v0}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result p1

    const v0, 0x46464952

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result p0

    const p1, 0x20495641

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    cmp-long v2, v9, v7

    if-ltz v2, :cond_0

    const-wide/32 v11, 0x40000

    add-long/2addr v11, v7

    cmp-long v2, v9, v11

    if-lez v2, :cond_1

    :cond_0
    move-object/from16 v2, p2

    goto :goto_0

    :cond_1
    sub-long/2addr v9, v7

    long-to-int v2, v9

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    goto :goto_1

    :goto_0
    iput-wide v9, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v6

    :goto_2
    iput-wide v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    if-eqz v2, :cond_3

    return v3

    :cond_3
    iget v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    const v7, 0x6c726468

    const/4 v8, 0x6

    const/16 v10, 0x10

    const v11, 0x69766f6d

    const/4 v13, 0x4

    const v14, 0x5453494c

    const/16 v15, 0x8

    const-wide/16 v16, 0x8

    move-wide/from16 v18, v4

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 p2, 0x3

    iget-object v9, v0, Landroidx/media3/extractor/avi/AviExtractor;->b:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    const/16 v20, 0x2

    iget-object v12, v0, Landroidx/media3/extractor/avi/AviExtractor;->a:Landroidx/media3/common/util/ParsableByteArray;

    packed-switch v2, :pswitch_data_0

    invoke-static {}, La61;->h()V

    return v6

    :pswitch_0
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/media3/extractor/avi/AviExtractor;->n:J

    cmp-long v2, v7, v9

    if-ltz v2, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    iget-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->k:Landroidx/media3/extractor/avi/ChunkReader;

    if-eqz v2, :cond_a

    iget v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->h:I

    iget-object v7, v2, Landroidx/media3/extractor/avi/ChunkReader;->b:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v7, v1, v5, v6}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    move-result v1

    sub-int/2addr v5, v1

    iput v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->h:I

    if-nez v5, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v6

    :goto_3
    if-eqz v1, :cond_8

    iget v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->g:I

    if-lez v5, :cond_7

    iget-object v7, v2, Landroidx/media3/extractor/avi/ChunkReader;->b:Landroidx/media3/extractor/TrackOutput;

    iget v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->i:I

    iget-wide v8, v2, Landroidx/media3/extractor/avi/ChunkReader;->e:J

    int-to-long v10, v5

    mul-long/2addr v8, v10

    iget v10, v2, Landroidx/media3/extractor/avi/ChunkReader;->f:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    iget-object v10, v2, Landroidx/media3/extractor/avi/ChunkReader;->n:[I

    invoke-static {v10, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-ltz v5, :cond_6

    move v10, v3

    goto :goto_4

    :cond_6
    move v10, v6

    :goto_4
    iget v11, v2, Landroidx/media3/extractor/avi/ChunkReader;->g:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_7
    iget v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->i:I

    add-int/2addr v5, v3

    iput v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->i:I

    :cond_8
    if-eqz v1, :cond_9

    iput-object v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->k:Landroidx/media3/extractor/avi/ChunkReader;

    :cond_9
    return v6

    :cond_a
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    and-long/2addr v7, v9

    cmp-long v2, v7, v9

    if-nez v2, :cond_b

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    :cond_b
    iget-object v2, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v6, v5, v2}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-virtual {v12, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v2

    if-ne v2, v14, :cond_d

    invoke-virtual {v12, v15}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v0

    if-ne v0, v11, :cond_c

    move v15, v5

    :cond_c
    invoke-interface {v1, v15}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    return v6

    :cond_d
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v3

    const v5, 0x4b4e554a    # 1.352225E7f

    if-ne v2, v5, :cond_e

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long v1, v1, v16

    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    return v6

    :cond_e
    invoke-interface {v1, v15}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    iget-object v5, v0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    array-length v7, v5

    move v8, v6

    :goto_5
    if-ge v8, v7, :cond_11

    aget-object v9, v5, v8

    iget v10, v9, Landroidx/media3/extractor/avi/ChunkReader;->c:I

    if-eq v10, v2, :cond_10

    iget v10, v9, Landroidx/media3/extractor/avi/ChunkReader;->d:I

    if-ne v10, v2, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_10
    :goto_6
    move-object v4, v9

    :cond_11
    if-nez v4, :cond_12

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    return v6

    :cond_12
    iput v3, v4, Landroidx/media3/extractor/avi/ChunkReader;->g:I

    iput v3, v4, Landroidx/media3/extractor/avi/ChunkReader;->h:I

    iput-object v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->k:Landroidx/media3/extractor/avi/ChunkReader;

    return v6

    :pswitch_1
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget v5, v0, Landroidx/media3/extractor/avi/AviExtractor;->o:I

    invoke-direct {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v5, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v7, v0, Landroidx/media3/extractor/avi/AviExtractor;->o:I

    invoke-interface {v1, v5, v6, v7}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v1

    if-ge v1, v10, :cond_13

    const-wide/16 v11, 0x0

    goto :goto_8

    :cond_13
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v5

    int-to-long v14, v5

    iget-wide v11, v0, Landroidx/media3/extractor/avi/AviExtractor;->m:J

    cmp-long v5, v14, v11

    if-lez v5, :cond_14

    const-wide/16 v11, 0x0

    goto :goto_7

    :cond_14
    add-long v11, v11, v16

    :goto_7
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    :goto_8
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v1

    if-lt v1, v10, :cond_1d

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v1

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v5

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v7

    int-to-long v14, v7

    add-long/2addr v14, v11

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    iget-object v7, v0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    array-length v9, v7

    move v4, v6

    :goto_9
    if-ge v4, v9, :cond_16

    aget-object v13, v7, v4

    move/from16 v22, v6

    iget v6, v13, Landroidx/media3/extractor/avi/ChunkReader;->c:I

    if-eq v6, v1, :cond_17

    iget v6, v13, Landroidx/media3/extractor/avi/ChunkReader;->d:I

    if-ne v6, v1, :cond_15

    goto :goto_a

    :cond_15
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v22

    const/4 v13, 0x4

    goto :goto_9

    :cond_16
    move/from16 v22, v6

    const/4 v13, 0x0

    :cond_17
    :goto_a
    if-nez v13, :cond_18

    :goto_b
    move/from16 v6, v22

    const/4 v4, 0x0

    const/4 v13, 0x4

    goto :goto_8

    :cond_18
    and-int/lit8 v1, v5, 0x10

    if-ne v1, v10, :cond_19

    move v1, v3

    goto :goto_c

    :cond_19
    move/from16 v1, v22

    :goto_c
    iget-wide v4, v13, Landroidx/media3/extractor/avi/ChunkReader;->l:J

    cmp-long v4, v4, v18

    if-nez v4, :cond_1a

    iput-wide v14, v13, Landroidx/media3/extractor/avi/ChunkReader;->l:J

    :cond_1a
    if-eqz v1, :cond_1c

    iget v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->k:I

    iget-object v4, v13, Landroidx/media3/extractor/avi/ChunkReader;->n:[I

    array-length v4, v4

    if-ne v1, v4, :cond_1b

    iget-object v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->m:[J

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->m:[J

    iget-object v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->n:[I

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->n:[I

    :cond_1b
    iget-object v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->m:[J

    iget v4, v13, Landroidx/media3/extractor/avi/ChunkReader;->k:I

    aput-wide v14, v1, v4

    iget-object v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->n:[I

    iget v5, v13, Landroidx/media3/extractor/avi/ChunkReader;->j:I

    aput v5, v1, v4

    add-int/2addr v4, v3

    iput v4, v13, Landroidx/media3/extractor/avi/ChunkReader;->k:I

    :cond_1c
    iget v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->j:I

    add-int/2addr v1, v3

    iput v1, v13, Landroidx/media3/extractor/avi/ChunkReader;->j:I

    goto :goto_b

    :cond_1d
    move/from16 v22, v6

    iget-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    array-length v2, v1

    move/from16 v4, v22

    :goto_d
    if-ge v4, v2, :cond_1f

    aget-object v5, v1, v4

    iget-object v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->m:[J

    iget v7, v5, Landroidx/media3/extractor/avi/ChunkReader;->k:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->m:[J

    iget-object v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->n:[I

    iget v7, v5, Landroidx/media3/extractor/avi/ChunkReader;->k:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->n:[I

    iget v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->c:I

    const/high16 v7, 0x62770000

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_1e

    iget-object v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->a:Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    iget v6, v6, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->f:I

    if-eqz v6, :cond_1e

    iget v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->k:I

    if-lez v6, :cond_1e

    iput v6, v5, Landroidx/media3/extractor/avi/ChunkReader;->f:I

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1f
    iput-boolean v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->p:Z

    iget-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    array-length v1, v1

    iget-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    iget-wide v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->h:J

    if-nez v1, :cond_20

    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v1, v3, v4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_e

    :cond_20
    new-instance v1, Landroidx/media3/extractor/avi/AviExtractor$AviSeekMap;

    invoke-direct {v1, v0, v3, v4}, Landroidx/media3/extractor/avi/AviExtractor$AviSeekMap;-><init>(Landroidx/media3/extractor/avi/AviExtractor;J)V

    invoke-interface {v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    :goto_e
    iput v8, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    iget-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->m:J

    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    return v22

    :pswitch_2
    move/from16 v22, v6

    iget-object v2, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    move/from16 v4, v22

    invoke-interface {v1, v2, v4, v15}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v12, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v2

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v3

    const v5, 0x31786469

    if-ne v2, v5, :cond_21

    const/4 v1, 0x5

    iput v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    iput v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->o:I

    return v4

    :cond_21
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    int-to-long v5, v3

    add-long/2addr v1, v5

    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    return v4

    :pswitch_3
    move v4, v6

    iget-wide v6, v0, Landroidx/media3/extractor/avi/AviExtractor;->m:J

    cmp-long v2, v6, v18

    if-eqz v2, :cond_22

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    move v13, v10

    iget-wide v10, v0, Landroidx/media3/extractor/avi/AviExtractor;->m:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_23

    iput-wide v10, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    return v4

    :cond_22
    move v13, v10

    :cond_23
    iget-object v6, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v4, v5, v6}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    invoke-virtual {v12, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v6

    iput v6, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->a:I

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v6

    iput v6, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->b:I

    iput v4, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->c:I

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v6

    iget v7, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->a:I

    const v10, 0x46464952

    if-ne v7, v10, :cond_24

    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    return v4

    :cond_24
    if-ne v7, v14, :cond_25

    const v2, 0x69766f6d

    if-eq v6, v2, :cond_26

    :cond_25
    const/4 v4, 0x0

    goto :goto_f

    :cond_26
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->m:J

    iget v2, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->b:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    add-long v4, v4, v16

    iput-wide v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->n:J

    iget-boolean v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->p:Z

    if-nez v2, :cond_28

    iget-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->g:Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, Landroidx/media3/extractor/avi/AviMainHeaderChunk;->b:I

    and-int/2addr v2, v13

    if-ne v2, v13, :cond_27

    const/4 v2, 0x4

    iput v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    iget-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->n:J

    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    const/16 v22, 0x0

    return v22

    :cond_27
    iget-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v4, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v5, v0, Landroidx/media3/extractor/avi/AviExtractor;->h:J

    invoke-direct {v4, v5, v6}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v4}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->p:Z

    :cond_28
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    iput v8, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    const/4 v4, 0x0

    return v4

    :goto_f
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget v3, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->b:I

    int-to-long v5, v3

    add-long/2addr v1, v5

    add-long v1, v1, v16

    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->j:J

    return v4

    :pswitch_4
    move v4, v6

    iget v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->l:I

    const/16 v21, 0x4

    add-int/lit8 v2, v2, -0x4

    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v5, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v6, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v6, v4, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-static {v7, v5}, Landroidx/media3/extractor/avi/ListChunk;->b(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/ListChunk;

    move-result-object v1

    iget v2, v1, Landroidx/media3/extractor/avi/ListChunk;->b:I

    if-ne v2, v7, :cond_33

    const-class v2, Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/avi/ListChunk;->a(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    if-eqz v2, :cond_32

    iput-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->g:Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    iget v4, v2, Landroidx/media3/extractor/avi/AviMainHeaderChunk;->c:I

    int-to-long v4, v4

    iget v2, v2, Landroidx/media3/extractor/avi/AviMainHeaderChunk;->a:I

    int-to-long v6, v2

    mul-long/2addr v4, v6

    iput-wide v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->h:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Landroidx/media3/extractor/avi/ListChunk;->a:Lcom/google/common/collect/ImmutableList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList;->v(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/avi/AviChunk;

    invoke-interface {v5}, Landroidx/media3/extractor/avi/AviChunk;->getType()I

    move-result v6

    const v7, 0x6c727473

    if-ne v6, v7, :cond_30

    check-cast v5, Landroidx/media3/extractor/avi/ListChunk;

    add-int/lit8 v6, v4, 0x1

    const-class v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    invoke-virtual {v5, v7}, Landroidx/media3/extractor/avi/ListChunk;->a(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    const-class v8, Landroidx/media3/extractor/avi/StreamFormatChunk;

    invoke-virtual {v5, v8}, Landroidx/media3/extractor/avi/ListChunk;->a(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/avi/StreamFormatChunk;

    if-nez v7, :cond_2a

    const-string v4, "Missing Stream Header"

    invoke-static {v4}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_29
    :goto_11
    const/4 v8, 0x0

    goto :goto_12

    :cond_2a
    if-nez v8, :cond_2b

    const-string v4, "Missing Stream Format"

    invoke-static {v4}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_11

    :cond_2b
    iget v9, v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->d:I

    int-to-long v10, v9

    iget v9, v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->b:I

    int-to-long v12, v9

    const-wide/32 v14, 0xf4240

    mul-long/2addr v12, v14

    iget v9, v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->c:I

    int-to-long v14, v9

    sget-object v9, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v10 .. v16}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    iget-object v8, v8, Landroidx/media3/extractor/avi/StreamFormatChunk;->a:Landroidx/media3/common/Format;

    invoke-virtual {v8}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget v12, v7, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->e:I

    if-eqz v12, :cond_2c

    iput v12, v11, Landroidx/media3/common/Format$Builder;->o:I

    :cond_2c
    const-class v12, Landroidx/media3/extractor/avi/StreamNameChunk;

    invoke-virtual {v5, v12}, Landroidx/media3/extractor/avi/ListChunk;->a(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/avi/StreamNameChunk;

    if-eqz v5, :cond_2d

    iget-object v5, v5, Landroidx/media3/extractor/avi/StreamNameChunk;->a:Ljava/lang/String;

    iput-object v5, v11, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    :cond_2d
    iget-object v5, v8, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_2e

    move/from16 v8, v20

    if-ne v5, v8, :cond_29

    :cond_2e
    iget-object v8, v0, Landroidx/media3/extractor/avi/AviExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v8, v4, v5}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v5

    new-instance v8, Landroidx/media3/common/Format;

    invoke-direct {v8, v11}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {v5, v8}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    invoke-interface {v5, v9, v10}, Landroidx/media3/extractor/TrackOutput;->e(J)V

    iget-wide v11, v0, Landroidx/media3/extractor/avi/AviExtractor;->h:J

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Landroidx/media3/extractor/avi/AviExtractor;->h:J

    new-instance v8, Landroidx/media3/extractor/avi/ChunkReader;

    invoke-direct {v8, v4, v7, v5}, Landroidx/media3/extractor/avi/ChunkReader;-><init>(ILandroidx/media3/extractor/avi/AviStreamHeaderChunk;Landroidx/media3/extractor/TrackOutput;)V

    :goto_12
    if-eqz v8, :cond_2f

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    move v4, v6

    :cond_30
    const/16 v20, 0x2

    goto/16 :goto_10

    :cond_31
    const/4 v4, 0x0

    new-array v1, v4, [Landroidx/media3/extractor/avi/ChunkReader;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/extractor/avi/ChunkReader;

    iput-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->i:[Landroidx/media3/extractor/avi/ChunkReader;

    iget-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    move/from16 v1, p2

    iput v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    return v4

    :cond_32
    const-string v0, "AviHeader not found"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_33
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected header list type "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_5
    iget-object v2, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v12, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v1

    iput v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->a:I

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v1

    iput v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->b:I

    iput v4, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->c:I

    iget v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->a:I

    if-ne v1, v14, :cond_35

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v1

    iput v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->c:I

    if-ne v1, v7, :cond_34

    iget v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->b:I

    iput v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->l:I

    const/4 v8, 0x2

    iput v8, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    return v4

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hdrl expected, found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_35
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LIST expected, found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v9, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_6
    move-object v2, v4

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/avi/AviExtractor;->d(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iput v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->e:I

    const/16 v22, 0x0

    return v22

    :cond_36
    const-string v0, "AVI Header List not found"

    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final release()V
    .locals 0

    return-void
.end method
