.class public final Landroidx/media3/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/AdtsExtractor$Flags;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/extractor/ts/AdtsReader;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Landroidx/media3/common/util/ParsableByteArray;

.field public final e:Landroidx/media3/common/util/ParsableBitArray;

.field public f:Landroidx/media3/extractor/ExtractorOutput;

.field public g:J

.field public h:J

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->a:I

    new-instance p1, Landroidx/media3/extractor/ts/AdtsReader;

    const-string v0, "audio/mp4a-latm"

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Landroidx/media3/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->b:Landroidx/media3/extractor/ts/AdtsReader;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->i:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->h:J

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->d:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    iget-object p1, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->e:Landroidx/media3/common/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->k:Z

    iget-object p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->b:Landroidx/media3/extractor/ts/AdtsReader;

    invoke-virtual {p1}, Landroidx/media3/extractor/ts/AdtsReader;->c()V

    iput-wide p3, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->g:J

    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 3

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->b:Landroidx/media3/extractor/ts/AdtsReader;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/ts/AdtsReader;->e(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 10

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/ts/AdtsExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :cond_0
    iget-object v5, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->d:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    move-object v7, p1

    check-cast v7, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v8, 0x2

    invoke-virtual {v7, v1, v1, v8, v6}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v6

    const v8, 0xfff6

    and-int/2addr v6, v8

    const v8, 0xfff0

    if-ne v6, v8, :cond_3

    const/4 v6, 0x1

    add-int/2addr v2, v6

    const/4 v8, 0x4

    if-lt v2, v8, :cond_1

    const/16 v9, 0xbc

    if-le v4, v9, :cond_1

    return v6

    :cond_1
    iget-object v5, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {v7, v1, v1, v8, v5}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    const/16 v5, 0xe

    iget-object v6, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->e:Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    const/16 v5, 0xd

    invoke-virtual {v6, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    iput v1, v7, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    invoke-virtual {v7, v3, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->n(IZ)Z

    :goto_0
    move v2, v1

    move v4, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v5, -0x6

    invoke-virtual {v7, v6, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->n(IZ)Z

    add-int/2addr v4, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    iput v1, v7, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    invoke-virtual {v7, v3, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->n(IZ)Z

    goto :goto_0

    :goto_1
    sub-int v5, v3, v0

    const/16 v6, 0x2000

    if-lt v5, v6, :cond_0

    return v1
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    iget v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->a:I

    and-int/lit8 v3, v2, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v3, :cond_0

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_b

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_b

    :cond_0
    iget-object v6, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->e:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v7, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->d:Landroidx/media3/common/util/ParsableByteArray;

    iget-boolean v8, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->j:Z

    if-eqz v8, :cond_1

    goto/16 :goto_5

    :cond_1
    iput v11, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->i:I

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v8, v8, v14

    if-nez v8, :cond_2

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/ts/AdtsExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)I

    :cond_2
    move v8, v13

    :goto_0
    :try_start_0
    iget-object v9, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v10, 0x2

    invoke-interface {v1, v12, v13, v10, v9}, Landroidx/media3/extractor/ExtractorInput;->i(ZII[B)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v9

    const v10, 0xfff6

    and-int/2addr v9, v10

    const v10, 0xfff0

    if-ne v9, v10, :cond_3

    move v9, v12

    goto :goto_1

    :cond_3
    move v9, v13

    :goto_1
    if-nez v9, :cond_4

    move v8, v13

    goto :goto_3

    :cond_4
    iget-object v9, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v10, 0x4

    invoke-interface {v1, v12, v13, v10, v9}, Landroidx/media3/extractor/ExtractorInput;->i(ZII[B)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    move-wide/from16 v16, v14

    goto :goto_2

    :cond_6
    const/16 v9, 0xe

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    const/16 v9, 0xd

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v9
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x6

    if-le v9, v10, :cond_9

    move-wide/from16 v16, v14

    int-to-long v13, v9

    add-long v14, v16, v13

    add-int/lit8 v8, v8, 0x1

    const/16 v10, 0x3e8

    if-ne v8, v10, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, -0x6

    :try_start_1
    invoke-interface {v1, v9, v12}, Landroidx/media3/extractor/ExtractorInput;->n(IZ)Z

    move-result v9
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v9, :cond_8

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    goto :goto_0

    :cond_9
    move-wide/from16 v16, v14

    :try_start_2
    iput-boolean v12, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->j:Z

    const-string v6, "Malformed ADTS stream"

    const/4 v7, 0x0

    invoke-static {v7, v6}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v6

    throw v6
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-wide/from16 v16, v14

    goto :goto_3

    :catch_1
    :goto_2
    move-wide/from16 v14, v16

    :catch_2
    :goto_3
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    if-lez v8, :cond_a

    int-to-long v6, v8

    div-long/2addr v14, v6

    long-to-int v6, v14

    iput v6, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->i:I

    goto :goto_4

    :cond_a
    iput v11, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->i:I

    :goto_4
    iput-boolean v12, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->j:Z

    :cond_b
    :goto_5
    iget-object v13, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v7, 0x800

    const/4 v8, 0x0

    invoke-interface {v1, v6, v8, v7}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v1

    if-ne v1, v11, :cond_c

    move v14, v12

    goto :goto_6

    :cond_c
    const/4 v14, 0x0

    :goto_6
    iget-boolean v6, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->l:Z

    iget-object v15, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->b:Landroidx/media3/extractor/ts/AdtsReader;

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    and-int/2addr v2, v12

    if-eqz v2, :cond_e

    iget v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->i:I

    if-lez v2, :cond_e

    move v8, v12

    goto :goto_7

    :cond_e
    const/4 v8, 0x0

    :goto_7
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_f

    iget-wide v9, v15, Landroidx/media3/extractor/ts/AdtsReader;->s:J

    cmp-long v2, v9, v6

    if-nez v2, :cond_f

    if-nez v14, :cond_f

    :goto_8
    move/from16 v16, v11

    move v2, v12

    goto :goto_d

    :cond_f
    if-eqz v8, :cond_11

    iget-wide v8, v15, Landroidx/media3/extractor/ts/AdtsReader;->s:J

    cmp-long v2, v8, v6

    if-eqz v2, :cond_11

    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    if-eqz v3, :cond_10

    move v10, v12

    :goto_9
    move-wide v6, v8

    goto :goto_a

    :cond_10
    const/4 v10, 0x0

    goto :goto_9

    :goto_a
    iget v9, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->i:I

    move/from16 v16, v11

    int-to-long v11, v9

    const-wide/32 v18, 0x7a1200

    mul-long v11, v11, v18

    div-long/2addr v11, v6

    long-to-int v8, v11

    new-instance v3, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    iget-wide v6, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->h:J

    invoke-direct/range {v3 .. v10}, Landroidx/media3/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    :goto_b
    const/4 v2, 0x1

    goto :goto_c

    :cond_11
    move/from16 v16, v11

    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v3, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_b

    :goto_c
    iput-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->l:Z

    :goto_d
    if-eqz v14, :cond_12

    return v16

    :cond_12
    const/4 v8, 0x0

    invoke-virtual {v13, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v13, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    iget-boolean v1, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->k:Z

    if-nez v1, :cond_13

    iget-wide v3, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->g:J

    iput-wide v3, v15, Landroidx/media3/extractor/ts/AdtsReader;->u:J

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->k:Z

    :cond_13
    invoke-virtual {v15, v13}, Landroidx/media3/extractor/ts/AdtsReader;->a(Landroidx/media3/common/util/ParsableByteArray;)V

    return v8
.end method

.method public final g(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->d:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v4, 0xa

    invoke-interface {p1, v0, v4, v3}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_1

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    iget-wide v2, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->h:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    int-to-long v2, v1

    iput-wide v2, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->h:J

    :cond_0
    return v1

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    goto :goto_0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
