.class public final Landroidx/media3/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;,
        Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;,
        Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;
    }
.end annotation


# instance fields
.field public a:Landroidx/media3/extractor/ExtractorOutput;

.field public b:Landroidx/media3/extractor/TrackOutput;

.field public c:I

.field public d:J

.field public e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

.field public f:I

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->d:J

    const/4 v2, -0x1

    iput v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->f:I

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    iget-object p0, p0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    if-eqz p0, :cond_1

    invoke-interface {p0, p3, p4}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->c(J)V

    :cond_1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->b:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    invoke-static {p1}, Landroidx/media3/extractor/wav/WavHeaderReader;->a(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->b:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_19

    const/16 v7, 0x8

    const/4 v8, 0x2

    const-wide/16 v9, -0x1

    if-eq v2, v5, :cond_17

    const/4 v11, 0x3

    if-eq v2, v8, :cond_6

    if-eq v2, v11, :cond_3

    if-ne v2, v4, :cond_2

    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-wide v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v4, v7

    iget-object v0, v0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1, v4, v5}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->a(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v6

    :cond_2
    invoke-static {}, Lr81;->b()V

    return v6

    :cond_3
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    const v3, 0x64617461

    invoke-static {v3, v1, v2}, Landroidx/media3/extractor/wav/WavHeaderReader;->b(ILandroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v7, v2, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, v0, Landroidx/media3/extractor/wav/WavExtractor;->f:I

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->d:J

    cmp-long v5, v7, v9

    if-eqz v5, :cond_4

    const-wide v11, 0xffffffffL

    cmp-long v5, v2, v11

    if-nez v5, :cond_4

    move-wide v2, v7

    :cond_4
    iget v5, v0, Landroidx/media3/extractor/wav/WavExtractor;->f:I

    int-to-long v7, v5

    add-long/2addr v7, v2

    iput-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    cmp-long v3, v1, v9

    if-eqz v3, :cond_5

    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    cmp-long v3, v7, v1

    if-lez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Data exceeds input length: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    iput-wide v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    :cond_5
    iget-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->f:I

    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->g:J

    invoke-interface {v1, v2, v7, v8}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->b(IJ)V

    iput v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    return v6

    :cond_6
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    const v7, 0x666d7420

    invoke-static {v7, v1, v2}, Landroidx/media3/extractor/wav/WavHeaderReader;->b(ILandroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v7

    iget-wide v7, v7, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    const-wide/16 v9, 0x10

    cmp-long v9, v7, v9

    if-ltz v9, :cond_7

    move v9, v5

    goto :goto_1

    :cond_7
    move v9, v6

    :goto_1
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v9, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v6, v3, v9}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->t()I

    move-result v9

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->t()I

    move-result v14

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    move-result v15

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    move-result v16

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->t()I

    move-result v17

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->t()I

    move-result v2

    long-to-int v7, v7

    sub-int/2addr v7, v3

    const v3, 0xfffe

    if-lez v7, :cond_f

    new-array v8, v7, [B

    invoke-interface {v1, v6, v7, v8}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    if-ne v9, v3, :cond_d

    const/16 v10, 0x18

    if-ne v7, v10, :cond_d

    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->t()I

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->t()I

    move-result v9

    if-eqz v9, :cond_9

    if-ne v9, v2, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "validBits ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")  != bitsPerSample( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") are not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_9
    :goto_2
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    move-result v9

    shr-int/lit8 v10, v9, 0x12

    if-nez v10, :cond_e

    if-eqz v9, :cond_b

    invoke-static {v9}, Ljava/lang/Integer;->bitCount(I)I

    move-result v10

    if-ne v10, v14, :cond_a

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid number of channels ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") in channel mask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_b
    :goto_3
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->t()I

    move-result v9

    const/16 v10, 0xe

    new-array v12, v10, [B

    invoke-virtual {v7, v6, v10, v12}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    sget-object v7, Landroidx/media3/extractor/wav/WavHeaderReader;->a:[B

    invoke-static {v12, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_d

    sget-object v7, Landroidx/media3/extractor/wav/WavHeaderReader;->b:[B

    invoke-static {v12, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_4

    :cond_c
    const-string v0, "invalid wav format extension guid"

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_d
    :goto_4
    move-object/from16 v19, v8

    move v13, v9

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid channel mask "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_f
    sget-object v8, Landroidx/media3/common/util/Util;->b:[B

    goto :goto_4

    :goto_5
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()J

    move-result-wide v7

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    new-instance v23, Landroidx/media3/extractor/wav/WavFormat;

    move/from16 v18, v2

    move-object/from16 v12, v23

    invoke-direct/range {v12 .. v19}, Landroidx/media3/extractor/wav/WavFormat;-><init>(IIIIII[B)V

    const/16 v1, 0x11

    iget v2, v12, Landroidx/media3/extractor/wav/WavFormat;->a:I

    if-ne v2, v1, :cond_10

    new-instance v1, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;

    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v3, v0, Landroidx/media3/extractor/wav/WavExtractor;->b:Landroidx/media3/extractor/TrackOutput;

    invoke-direct {v1, v2, v3, v12}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;)V

    iput-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    goto/16 :goto_8

    :cond_10
    const/4 v1, 0x6

    if-ne v2, v1, :cond_11

    new-instance v20, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->b:Landroidx/media3/extractor/TrackOutput;

    const-string v24, "audio/g711-alaw"

    const/16 v25, -0x1

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v12

    invoke-direct/range {v20 .. v25}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    move-object/from16 v1, v20

    iput-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_8

    :cond_11
    move-object/from16 v23, v12

    const/4 v1, 0x7

    if-ne v2, v1, :cond_12

    new-instance v20, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->b:Landroidx/media3/extractor/TrackOutput;

    const-string v24, "audio/g711-mlaw"

    const/16 v25, -0x1

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-direct/range {v20 .. v25}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    move-object/from16 v1, v20

    iput-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_8

    :cond_12
    move-object/from16 v12, v23

    iget v1, v12, Landroidx/media3/extractor/wav/WavFormat;->e:I

    if-eq v2, v5, :cond_15

    if-eq v2, v11, :cond_14

    if-eq v2, v3, :cond_15

    :cond_13
    move/from16 v25, v6

    goto :goto_7

    :cond_14
    const/16 v3, 0x20

    if-ne v1, v3, :cond_13

    :goto_6
    move/from16 v25, v4

    goto :goto_7

    :cond_15
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->C(ILjava/nio/ByteOrder;)I

    move-result v4

    goto :goto_6

    :goto_7
    if-eqz v25, :cond_16

    new-instance v20, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->b:Landroidx/media3/extractor/TrackOutput;

    const-string v24, "audio/raw"

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v12

    invoke-direct/range {v20 .. v25}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    move-object/from16 v1, v20

    iput-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->e:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    :goto_8
    iput v11, v0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    return v6

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported WAV format type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_17
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    invoke-static {v1, v2}, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v3

    iget v4, v3, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->a:I

    const v5, 0x64733634

    if-eq v4, v5, :cond_18

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    goto :goto_9

    :cond_18
    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v6, v7, v4}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->p()J

    move-result-wide v9

    iget-wide v2, v3, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    long-to-int v2, v2

    add-int/2addr v2, v7

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    :goto_9
    iput-wide v9, v0, Landroidx/media3/extractor/wav/WavExtractor;->d:J

    iput v8, v0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    return v6

    :cond_19
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_1a

    move v2, v5

    goto :goto_a

    :cond_1a
    move v2, v6

    :goto_a
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->f:I

    if-eq v2, v3, :cond_1b

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iput v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    return v6

    :cond_1b
    invoke-static {v1}, Landroidx/media3/extractor/wav/WavHeaderReader;->a(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()J

    move-result-wide v2

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-int v2, v2

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iput v5, v0, Landroidx/media3/extractor/wav/WavExtractor;->c:I

    return v6

    :cond_1c
    const-string v0, "Unsupported or unrecognized wav file type."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
