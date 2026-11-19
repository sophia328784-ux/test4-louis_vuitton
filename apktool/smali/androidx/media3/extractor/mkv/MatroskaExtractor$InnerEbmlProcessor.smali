.class final Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mkv/EbmlProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerEbmlProcessor"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media3/extractor/mkv/MatroskaExtractor;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mkv/MatroskaExtractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    return-void
.end method


# virtual methods
.method public final a(IILandroidx/media3/extractor/ExtractorInput;)V
    .locals 22

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b:Landroidx/media3/extractor/mkv/VarintReader;

    iget-object v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c:Landroid/util/SparseArray;

    iget-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v7, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0xa1

    const/16 v9, 0xa3

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v0, v8, :cond_b

    if-eq v0, v9, :cond_b

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_8

    const/16 v2, 0x41ed

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_4

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_2

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_0

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v2, v1, [B

    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->x:[B

    invoke-interface {v3, v2, v13, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v2, v1, [B

    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->l:[B

    invoke-interface {v3, v2, v13, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    :cond_2
    iget-object v0, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-static {v0, v13}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    rsub-int/lit8 v2, v1, 0x4

    invoke-interface {v3, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v6, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:I

    return-void

    :cond_3
    new-array v2, v1, [B

    invoke-interface {v3, v2, v13, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-instance v1, Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-direct {v1, v14, v2, v13, v13}, Landroidx/media3/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->k:Landroidx/media3/extractor/TrackOutput$CryptoData;

    return-void

    :cond_4
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v2, v1, [B

    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->j:[B

    invoke-interface {v3, v2, v13, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    :cond_5
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->h:I

    const v4, 0x64767643

    if-eq v2, v4, :cond_7

    const v4, 0x64766343

    if-ne v2, v4, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v3, v1}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    return-void

    :cond_7
    :goto_0
    new-array v2, v1, [B

    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->P:[B

    invoke-interface {v3, v2, v13, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    :cond_8
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:I

    if-eq v0, v11, :cond_9

    goto/16 :goto_11

    :cond_9
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->X:I

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p:Landroidx/media3/common/util/ParsableByteArray;

    if-ne v2, v12, :cond_a

    const-string v2, "V_VP9"

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v0, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v3, v0, v13, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    :cond_a
    invoke-interface {v3, v1}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    return-void

    :cond_b
    iget v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:I

    const/16 v8, 0x8

    if-nez v6, :cond_c

    invoke-virtual {v2, v3, v13, v14, v8}, Landroidx/media3/extractor/mkv/VarintReader;->b(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v9

    long-to-int v9, v9

    iput v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    iget v2, v2, Landroidx/media3/extractor/mkv/VarintReader;->c:I

    iput v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->V:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Q:J

    iput v14, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:I

    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    :cond_c
    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    if-nez v5, :cond_d

    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->V:I

    sub-int v0, v1, v0

    invoke-interface {v3, v0}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iput v13, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:I

    return-void

    :cond_d
    iget-object v2, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:I

    if-ne v2, v14, :cond_21

    const/4 v2, 0x3

    invoke-virtual {v4, v3, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v9, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aget-byte v9, v9, v11

    and-int/lit8 v9, v9, 0x6

    shr-int/2addr v9, v14

    const/16 v10, 0xff

    if-nez v9, :cond_10

    iput v14, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:I

    iget-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    if-nez v6, :cond_e

    new-array v6, v14, [I

    goto :goto_1

    :cond_e
    array-length v9, v6

    if-lt v9, v14, :cond_f

    goto :goto_1

    :cond_f
    array-length v6, v6

    mul-int/2addr v6, v11

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v6, v6, [I

    :goto_1
    iput-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->V:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v2

    aput v1, v6, v13

    :goto_2
    move/from16 v18, v8

    move/from16 v19, v11

    move/from16 v17, v13

    goto/16 :goto_b

    :cond_10
    invoke-virtual {v4, v3, v12}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v15, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aget-byte v15, v15, v2

    and-int/2addr v15, v10

    add-int/2addr v15, v14

    iput v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:I

    iget-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    if-nez v6, :cond_11

    new-array v6, v15, [I

    move/from16 v17, v12

    goto :goto_3

    :cond_11
    move/from16 v17, v12

    array-length v12, v6

    if-lt v12, v15, :cond_12

    goto :goto_3

    :cond_12
    array-length v6, v6

    mul-int/2addr v6, v11

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v6, v6, [I

    :goto_3
    iput-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    if-ne v9, v11, :cond_13

    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->V:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x4

    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:I

    div-int/2addr v1, v2

    invoke-static {v6, v13, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_2

    :cond_13
    if-ne v9, v14, :cond_16

    move v2, v13

    move v6, v2

    move/from16 v12, v17

    :goto_4
    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:I

    sub-int/2addr v9, v14

    iget-object v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    if-ge v2, v9, :cond_15

    aput v13, v15, v2

    :goto_5
    add-int/lit8 v9, v12, 0x1

    invoke-virtual {v4, v3, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v15, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aget-byte v12, v15, v12

    and-int/2addr v12, v10

    iget-object v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    aget v16, v15, v2

    add-int v16, v16, v12

    aput v16, v15, v2

    if-eq v12, v10, :cond_14

    add-int v6, v6, v16

    add-int/lit8 v2, v2, 0x1

    move v12, v9

    goto :goto_4

    :cond_14
    move v12, v9

    goto :goto_5

    :cond_15
    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->V:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v12

    sub-int/2addr v1, v6

    aput v1, v15, v9

    goto :goto_2

    :cond_16
    if-ne v9, v2, :cond_22

    move v2, v13

    move v6, v2

    move/from16 v12, v17

    :goto_6
    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:I

    sub-int/2addr v9, v14

    iget-object v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    if-ge v2, v9, :cond_1e

    aput v13, v15, v2

    add-int/lit8 v9, v12, 0x1

    invoke-virtual {v4, v3, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v15, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aget-byte v15, v15, v12

    if-eqz v15, :cond_1d

    move v15, v13

    :goto_7
    if-ge v15, v8, :cond_19

    rsub-int/lit8 v17, v15, 0x7

    move/from16 v18, v8

    shl-int v8, v14, v17

    move/from16 v17, v13

    iget-object v13, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aget-byte v13, v13, v12

    and-int/2addr v13, v8

    if-eqz v13, :cond_18

    add-int v13, v9, v15

    invoke-virtual {v4, v3, v13}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l(Landroidx/media3/extractor/ExtractorInput;I)V

    move/from16 v19, v11

    iget-object v11, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aget-byte v11, v11, v12

    and-int/2addr v11, v10

    not-int v8, v8

    and-int/2addr v8, v11

    int-to-long v11, v8

    :goto_8
    if-ge v9, v13, :cond_17

    shl-long v11, v11, v18

    iget-object v8, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    add-int/lit8 v20, v9, 0x1

    aget-byte v8, v8, v9

    and-int/2addr v8, v10

    int-to-long v8, v8

    or-long/2addr v11, v8

    move/from16 v9, v20

    goto :goto_8

    :cond_17
    if-lez v2, :cond_1a

    mul-int/lit8 v15, v15, 0x7

    add-int/lit8 v15, v15, 0x6

    const-wide/16 v8, 0x1

    shl-long v20, v8, v15

    sub-long v20, v20, v8

    sub-long v11, v11, v20

    goto :goto_9

    :cond_18
    move/from16 v19, v11

    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v17

    move/from16 v8, v18

    goto :goto_7

    :cond_19
    move/from16 v18, v8

    move/from16 v19, v11

    move/from16 v17, v13

    const-wide/16 v11, 0x0

    move v13, v9

    :cond_1a
    :goto_9
    const-wide/32 v8, -0x80000000

    cmp-long v8, v11, v8

    if-ltz v8, :cond_1c

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v11, v8

    if-gtz v8, :cond_1c

    long-to-int v8, v11

    iget-object v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    if-nez v2, :cond_1b

    goto :goto_a

    :cond_1b
    add-int/lit8 v11, v2, -0x1

    aget v11, v9, v11

    add-int/2addr v8, v11

    :goto_a
    aput v8, v9, v2

    add-int/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    move v12, v13

    move/from16 v13, v17

    move/from16 v8, v18

    move/from16 v11, v19

    goto/16 :goto_6

    :cond_1c
    const-string v0, "EBML lacing sample size out of range."

    const/4 v6, 0x0

    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1d
    const/4 v6, 0x0

    const-string v0, "No valid varint length mask found"

    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1e
    move/from16 v18, v8

    move/from16 v19, v11

    move/from16 v17, v13

    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->V:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v12

    sub-int/2addr v1, v6

    aput v1, v15, v9

    :goto_b
    iget-object v1, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aget-byte v2, v1, v17

    shl-int/lit8 v2, v2, 0x8

    aget-byte v1, v1, v14

    and-int/2addr v1, v10

    or-int/2addr v1, v2

    iget-wide v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->M:J

    int-to-long v1, v1

    invoke-virtual {v4, v1, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n(J)J

    move-result-wide v1

    add-long/2addr v1, v8

    iput-wide v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->P:J

    iget v1, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e:I

    if-eq v1, v14, :cond_20

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1f

    iget-object v1, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aget-byte v1, v1, v19

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1f

    goto :goto_c

    :cond_1f
    move/from16 v1, v17

    goto :goto_d

    :cond_20
    :goto_c
    move v1, v14

    :goto_d
    iput v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->W:I

    move/from16 v1, v19

    iput v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:I

    move/from16 v1, v17

    iput v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->R:I

    :cond_21
    const/16 v1, 0xa3

    goto :goto_e

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected lacing value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :goto_e
    if-ne v0, v1, :cond_24

    :goto_f
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->R:I

    iget v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:I

    if-ge v0, v1, :cond_23

    iget-object v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    aget v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {v4, v3, v5, v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I

    move-result v9

    iget-wide v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->P:J

    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->R:I

    iget v6, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f:I

    mul-int/2addr v2, v6

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    add-long/2addr v6, v0

    iget v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->W:I

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V

    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->R:I

    add-int/2addr v0, v14

    iput v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->R:I

    goto :goto_f

    :cond_23
    const/4 v1, 0x0

    iput v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:I

    return-void

    :cond_24
    :goto_10
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->R:I

    iget v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:I

    if-ge v0, v1, :cond_25

    iget-object v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    aget v2, v1, v0

    invoke-virtual {v4, v3, v5, v2, v14}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I

    move-result v2

    aput v2, v1, v0

    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->R:I

    add-int/2addr v0, v14

    iput v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->R:I

    goto :goto_10

    :cond_25
    :goto_11
    return-void
.end method

.method public final b(IJ)V
    .locals 9

    const/16 v0, 0xf0

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_1a

    const/16 v0, 0xf1

    if-eq p1, v0, :cond_19

    const/16 v0, 0x5031

    const/4 v1, 0x0

    const-string v2, " not supported"

    if-eq p1, v0, :cond_17

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_15

    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->E:I

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->D:I

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v8, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->z:Z

    long-to-int p1, p2

    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->f(I)I

    move-result p1

    if-eq p1, v0, :cond_1b

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->A:I

    return-void

    :pswitch_3
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    long-to-int p1, p2

    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->g(I)I

    move-result p1

    if-eq p1, v0, :cond_1b

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->B:I

    return-void

    :pswitch_4
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    long-to-int p1, p2

    if-eq p1, v8, :cond_1

    if-eq p1, v7, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->C:I

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->C:I

    return-void

    :sswitch_0
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t:J

    return-void

    :sswitch_1
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f:I

    return-void

    :sswitch_2
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_5

    if-eq p1, v8, :cond_4

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->t:I

    return-void

    :cond_3
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->t:I

    return-void

    :cond_4
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->t:I

    return-void

    :cond_5
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->t:I

    return-void

    :sswitch_3
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:J

    return-void

    :sswitch_4
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    return-void

    :sswitch_5
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->U:J

    return-void

    :sswitch_6
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->T:J

    return-void

    :sswitch_7
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g:I

    return-void

    :sswitch_8
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->z:Z

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->p:I

    return-void

    :sswitch_9
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    cmp-long p1, p2, v3

    if-nez p1, :cond_6

    move v5, v8

    :cond_6
    iput-boolean v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->X:Z

    return-void

    :sswitch_a
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->r:I

    return-void

    :sswitch_b
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->s:I

    return-void

    :sswitch_c
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->q:I

    return-void

    :sswitch_d
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    if-eqz p2, :cond_a

    if-eq p2, v8, :cond_9

    if-eq p2, v6, :cond_8

    const/16 p1, 0xf

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->y:I

    return-void

    :cond_8
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->y:I

    return-void

    :cond_9
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->y:I

    return-void

    :cond_a
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->y:I

    return-void

    :sswitch_e
    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->s:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:J

    return-void

    :sswitch_f
    cmp-long p0, p2, v3

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "AESSettingsCipherMode "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :sswitch_10
    const-wide/16 p0, 0x5

    cmp-long p0, p2, p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ContentEncAlgo "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :sswitch_11
    cmp-long p0, p2, v3

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "EBMLReadVersion "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :sswitch_12
    cmp-long p0, p2, v3

    if-ltz p0, :cond_e

    const-wide/16 p0, 0x2

    cmp-long p0, p2, p0

    if-gtz p0, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "DocTypeReadVersion "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :sswitch_13
    const-wide/16 p0, 0x3

    cmp-long p0, p2, p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ContentCompAlgo "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :sswitch_14
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->h:I

    return-void

    :sswitch_15
    iput-boolean v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:Z

    return-void

    :sswitch_16
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->F:I

    return-void

    :sswitch_17
    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->X:I

    return-void

    :sswitch_18
    invoke-virtual {p0, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->M:J

    return-void

    :sswitch_19
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    return-void

    :sswitch_1a
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->o:I

    return-void

    :sswitch_1b
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    invoke-virtual {p0, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->E:J

    return-void

    :sswitch_1c
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->n:I

    return-void

    :sswitch_1d
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Q:I

    return-void

    :sswitch_1e
    invoke-virtual {p0, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Q:J

    return-void

    :sswitch_1f
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    cmp-long p1, p2, v3

    if-nez p1, :cond_10

    move v5, v8

    :cond_10
    iput-boolean v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Y:Z

    return-void

    :sswitch_20
    long-to-int p2, p2

    if-eq p2, v8, :cond_14

    if-eq p2, v7, :cond_13

    const/16 p3, 0x11

    if-eq p2, p3, :cond_12

    const/16 p3, 0x21

    if-eq p2, p3, :cond_11

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e:I

    return-void

    :cond_11
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    const/4 p1, 0x5

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e:I

    return-void

    :cond_12
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e:I

    return-void

    :cond_13
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v8, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e:I

    return-void

    :cond_14
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e:I

    return-void

    :cond_15
    cmp-long p0, p2, v3

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ContentEncodingScope "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_17
    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ContentEncodingOrder "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_19
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    iget-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_1b

    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    return-void

    :cond_1a
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    iget-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->H:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_1b

    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->H:J

    :cond_1b
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf7 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(IJJ)V
    .locals 7

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j0:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xa0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eq p1, v0, :cond_d

    const/16 v0, 0xae

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq p1, v0, :cond_c

    const/16 v0, 0xb7

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4dbb

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5035

    if-eq p1, v0, :cond_7

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_6

    const v0, 0x18538067

    if-eq p1, v0, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->d:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->K:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_1

    iput-boolean v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->J:Z

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j0:Landroidx/media3/extractor/ExtractorOutput;

    new-instance p2, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide p3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->v:J

    invoke-direct {p2, p3, p4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    return-void

    :cond_2
    iget-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    if-nez p1, :cond_b

    iput-boolean v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->D:Z

    return-void

    :cond_3
    iget-wide v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->s:J

    cmp-long p1, v5, v1

    if-eqz p1, :cond_5

    cmp-long p1, v5, p2

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, "Multiple Segment elements not supported"

    invoke-static {v4, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_0
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->s:J

    iput-wide p4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r:J

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->z:Z

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->i:Z

    return-void

    :cond_8
    iput v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:I

    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:J

    return-void

    :cond_9
    iget-boolean p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->E:J

    return-void

    :cond_a
    iget-boolean p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    iput v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->F:I

    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->H:J

    :cond_b
    :goto_1
    return-void

    :cond_c
    new-instance p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->n:I

    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->o:I

    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->p:I

    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->q:I

    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->r:I

    iput v3, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->s:I

    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->t:I

    const/4 p2, 0x0

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->u:F

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->v:F

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->w:F

    iput-object v4, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->x:[B

    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->y:I

    iput-boolean v3, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->z:Z

    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->A:I

    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->B:I

    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->C:I

    const/16 p2, 0x3e8

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->D:I

    const/16 p2, 0xc8

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->E:I

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->F:F

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->G:F

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->H:F

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->I:F

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->J:F

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->K:F

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->L:F

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->M:F

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->N:F

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->O:F

    iput v6, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Q:I

    iput v5, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    const/16 p2, 0x1f40

    iput p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->S:I

    iput-wide v1, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->T:J

    iput-wide v1, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->U:J

    iput-boolean v3, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Z

    iput-boolean v6, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Y:Z

    const-string p2, "eng"

    iput-object p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Z:Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->w:Z

    iput-boolean p0, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a:Z

    return-void

    :cond_d
    iput-boolean v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:Z

    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:J

    return-void
.end method
