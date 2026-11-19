.class final Landroidx/media3/extractor/ogg/VorbisReader;
.super Landroidx/media3/extractor/ogg/StreamReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# instance fields
.field public n:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

.field public o:I

.field public p:Z

.field public q:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

.field public r:Landroidx/media3/extractor/VorbisUtil$CommentHeader;


# virtual methods
.method public final a(J)V
    .locals 2

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->g:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->p:Z

    iget-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->q:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    if-eqz p1, :cond_1

    iget p2, p1, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->e:I

    :cond_1
    iput p2, p0, Landroidx/media3/extractor/ogg/VorbisReader;->o:I

    return-void
.end method

.method public final b(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 11

    iget-object v0, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    iget-object v2, p0, Landroidx/media3/extractor/ogg/VorbisReader;->n:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->e:I

    shr-int/2addr v0, v3

    const/16 v5, 0xff

    const/16 v6, 0x8

    rsub-int/lit8 v4, v4, 0x8

    ushr-int v4, v5, v4

    and-int/2addr v0, v4

    iget-object v4, v2, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->d:[Landroidx/media3/extractor/VorbisUtil$Mode;

    aget-object v0, v4, v0

    iget-boolean v0, v0, Landroidx/media3/extractor/VorbisUtil$Mode;->a:Z

    iget-object v2, v2, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->a:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    if-nez v0, :cond_1

    iget v0, v2, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->e:I

    goto :goto_0

    :cond_1
    iget v0, v2, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->f:I

    :goto_0
    iget-boolean v2, p0, Landroidx/media3/extractor/ogg/VorbisReader;->p:Z

    if-eqz v2, :cond_2

    iget v1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->o:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_2
    int-to-long v1, v1

    iget-object v4, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    array-length v5, v4

    iget v7, p1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    add-int/lit8 v7, v7, 0x4

    if-ge v5, v7, :cond_3

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    array-length v5, v4

    invoke-virtual {p1, v5, v4}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v7}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    :goto_1
    iget-object v4, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget p1, p1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    add-int/lit8 v5, p1, -0x4

    const-wide/16 v7, 0xff

    and-long v9, v1, v7

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v4, v5

    add-int/lit8 v5, p1, -0x3

    ushr-long v9, v1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, p1, -0x2

    const/16 v6, 0x10

    ushr-long v9, v1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    sub-int/2addr p1, v3

    const/16 v5, 0x18

    ushr-long v5, v1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, p1

    iput-boolean v3, p0, Landroidx/media3/extractor/ogg/VorbisReader;->p:Z

    iput v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->o:I

    return-wide v1
.end method

.method public final c(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/extractor/ogg/StreamReader$SetupData;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Landroidx/media3/extractor/ogg/VorbisReader;->n:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v0, v2, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v4

    :cond_0
    iget-object v6, v0, Landroidx/media3/extractor/ogg/VorbisReader;->q:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    const/4 v3, 0x1

    const/4 v7, -0x1

    if-nez v6, :cond_5

    invoke-static {v3, v1, v4}, Landroidx/media3/extractor/VorbisUtil;->c(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    move-result v10

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v11

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    move-result v12

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v6

    if-gtz v6, :cond_1

    move v13, v7

    goto :goto_0

    :cond_1
    move v13, v6

    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v6

    if-gtz v6, :cond_2

    move v14, v7

    goto :goto_1

    :cond_2
    move v14, v6

    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    move-result v6

    if-gtz v6, :cond_3

    move v15, v7

    goto :goto_2

    :cond_3
    move v15, v6

    :goto_2
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v6

    and-int/lit8 v7, v6, 0xf

    int-to-double v8, v7

    const/16 v16, 0x4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    int-to-double v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v5

    and-int/2addr v5, v3

    if-lez v5, :cond_4

    move/from16 v18, v3

    goto :goto_3

    :cond_4
    const/16 v18, 0x0

    :goto_3
    iget-object v5, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v1, v1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v19

    new-instance v9, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    move/from16 v17, v4

    move/from16 v16, v7

    invoke-direct/range {v9 .. v19}, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;-><init>(IIIIIIIIZ[B)V

    iput-object v9, v0, Landroidx/media3/extractor/ogg/VorbisReader;->q:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_25

    :cond_5
    move v4, v7

    const/16 v16, 0x4

    iget-object v7, v0, Landroidx/media3/extractor/ogg/VorbisReader;->r:Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    if-nez v7, :cond_6

    invoke-static {v1, v3, v3}, Landroidx/media3/extractor/VorbisUtil;->b(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/extractor/ogg/VorbisReader;->r:Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    goto :goto_4

    :cond_6
    iget v5, v1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    new-array v8, v5, [B

    iget-object v9, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v10, 0x0

    invoke-static {v9, v10, v8, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, v6, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->a:I

    const/4 v9, 0x5

    invoke-static {v9, v1, v10}, Landroidx/media3/extractor/VorbisUtil;->c(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v11

    add-int/2addr v11, v3

    new-instance v12, Landroidx/media3/extractor/VorbisBitArray;

    iget-object v13, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-direct {v12, v13}, Landroidx/media3/extractor/VorbisBitArray;-><init>([B)V

    iget v1, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    const/16 v13, 0x8

    mul-int/2addr v1, v13

    invoke-virtual {v12, v1}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    move v1, v10

    :goto_5
    const/16 v14, 0x18

    const/4 v15, 0x2

    const/16 v4, 0x10

    if-ge v1, v11, :cond_12

    invoke-virtual {v12, v14}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v10

    move/from16 p1, v13

    const v13, 0x564342

    if-ne v10, v13, :cond_11

    invoke-virtual {v12, v4}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v4

    invoke-virtual {v12, v14}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v10

    invoke-virtual {v12}, Landroidx/media3/extractor/VorbisBitArray;->a()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v12}, Landroidx/media3/extractor/VorbisBitArray;->a()Z

    move-result v13

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v10, :cond_9

    if-eqz v13, :cond_7

    invoke-virtual {v12}, Landroidx/media3/extractor/VorbisBitArray;->a()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v12, v9}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {v12, v9}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    :cond_8
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_9
    move/from16 v9, v16

    goto :goto_a

    :cond_a
    invoke-virtual {v12, v9}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v10, :cond_9

    sub-int v14, v10, v13

    const/4 v9, 0x0

    :goto_9
    if-lez v14, :cond_b

    add-int/lit8 v9, v9, 0x1

    ushr-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_b
    invoke-virtual {v12, v9}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v9

    add-int/2addr v13, v9

    const/4 v9, 0x5

    goto :goto_8

    :goto_a
    invoke-virtual {v12, v9}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v13

    if-gt v13, v15, :cond_10

    if-eq v13, v3, :cond_d

    if-ne v13, v15, :cond_c

    goto :goto_b

    :cond_c
    move/from16 v19, v3

    goto :goto_d

    :cond_d
    :goto_b
    const/16 v14, 0x20

    invoke-virtual {v12, v14}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    invoke-virtual {v12, v14}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    invoke-virtual {v12, v9}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v14

    add-int/2addr v14, v3

    invoke-virtual {v12, v3}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    if-ne v13, v3, :cond_f

    if-eqz v4, :cond_e

    int-to-long v9, v10

    move/from16 v19, v3

    int-to-long v3, v4

    long-to-double v9, v9

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    long-to-double v3, v3

    div-double v3, v20, v3

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    goto :goto_c

    :cond_e
    move/from16 v19, v3

    const-wide/16 v3, 0x0

    goto :goto_c

    :cond_f
    move/from16 v19, v3

    int-to-long v9, v10

    int-to-long v3, v4

    mul-long/2addr v3, v9

    :goto_c
    int-to-long v9, v14

    mul-long/2addr v3, v9

    long-to-int v3, v3

    invoke-virtual {v12, v3}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    :goto_d
    add-int/lit8 v1, v1, 0x1

    move/from16 v13, p1

    move/from16 v3, v19

    const/4 v4, -0x1

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/16 v16, 0x4

    goto/16 :goto_5

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lookup type greater than 2 not decodable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_11
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v12, Landroidx/media3/extractor/VorbisBitArray;->c:I

    mul-int/lit8 v2, v2, 0x8

    iget v3, v12, Landroidx/media3/extractor/VorbisBitArray;->d:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_12
    move/from16 v19, v3

    move/from16 p1, v13

    const/4 v1, 0x6

    invoke-virtual {v12, v1}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v3, :cond_14

    invoke-virtual {v12, v4}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v10

    if-nez v10, :cond_13

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_13
    const-string v0, "placeholder of time domain transforms not zeroed out"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_14
    invoke-virtual {v12, v1}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x0

    :goto_f
    const/4 v10, 0x3

    if-ge v9, v3, :cond_1e

    invoke-virtual {v12, v4}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v11

    if-eqz v11, :cond_1c

    move/from16 v13, v19

    if-ne v11, v13, :cond_1b

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v11

    new-array v13, v11, [I

    const/4 v1, -0x1

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v11, :cond_16

    const/4 v4, 0x4

    invoke-virtual {v12, v4}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v15

    aput v15, v13, v14

    if-le v15, v1, :cond_15

    move v1, v15

    :cond_15
    add-int/lit8 v14, v14, 0x1

    const/16 v4, 0x10

    const/4 v15, 0x2

    goto :goto_10

    :cond_16
    add-int/lit8 v1, v1, 0x1

    new-array v4, v1, [I

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v1, :cond_19

    invoke-virtual {v12, v10}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v15

    const/16 v19, 0x1

    add-int/lit8 v15, v15, 0x1

    aput v15, v4, v14

    const/4 v15, 0x2

    invoke-virtual {v12, v15}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v22

    move/from16 v15, p1

    if-lez v22, :cond_17

    invoke-virtual {v12, v15}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    :cond_17
    move/from16 v23, v1

    const/4 v10, 0x0

    :goto_12
    shl-int v1, v19, v22

    if-ge v10, v1, :cond_18

    invoke-virtual {v12, v15}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    add-int/lit8 v10, v10, 0x1

    const/16 v15, 0x8

    const/16 v19, 0x1

    goto :goto_12

    :cond_18
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v23

    const/16 p1, 0x8

    const/4 v10, 0x3

    goto :goto_11

    :cond_19
    const/4 v15, 0x2

    invoke-virtual {v12, v15}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    const/4 v1, 0x4

    invoke-virtual {v12, v1}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v10

    const/4 v1, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_13
    if-ge v1, v11, :cond_1d

    aget v22, v13, v1

    aget v22, v4, v22

    add-int v14, v14, v22

    :goto_14
    if-ge v15, v14, :cond_1a

    invoke-virtual {v12, v10}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_14

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "floor type greater than 1 not decodable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1c
    move/from16 v15, p1

    invoke-virtual {v12, v15}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    const/16 v1, 0x10

    invoke-virtual {v12, v1}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    invoke-virtual {v12, v1}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    const/4 v1, 0x6

    invoke-virtual {v12, v1}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    invoke-virtual {v12, v15}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    const/4 v1, 0x4

    invoke-virtual {v12, v1}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v4

    const/16 v19, 0x1

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v4, :cond_1d

    invoke-virtual {v12, v15}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    add-int/lit8 v1, v1, 0x1

    const/16 v15, 0x8

    goto :goto_15

    :cond_1d
    add-int/lit8 v9, v9, 0x1

    const/16 p1, 0x8

    const/4 v1, 0x6

    const/16 v4, 0x10

    const/16 v14, 0x18

    const/4 v15, 0x2

    const/16 v19, 0x1

    goto/16 :goto_f

    :cond_1e
    invoke-virtual {v12, v1}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_25

    const/16 v9, 0x10

    invoke-virtual {v12, v9}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v10

    const/4 v15, 0x2

    if-gt v10, v15, :cond_24

    const/16 v9, 0x18

    invoke-virtual {v12, v9}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    invoke-virtual {v12, v9}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    invoke-virtual {v12, v9}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    invoke-virtual {v12, v1}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    new-array v1, v10, [I

    const/4 v11, 0x0

    :goto_17
    if-ge v11, v10, :cond_20

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v14

    invoke-virtual {v12}, Landroidx/media3/extractor/VorbisBitArray;->a()Z

    move-result v20

    const/4 v9, 0x5

    if-eqz v20, :cond_1f

    invoke-virtual {v12, v9}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v18

    goto :goto_18

    :cond_1f
    const/16 v18, 0x0

    :goto_18
    mul-int/lit8 v18, v18, 0x8

    add-int v18, v18, v14

    aput v18, v1, v11

    add-int/lit8 v11, v11, 0x1

    const/16 v9, 0x18

    goto :goto_17

    :cond_20
    const/4 v9, 0x5

    const/4 v13, 0x3

    const/4 v11, 0x0

    :goto_19
    if-ge v11, v10, :cond_23

    const/4 v14, 0x0

    :goto_1a
    if-ge v14, v15, :cond_22

    aget v18, v1, v11

    const/16 v19, 0x1

    shl-int v22, v19, v14

    and-int v18, v18, v22

    if-eqz v18, :cond_21

    invoke-virtual {v12, v15}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    :cond_21
    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x8

    goto :goto_1a

    :cond_22
    add-int/lit8 v11, v11, 0x1

    const/16 v15, 0x8

    goto :goto_19

    :cond_23
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x6

    const/16 v19, 0x1

    goto :goto_16

    :cond_24
    const-string v0, "residueType greater than 2 is not decodable"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_25
    invoke-virtual {v12, v1}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v3, :cond_2e

    const/16 v9, 0x10

    invoke-virtual {v12, v9}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v4

    if-eqz v4, :cond_26

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mapping type other than 0 not supported: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v15, 0x2

    goto/16 :goto_22

    :cond_26
    invoke-virtual {v12}, Landroidx/media3/extractor/VorbisBitArray;->a()Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x4

    invoke-virtual {v12, v4}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v9

    const/16 v19, 0x1

    add-int/lit8 v4, v9, 0x1

    goto :goto_1c

    :cond_27
    const/16 v19, 0x1

    move/from16 v4, v19

    :goto_1c
    invoke-virtual {v12}, Landroidx/media3/extractor/VorbisBitArray;->a()Z

    move-result v9

    if-eqz v9, :cond_2a

    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    :goto_1d
    if-ge v10, v9, :cond_2a

    add-int/lit8 v11, v5, -0x1

    move v13, v11

    const/4 v14, 0x0

    :goto_1e
    if-lez v13, :cond_28

    add-int/lit8 v14, v14, 0x1

    ushr-int/lit8 v13, v13, 0x1

    goto :goto_1e

    :cond_28
    invoke-virtual {v12, v14}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    const/4 v13, 0x0

    :goto_1f
    if-lez v11, :cond_29

    add-int/lit8 v13, v13, 0x1

    ushr-int/lit8 v11, v11, 0x1

    goto :goto_1f

    :cond_29
    invoke-virtual {v12, v13}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    :cond_2a
    const/4 v15, 0x2

    invoke-virtual {v12, v15}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v9

    if-nez v9, :cond_2d

    const/4 v13, 0x1

    if-le v4, v13, :cond_2b

    const/4 v9, 0x0

    :goto_20
    if-ge v9, v5, :cond_2b

    const/4 v10, 0x4

    invoke-virtual {v12, v10}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    :cond_2b
    const/4 v10, 0x4

    const/4 v9, 0x0

    :goto_21
    if-ge v9, v4, :cond_2c

    const/16 v11, 0x8

    invoke-virtual {v12, v11}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    invoke-virtual {v12, v11}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    invoke-virtual {v12, v11}, Landroidx/media3/extractor/VorbisBitArray;->c(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    :cond_2c
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1b

    :cond_2d
    const-string v0, "to reserved bits must be zero after mapping coupling steps"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2e
    const/4 v1, 0x6

    invoke-virtual {v12, v1}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    new-array v9, v3, [Landroidx/media3/extractor/VorbisUtil$Mode;

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v3, :cond_2f

    invoke-virtual {v12}, Landroidx/media3/extractor/VorbisBitArray;->a()Z

    move-result v5

    const/16 v10, 0x10

    invoke-virtual {v12, v10}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v11

    invoke-virtual {v12, v10}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v13

    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Landroidx/media3/extractor/VorbisBitArray;->b(I)I

    move-result v14

    new-instance v10, Landroidx/media3/extractor/VorbisUtil$Mode;

    invoke-direct {v10, v5, v11, v13, v14}, Landroidx/media3/extractor/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v10, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_2f
    invoke-virtual {v12}, Landroidx/media3/extractor/VorbisBitArray;->a()Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v10, 0x0

    :goto_24
    if-lez v1, :cond_30

    add-int/lit8 v10, v10, 0x1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_30
    new-instance v5, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-direct/range {v5 .. v10}, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;Landroidx/media3/extractor/VorbisUtil$CommentHeader;[B[Landroidx/media3/extractor/VorbisUtil$Mode;I)V

    move-object v8, v5

    :goto_25
    iput-object v8, v0, Landroidx/media3/extractor/ogg/VorbisReader;->n:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    if-nez v8, :cond_31

    const/16 v19, 0x1

    return v19

    :cond_31
    iget-object v0, v8, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->a:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->g:[B

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->c:[B

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->b:Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    iget-object v3, v3, Landroidx/media3/extractor/VorbisUtil$CommentHeader;->a:[Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->u([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/extractor/VorbisUtil;->a(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v3

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v5, "audio/ogg"

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string v5, "audio/vorbis"

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iget v5, v0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->d:I

    iput v5, v4, Landroidx/media3/common/Format$Builder;->h:I

    iget v5, v0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->c:I

    iput v5, v4, Landroidx/media3/common/Format$Builder;->i:I

    iget v5, v0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->a:I

    iput v5, v4, Landroidx/media3/common/Format$Builder;->F:I

    iget v0, v0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->b:I

    iput v0, v4, Landroidx/media3/common/Format$Builder;->G:I

    iput-object v1, v4, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    iput-object v3, v4, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, v4}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v0, v2, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    const/16 v19, 0x1

    return v19

    :cond_32
    const-string v0, "framing bit after modes not set as expected"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public final d(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->d(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->n:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    iput-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->q:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    iput-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->r:Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->o:I

    iput-boolean p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->p:Z

    return-void
.end method
