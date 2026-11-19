.class public final Landroidx/media3/extractor/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/flac/FlacExtractor$Flags;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public final c:Z

.field public final d:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

.field public e:Landroidx/media3/extractor/ExtractorOutput;

.field public f:Landroidx/media3/extractor/TrackOutput;

.field public g:I

.field public h:Landroidx/media3/common/Metadata;

.field public i:Landroidx/media3/extractor/FlacStreamMetadata;

.field public j:I

.field public k:I

.field public l:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

.field public m:I

.field public n:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->a:[B

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->c:Z

    new-instance p1, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {p1}, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->d:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    iput v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->g:I

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->g:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->l:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Landroidx/media3/extractor/BinarySearchSeeker;->c(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->n:J

    iput p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->m:I

    iget-object p0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->e:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->f:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 4

    new-instance p0, Landroidx/media3/extractor/Id3Peeker;

    invoke-direct {p0}, Landroidx/media3/extractor/Id3Peeker;-><init>()V

    sget-object v0, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->b:Laz;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/extractor/Id3Peeker;->a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;I)Landroidx/media3/common/Metadata;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    array-length p0, p0

    :cond_0
    new-instance p0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    invoke-virtual {p1, v1, v1, v0, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide p0

    const-wide/32 v2, 0x664c6143

    cmp-long p0, p0, v2

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_25

    iget-object v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->a:[B

    const/4 v7, 0x2

    if-eq v2, v4, :cond_24

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v2, v7, :cond_22

    const/4 v11, 0x7

    if-eq v2, v9, :cond_19

    const-wide/16 v12, -0x1

    const/4 v6, 0x5

    if-eq v2, v8, :cond_15

    if-ne v2, v6, :cond_14

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->f:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->l:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    if-eqz v2, :cond_0

    iget-object v6, v2, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v6, :cond_0

    move-object/from16 v6, p2

    invoke-virtual {v2, v1, v6}, Landroidx/media3/extractor/BinarySearchSeeker;->a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_0
    iget-wide v8, v0, Landroidx/media3/extractor/flac/FlacExtractor;->n:J

    cmp-long v2, v8, v12

    const/4 v6, -0x1

    if-nez v2, :cond_6

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    new-array v8, v4, [B

    invoke-interface {v1, v5, v4, v8}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    aget-byte v8, v8, v5

    and-int/2addr v8, v4

    if-ne v8, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    if-eqz v4, :cond_2

    move v10, v11

    goto :goto_1

    :cond_2
    const/4 v10, 0x6

    :goto_1
    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v7, v10}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v8, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    move v9, v5

    :goto_2
    if-ge v9, v10, :cond_4

    sub-int v11, v10, v9

    invoke-interface {v1, v9, v11, v8}, Landroidx/media3/extractor/ExtractorInput;->d(II[B)I

    move-result v11

    if-ne v11, v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v9, v11

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v7, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    new-instance v1, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {v1}, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    invoke-static {v7, v2, v4, v1}, Landroidx/media3/extractor/FlacFrameReader;->a(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ZLandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v1, v1, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->a:J

    iput-wide v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->n:J

    return v5

    :cond_5
    invoke-static {v3, v3}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_6
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->b:Landroidx/media3/common/util/ParsableByteArray;

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    const-wide/32 v7, 0xf4240

    const v9, 0x8000

    if-ge v3, v9, :cond_9

    iget-object v10, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    sub-int/2addr v9, v3

    invoke-interface {v1, v10, v3, v9}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v1

    if-ne v1, v6, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_4
    if-nez v4, :cond_8

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v1

    if-nez v1, :cond_a

    iget-wide v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->n:J

    mul-long/2addr v1, v7

    iget-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    sget-object v4, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget v3, v3, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    int-to-long v3, v3

    div-long v8, v1, v3

    iget-object v7, v0, Landroidx/media3/extractor/flac/FlacExtractor;->f:Landroidx/media3/extractor/TrackOutput;

    iget v11, v0, Landroidx/media3/extractor/flac/FlacExtractor;->m:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x1

    invoke-interface/range {v7 .. v13}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return v6

    :cond_9
    move v4, v5

    :cond_a
    :goto_5
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->m:I

    iget v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:I

    if-ge v3, v6, :cond_b

    sub-int/2addr v6, v3

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_b
    iget-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    :goto_6
    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    const/16 v9, 0x10

    sub-int/2addr v6, v9

    iget-object v10, v0, Landroidx/media3/extractor/flac/FlacExtractor;->d:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    if-gt v3, v6, :cond_d

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v11, v0, Landroidx/media3/extractor/flac/FlacExtractor;->k:I

    invoke-static {v2, v6, v11, v10}, Landroidx/media3/extractor/FlacFrameReader;->b(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-wide v3, v10, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->a:J

    goto :goto_a

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    if-eqz v4, :cond_11

    :goto_7
    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    iget v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:I

    sub-int v6, v4, v6

    if-gt v3, v6, :cond_10

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    :try_start_0
    iget-object v4, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->k:I

    invoke-static {v2, v4, v6, v10}, Landroidx/media3/extractor/FlacFrameReader;->b(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move v4, v5

    :goto_8
    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget v11, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    if-le v6, v11, :cond_e

    move v4, v5

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-wide v3, v10, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->a:J

    goto :goto_a

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_10
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto :goto_9

    :cond_11
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    :goto_9
    move-wide v3, v12

    :goto_a
    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    sub-int/2addr v6, v1

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->f:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v6, v2}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->m:I

    add-int/2addr v1, v6

    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->m:I

    cmp-long v6, v3, v12

    if-eqz v6, :cond_12

    iget-wide v10, v0, Landroidx/media3/extractor/flac/FlacExtractor;->n:J

    mul-long/2addr v10, v7

    iget-object v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget v6, v6, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    int-to-long v6, v6

    div-long v15, v10, v6

    iget-object v14, v0, Landroidx/media3/extractor/flac/FlacExtractor;->f:Landroidx/media3/extractor/TrackOutput;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    move/from16 v18, v1

    invoke-interface/range {v14 .. v20}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput v5, v0, Landroidx/media3/extractor/flac/FlacExtractor;->m:I

    iput-wide v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->n:J

    :cond_12
    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    array-length v0, v0

    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v1

    if-ge v1, v9, :cond_13

    if-ge v0, v9, :cond_13

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v0

    iget-object v1, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-static {v1, v3, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    :cond_13
    return v5

    :cond_14
    invoke-static {}, Lr81;->b()V

    return v5

    :cond_15
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v5, v7, v4}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v2

    shr-int/lit8 v4, v2, 0x2

    const/16 v7, 0x3ffe

    if-ne v4, v7, :cond_18

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    iput v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->k:I

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->e:Landroidx/media3/extractor/ExtractorOutput;

    sget-object v3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v19

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v1, v15, Landroidx/media3/extractor/FlacStreamMetadata;->k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    if-eqz v1, :cond_16

    iget-object v1, v1, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->a:[J

    array-length v1, v1

    if-lez v1, :cond_16

    new-instance v1, Landroidx/media3/extractor/FlacSeekTableSeekMap;

    invoke-direct {v1, v15, v3, v4}, Landroidx/media3/extractor/FlacSeekTableSeekMap;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;J)V

    goto :goto_b

    :cond_16
    cmp-long v1, v19, v12

    if-eqz v1, :cond_17

    iget-wide v7, v15, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_17

    new-instance v14, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    iget v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->k:I

    move/from16 v16, v1

    move-wide/from16 v17, v3

    invoke-direct/range {v14 .. v20}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;IJJ)V

    iput-object v14, v0, Landroidx/media3/extractor/flac/FlacExtractor;->l:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    iget-object v1, v14, Landroidx/media3/extractor/BinarySearchSeeker;->a:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    goto :goto_b

    :cond_17
    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-virtual {v15}, Landroidx/media3/extractor/FlacStreamMetadata;->b()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_b
    invoke-interface {v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iput v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->g:I

    return v5

    :cond_18
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    const-string v0, "First frame does not start with sync code."

    invoke-static {v3, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_19
    new-instance v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;

    iget-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-direct {v2, v3}, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;)V

    move v3, v5

    :goto_c
    if-nez v3, :cond_21

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    new-instance v3, Landroidx/media3/common/util/ParsableBitArray;

    new-array v4, v8, [B

    invoke-direct {v3, v4}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iget-object v4, v3, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    invoke-interface {v1, v5, v8, v4}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v4

    invoke-virtual {v3, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v7

    const/16 v12, 0x18

    invoke-virtual {v3, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v3

    add-int/2addr v3, v8

    if-nez v7, :cond_1a

    const/16 v3, 0x26

    new-array v7, v3, [B

    invoke-interface {v1, v7, v5, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    new-instance v3, Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-direct {v3, v7, v8}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>([BI)V

    iput-object v3, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    move-object/from16 v26, v6

    goto/16 :goto_11

    :cond_1a
    iget-object v12, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    if-eqz v12, :cond_20

    iget-object v13, v12, Landroidx/media3/extractor/FlacStreamMetadata;->l:Landroidx/media3/common/Metadata;

    if-ne v7, v9, :cond_1b

    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v7, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v13, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v13, v5, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-static {v7}, Landroidx/media3/extractor/FlacMetadataReader;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    move-result-object v24

    new-instance v14, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v15, v12, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    iget v3, v12, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    iget v7, v12, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    iget v13, v12, Landroidx/media3/extractor/FlacStreamMetadata;->d:I

    iget v11, v12, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    iget v9, v12, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    iget v10, v12, Landroidx/media3/extractor/FlacStreamMetadata;->h:I

    move-object/from16 v26, v6

    iget-wide v5, v12, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    iget-object v12, v12, Landroidx/media3/extractor/FlacStreamMetadata;->l:Landroidx/media3/common/Metadata;

    move/from16 v16, v3

    move-wide/from16 v22, v5

    move/from16 v17, v7

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v19, v11

    move-object/from16 v25, v12

    move/from16 v18, v13

    invoke-direct/range {v14 .. v25}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    iput-object v14, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    goto/16 :goto_11

    :cond_1b
    move-object/from16 v26, v6

    if-ne v7, v8, :cond_1d

    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v5, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v6, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v5, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-static {v5, v7, v7}, Landroidx/media3/extractor/VorbisUtil;->b(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/extractor/VorbisUtil$CommentHeader;->a:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/extractor/VorbisUtil;->a(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v3

    if-nez v13, :cond_1c

    :goto_d
    move-object/from16 v24, v3

    goto :goto_e

    :cond_1c
    invoke-virtual {v13, v3}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v3

    goto :goto_d

    :goto_e
    new-instance v13, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v14, v12, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    iget v15, v12, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    iget v3, v12, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    iget v5, v12, Landroidx/media3/extractor/FlacStreamMetadata;->d:I

    iget v6, v12, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    iget v7, v12, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    iget v9, v12, Landroidx/media3/extractor/FlacStreamMetadata;->h:I

    iget-wide v10, v12, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    iget-object v12, v12, Landroidx/media3/extractor/FlacStreamMetadata;->k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v9

    move-wide/from16 v21, v10

    move-object/from16 v23, v12

    invoke-direct/range {v13 .. v24}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    iput-object v13, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    goto :goto_11

    :cond_1d
    const/4 v5, 0x6

    if-ne v7, v5, :cond_1f

    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v5, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v6, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v5, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-static {v5}, Landroidx/media3/extractor/metadata/flac/PictureFrame;->d(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/flac/PictureFrame;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    new-instance v5, Landroidx/media3/common/Metadata;

    invoke-direct {v5, v3}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    if-nez v13, :cond_1e

    :goto_f
    move-object/from16 v24, v5

    goto :goto_10

    :cond_1e
    invoke-virtual {v13, v5}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v5

    goto :goto_f

    :goto_10
    new-instance v13, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v14, v12, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    iget v15, v12, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    iget v3, v12, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    iget v5, v12, Landroidx/media3/extractor/FlacStreamMetadata;->d:I

    iget v6, v12, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    iget v7, v12, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    iget v9, v12, Landroidx/media3/extractor/FlacStreamMetadata;->h:I

    iget-wide v10, v12, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    iget-object v12, v12, Landroidx/media3/extractor/FlacStreamMetadata;->k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v9

    move-wide/from16 v21, v10

    move-object/from16 v23, v12

    invoke-direct/range {v13 .. v24}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    iput-object v13, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    goto :goto_11

    :cond_1f
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    :goto_11
    iget-object v3, v2, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iput-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    move v3, v4

    move-object/from16 v6, v26

    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v11, 0x7

    goto/16 :goto_c

    :cond_20
    invoke-static {}, Lct0;->c()V

    :goto_12
    const/16 v27, 0x0

    return v27

    :cond_21
    move-object/from16 v26, v6

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->c:I

    const/4 v5, 0x6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->j:I

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->h:Landroidx/media3/common/Metadata;

    move-object/from16 v3, v26

    invoke-virtual {v1, v3, v2}, Landroidx/media3/extractor/FlacStreamMetadata;->c([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->f:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    const-string v3, "audio/flac"

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->f:Landroidx/media3/extractor/TrackOutput;

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->i:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v2}, Landroidx/media3/extractor/FlacStreamMetadata;->b()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroidx/media3/extractor/TrackOutput;->e(J)V

    iput v8, v0, Landroidx/media3/extractor/flac/FlacExtractor;->g:I

    const/4 v2, 0x0

    return v2

    :cond_22
    move v2, v5

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v8}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v5, v2, v8}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v4

    const-wide/32 v6, 0x664c6143

    cmp-long v1, v4, v6

    if-nez v1, :cond_23

    const/4 v1, 0x3

    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->g:I

    return v2

    :cond_23
    const-string v0, "Failed to read FLAC stream marker."

    invoke-static {v3, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_24
    move v2, v5

    move-object v3, v6

    array-length v4, v3

    invoke-interface {v1, v2, v4, v3}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    iput v7, v0, Landroidx/media3/extractor/flac/FlacExtractor;->g:I

    return v2

    :cond_25
    move v2, v5

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()J

    move-result-wide v5

    iget-boolean v7, v0, Landroidx/media3/extractor/flac/FlacExtractor;->c:Z

    if-nez v7, :cond_26

    move-object v7, v3

    goto :goto_13

    :cond_26
    sget-object v7, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->b:Laz;

    :goto_13
    new-instance v8, Landroidx/media3/extractor/Id3Peeker;

    invoke-direct {v8}, Landroidx/media3/extractor/Id3Peeker;-><init>()V

    invoke-virtual {v8, v1, v7, v2}, Landroidx/media3/extractor/Id3Peeker;->a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;I)Landroidx/media3/common/Metadata;

    move-result-object v7

    if-eqz v7, :cond_28

    iget-object v2, v7, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    array-length v2, v2

    if-nez v2, :cond_27

    goto :goto_14

    :cond_27
    move-object v3, v7

    :cond_28
    :goto_14
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()J

    move-result-wide v7

    sub-long/2addr v7, v5

    long-to-int v2, v7

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iput-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->h:Landroidx/media3/common/Metadata;

    iput v4, v0, Landroidx/media3/extractor/flac/FlacExtractor;->g:I

    goto/16 :goto_12
.end method

.method public final release()V
    .locals 0

    return-void
.end method
