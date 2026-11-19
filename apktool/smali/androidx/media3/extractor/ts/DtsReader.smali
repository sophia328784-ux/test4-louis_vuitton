.class public final Landroidx/media3/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroidx/media3/extractor/TrackOutput;

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Landroidx/media3/common/Format;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    new-array p3, p3, [B

    invoke-direct {v0, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->a:Landroidx/media3/common/util/ParsableByteArray;

    const/4 p3, 0x0

    iput p3, p0, Landroidx/media3/extractor/ts/DtsReader;->h:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/DtsReader;->q:J

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Landroidx/media3/extractor/ts/DtsReader;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, -0x1

    iput p3, p0, Landroidx/media3/extractor/ts/DtsReader;->o:I

    iput p3, p0, Landroidx/media3/extractor/ts/DtsReader;->p:I

    iput-object p1, p0, Landroidx/media3/extractor/ts/DtsReader;->c:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/extractor/ts/DtsReader;->d:I

    iput-object p4, p0, Landroidx/media3/extractor/ts/DtsReader;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/DtsReader;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    if-lez v2, :cond_30

    iget v2, v0, Landroidx/media3/extractor/ts/DtsReader;->h:I

    const/4 v14, 0x5

    const/16 v6, 0x20

    const/4 v7, 0x0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x2

    const/4 v13, 0x3

    const/4 v15, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, v0, Landroidx/media3/extractor/ts/DtsReader;->a:Landroidx/media3/common/util/ParsableByteArray;

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lr81;->b()V

    return-void

    :pswitch_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    iget v5, v0, Landroidx/media3/extractor/ts/DtsReader;->m:I

    iget v6, v0, Landroidx/media3/extractor/ts/DtsReader;->i:I

    sub-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v5, v0, Landroidx/media3/extractor/ts/DtsReader;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v5, v2, v1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v5, v0, Landroidx/media3/extractor/ts/DtsReader;->i:I

    add-int/2addr v5, v2

    iput v5, v0, Landroidx/media3/extractor/ts/DtsReader;->i:I

    iget v2, v0, Landroidx/media3/extractor/ts/DtsReader;->m:I

    if-ne v5, v2, :cond_0

    iget-wide v5, v0, Landroidx/media3/extractor/ts/DtsReader;->q:J

    cmp-long v2, v5, v17

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v5, v0, Landroidx/media3/extractor/ts/DtsReader;->g:Landroidx/media3/extractor/TrackOutput;

    iget-wide v6, v0, Landroidx/media3/extractor/ts/DtsReader;->q:J

    iget v2, v0, Landroidx/media3/extractor/ts/DtsReader;->n:I

    if-ne v2, v15, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    iget v9, v0, Landroidx/media3/extractor/ts/DtsReader;->m:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v4, v0, Landroidx/media3/extractor/ts/DtsReader;->q:J

    iget-wide v6, v0, Landroidx/media3/extractor/ts/DtsReader;->k:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroidx/media3/extractor/ts/DtsReader;->q:J

    iput v3, v0, Landroidx/media3/extractor/ts/DtsReader;->h:I

    goto :goto_0

    :pswitch_1
    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v14, v0, Landroidx/media3/extractor/ts/DtsReader;->p:I

    invoke-virtual {v0, v1, v2, v14}, Landroidx/media3/extractor/ts/DtsReader;->b(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-static {v2}, Landroidx/media3/extractor/DtsUtil;->c([B)Landroidx/media3/common/util/ParsableBitArray;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v6

    move/from16 v26, v15

    const v15, 0x40411bf2

    if-ne v6, v15, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    sget-object v15, Landroidx/media3/extractor/DtsUtil;->e:[I

    invoke-static {v14, v15}, Landroidx/media3/extractor/DtsUtil;->d(Landroidx/media3/common/util/ParsableBitArray;[I)I

    move-result v15

    add-int/lit8 v23, v15, 0x1

    if-eqz v6, :cond_e

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v27, 0x8

    add-int/lit8 v9, v15, -0x1

    aget-byte v22, v2, v9

    shl-int/lit8 v22, v22, 0x8

    const v24, 0xffff

    and-int v22, v22, v24

    aget-byte v15, v2, v15

    and-int/lit16 v15, v15, 0xff

    or-int v15, v22, v15

    sget-object v22, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    move v12, v3

    move/from16 v10, v24

    :goto_4
    if-ge v12, v9, :cond_4

    aget-byte v22, v2, v12

    invoke-static/range {v22 .. v22}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v22

    shr-int/lit8 v25, v22, 0x4

    shr-int/lit8 v3, v10, 0xc

    and-int/lit16 v3, v3, 0xff

    xor-int v3, v3, v25

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v10, v10, 0x4

    and-int v10, v10, v24

    sget-object v25, Landroidx/media3/common/util/Util;->k:[I

    aget v3, v25, v3

    xor-int/2addr v3, v10

    and-int v3, v3, v24

    and-int/lit8 v10, v22, 0xf

    shr-int/lit8 v8, v3, 0xc

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v8, v10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v3, v3, 0x4

    and-int v3, v3, v24

    aget v8, v25, v8

    xor-int/2addr v3, v8

    and-int v10, v3, v24

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    if-ne v15, v10, :cond_c

    invoke-virtual {v14, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v2

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_6

    if-ne v2, v11, :cond_5

    const/16 v12, 0x180

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported base duration index in DTS UHD header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_6
    const/16 v12, 0x1e0

    goto :goto_5

    :cond_7
    const/16 v12, 0x200

    :goto_5
    invoke-virtual {v14, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v2

    add-int/2addr v2, v4

    mul-int/2addr v2, v12

    invoke-virtual {v14, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v3

    if-eqz v3, :cond_a

    if-eq v3, v4, :cond_9

    if-ne v3, v11, :cond_8

    const v9, 0xbb80

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported clock rate index in DTS UHD header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_9
    const v9, 0xac44

    goto :goto_6

    :cond_a
    const/16 v9, 0x7d00

    :goto_6
    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0x24

    invoke-virtual {v14, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_b
    invoke-virtual {v14, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v3

    shl-int v3, v4, v3

    mul-int/2addr v3, v9

    int-to-long v7, v2

    int-to-long v9, v9

    sget-object v36, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v32, 0xf4240

    move-wide/from16 v30, v7

    move-wide/from16 v34, v9

    invoke-static/range {v30 .. v36}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    move v9, v3

    move-wide v11, v7

    goto :goto_7

    :cond_c
    const-string v0, "CRC check failed"

    invoke-static {v7, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_d
    const-string v0, "Only supports full channel mask-based audio presentation"

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_e
    move-wide/from16 v11, v17

    const v9, -0x7fffffff

    :goto_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v2, v6, :cond_f

    sget-object v4, Landroidx/media3/extractor/DtsUtil;->f:[I

    invoke-static {v14, v4}, Landroidx/media3/extractor/DtsUtil;->d(Landroidx/media3/common/util/ParsableBitArray;[I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    iget-object v2, v0, Landroidx/media3/extractor/ts/DtsReader;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v6, :cond_10

    sget-object v4, Landroidx/media3/extractor/DtsUtil;->g:[I

    invoke-static {v14, v4}, Landroidx/media3/extractor/DtsUtil;->d(Landroidx/media3/common/util/ParsableBitArray;[I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Landroidx/media3/extractor/DtsUtil;->h:[I

    invoke-static {v14, v2}, Landroidx/media3/extractor/DtsUtil;->d(Landroidx/media3/common/util/ParsableBitArray;[I)I

    move-result v2

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v3, v2

    add-int v10, v3, v23

    new-instance v6, Landroidx/media3/extractor/DtsUtil$DtsHeader;

    const-string v7, "audio/vnd.dts.uhd;profile=p2"

    const/4 v8, 0x2

    invoke-direct/range {v6 .. v12}, Landroidx/media3/extractor/DtsUtil$DtsHeader;-><init>(Ljava/lang/String;IIIJ)V

    iget v2, v0, Landroidx/media3/extractor/ts/DtsReader;->n:I

    if-ne v2, v13, :cond_12

    invoke-virtual {v0, v6}, Landroidx/media3/extractor/ts/DtsReader;->g(Landroidx/media3/extractor/DtsUtil$DtsHeader;)V

    :cond_12
    iput v10, v0, Landroidx/media3/extractor/ts/DtsReader;->m:I

    cmp-long v2, v11, v17

    if-nez v2, :cond_13

    const-wide/16 v6, 0x0

    goto :goto_a

    :cond_13
    move-wide v6, v11

    :goto_a
    iput-wide v6, v0, Landroidx/media3/extractor/ts/DtsReader;->k:J

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/DtsReader;->g:Landroidx/media3/extractor/TrackOutput;

    iget v3, v0, Landroidx/media3/extractor/ts/DtsReader;->p:I

    invoke-interface {v2, v3, v5}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    const/4 v2, 0x6

    iput v2, v0, Landroidx/media3/extractor/ts/DtsReader;->h:I

    goto/16 :goto_0

    :pswitch_2
    const/4 v2, 0x6

    iget-object v3, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {v0, v1, v3, v2}, Landroidx/media3/extractor/ts/DtsReader;->b(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-static {v2}, Landroidx/media3/extractor/DtsUtil;->c([B)Landroidx/media3/common/util/ParsableBitArray;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    sget-object v3, Landroidx/media3/extractor/DtsUtil;->i:[I

    invoke-static {v2, v3}, Landroidx/media3/extractor/DtsUtil;->d(Landroidx/media3/common/util/ParsableBitArray;[I)I

    move-result v2

    add-int/2addr v2, v4

    iput v2, v0, Landroidx/media3/extractor/ts/DtsReader;->p:I

    iget v3, v0, Landroidx/media3/extractor/ts/DtsReader;->i:I

    if-le v3, v2, :cond_14

    sub-int v2, v3, v2

    sub-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/ts/DtsReader;->i:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    :cond_14
    iput v14, v0, Landroidx/media3/extractor/ts/DtsReader;->h:I

    goto/16 :goto_0

    :pswitch_3
    move/from16 v26, v15

    const/16 v27, 0x8

    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v3, v0, Landroidx/media3/extractor/ts/DtsReader;->o:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/ts/DtsReader;->b(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-static {v2}, Landroidx/media3/extractor/DtsUtil;->c([B)Landroidx/media3/common/util/ParsableBitArray;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v3

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v6

    if-nez v6, :cond_15

    const/16 v6, 0x10

    move/from16 v8, v27

    goto :goto_b

    :cond_15
    const/16 v6, 0x14

    const/16 v8, 0xc

    :goto_b
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    add-int/lit8 v35, v8, 0x1

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v9

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v10

    add-int/2addr v10, v4

    const/16 v12, 0x200

    mul-int/2addr v10, v12

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v12

    if-eqz v12, :cond_16

    const/16 v12, 0x24

    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_16
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v12

    add-int/2addr v12, v4

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v13

    add-int/2addr v13, v4

    if-ne v12, v4, :cond_19

    if-ne v13, v4, :cond_19

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v12

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v3, :cond_18

    shr-int v15, v12, v13

    and-int/2addr v15, v4

    if-ne v15, v4, :cond_17

    move/from16 v15, v27

    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_17
    add-int/lit8 v13, v13, 0x1

    const/16 v27, 0x8

    goto :goto_c

    :cond_18
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v3

    add-int/2addr v3, v4

    shl-int/2addr v3, v11

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v12

    add-int/2addr v12, v4

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v12, :cond_1b

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_19
    const-string v0, "Multiple audio presentations or assets not supported"

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1a
    const/4 v9, -0x1

    const/4 v10, 0x0

    :cond_1b
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    if-eqz v8, :cond_1f

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v3

    if-eqz v3, :cond_1c

    move/from16 v3, v26

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_1c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_1d
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    :cond_1e
    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    sget-object v3, Landroidx/media3/extractor/DtsUtil;->d:[I

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v6

    aget v13, v3, v6

    const/16 v15, 0x8

    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v2

    add-int/lit8 v15, v2, 0x1

    move/from16 v34, v13

    move/from16 v33, v15

    goto :goto_e

    :cond_1f
    const/16 v33, -0x1

    const v34, -0x7fffffff

    :goto_e
    if-eqz v8, :cond_23

    if-eqz v9, :cond_22

    if-eq v9, v4, :cond_21

    if-ne v9, v11, :cond_20

    const v9, 0xbb80

    goto :goto_f

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported reference clock code in DTS HD header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_21
    const v9, 0xac44

    goto :goto_f

    :cond_22
    const/16 v9, 0x7d00

    :goto_f
    int-to-long v2, v10

    int-to-long v6, v9

    sget-object v4, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v25, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v21, 0xf4240

    move-wide/from16 v19, v2

    move-wide/from16 v23, v6

    invoke-static/range {v19 .. v25}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    move-wide/from16 v36, v2

    goto :goto_10

    :cond_23
    move-wide/from16 v36, v17

    :goto_10
    new-instance v31, Landroidx/media3/extractor/DtsUtil$DtsHeader;

    const-string v32, "audio/vnd.dts.hd;profile=lbr"

    invoke-direct/range {v31 .. v37}, Landroidx/media3/extractor/DtsUtil$DtsHeader;-><init>(Ljava/lang/String;IIIJ)V

    move-object/from16 v2, v31

    move/from16 v8, v35

    invoke-virtual {v0, v2}, Landroidx/media3/extractor/ts/DtsReader;->g(Landroidx/media3/extractor/DtsUtil$DtsHeader;)V

    iput v8, v0, Landroidx/media3/extractor/ts/DtsReader;->m:I

    cmp-long v2, v36, v17

    if-nez v2, :cond_24

    const-wide/16 v6, 0x0

    goto :goto_11

    :cond_24
    move-wide/from16 v6, v36

    :goto_11
    iput-wide v6, v0, Landroidx/media3/extractor/ts/DtsReader;->k:J

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/DtsReader;->g:Landroidx/media3/extractor/TrackOutput;

    iget v3, v0, Landroidx/media3/extractor/ts/DtsReader;->o:I

    invoke-interface {v2, v3, v5}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    const/4 v2, 0x6

    iput v2, v0, Landroidx/media3/extractor/ts/DtsReader;->h:I

    goto/16 :goto_0

    :pswitch_4
    const/16 v3, 0xc

    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v6, 0x7

    invoke-virtual {v0, v1, v2, v6}, Landroidx/media3/extractor/ts/DtsReader;->b(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-static {v2}, Landroidx/media3/extractor/DtsUtil;->c([B)Landroidx/media3/common/util/ParsableBitArray;

    move-result-object v2

    const/16 v5, 0x2a

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v5

    if-eqz v5, :cond_25

    move v5, v3

    goto :goto_12

    :cond_25
    const/16 v5, 0x8

    :goto_12
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v2

    add-int/2addr v2, v4

    iput v2, v0, Landroidx/media3/extractor/ts/DtsReader;->o:I

    iput v13, v0, Landroidx/media3/extractor/ts/DtsReader;->h:I

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/ts/DtsReader;->b(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget-object v8, v0, Landroidx/media3/extractor/ts/DtsReader;->l:Landroidx/media3/common/Format;

    const/16 v9, 0x3c

    if-nez v8, :cond_28

    iget-object v8, v0, Landroidx/media3/extractor/ts/DtsReader;->f:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/extractor/DtsUtil;->c([B)Landroidx/media3/common/util/ParsableBitArray;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v13

    sget-object v12, Landroidx/media3/extractor/DtsUtil;->a:[I

    aget v12, v12, v13

    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v15

    sget-object v13, Landroidx/media3/extractor/DtsUtil;->b:[I

    aget v13, v13, v15

    invoke-virtual {v10, v14}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v15

    move/from16 v16, v6

    const/16 v6, 0x1d

    if-lt v15, v6, :cond_26

    const/4 v6, -0x1

    :goto_13
    const/16 v15, 0xa

    goto :goto_14

    :cond_26
    sget-object v6, Landroidx/media3/extractor/DtsUtil;->c:[I

    aget v6, v6, v15

    mul-int/lit16 v6, v6, 0x3e8

    div-int/2addr v6, v11

    goto :goto_13

    :goto_14
    invoke-virtual {v10, v15}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v10, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v10

    if-lez v10, :cond_27

    move v10, v4

    goto :goto_15

    :cond_27
    const/4 v10, 0x0

    :goto_15
    add-int/2addr v12, v10

    new-instance v10, Landroidx/media3/common/Format$Builder;

    invoke-direct {v10}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v8, v10, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media3/extractor/ts/DtsReader;->e:Ljava/lang/String;

    invoke-static {v8}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string v8, "audio/vnd.dts"

    invoke-static {v8}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v6, v10, Landroidx/media3/common/Format$Builder;->h:I

    iput v12, v10, Landroidx/media3/common/Format$Builder;->F:I

    iput v13, v10, Landroidx/media3/common/Format$Builder;->G:I

    iput-object v7, v10, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    iget-object v6, v0, Landroidx/media3/extractor/ts/DtsReader;->c:Ljava/lang/String;

    iput-object v6, v10, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iget v6, v0, Landroidx/media3/extractor/ts/DtsReader;->d:I

    iput v6, v10, Landroidx/media3/common/Format$Builder;->f:I

    new-instance v6, Landroidx/media3/common/Format;

    invoke-direct {v6, v10}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v6, v0, Landroidx/media3/extractor/ts/DtsReader;->l:Landroidx/media3/common/Format;

    iget-object v7, v0, Landroidx/media3/extractor/ts/DtsReader;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v7, v6}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    goto :goto_16

    :cond_28
    move/from16 v16, v6

    :goto_16
    invoke-static {v2}, Landroidx/media3/extractor/DtsUtil;->a([B)I

    move-result v6

    iput v6, v0, Landroidx/media3/extractor/ts/DtsReader;->m:I

    const/16 v29, 0x0

    aget-byte v6, v2, v29

    const/4 v7, -0x2

    if-eq v6, v7, :cond_2b

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2a

    const/16 v7, 0x1f

    if-eq v6, v7, :cond_29

    const/16 v26, 0x4

    aget-byte v6, v2, v26

    and-int/2addr v6, v4

    const/16 v28, 0x6

    shl-int/lit8 v6, v6, 0x6

    aget-byte v2, v2, v14

    :goto_17
    and-int/lit16 v2, v2, 0xfc

    :goto_18
    shr-int/2addr v2, v11

    or-int/2addr v2, v6

    goto :goto_1a

    :cond_29
    const/16 v26, 0x4

    const/16 v28, 0x6

    aget-byte v6, v2, v14

    const/16 v24, 0x7

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x4

    aget-byte v2, v2, v28

    :goto_19
    and-int/2addr v2, v9

    goto :goto_18

    :cond_2a
    const/16 v24, 0x7

    const/16 v26, 0x4

    aget-byte v6, v2, v26

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x4

    aget-byte v2, v2, v24

    goto :goto_19

    :cond_2b
    const/16 v26, 0x4

    aget-byte v6, v2, v14

    and-int/2addr v6, v4

    const/16 v28, 0x6

    shl-int/lit8 v6, v6, 0x6

    aget-byte v2, v2, v26

    goto :goto_17

    :goto_1a
    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x20

    int-to-long v6, v2

    iget-object v2, v0, Landroidx/media3/extractor/ts/DtsReader;->l:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->H:I

    invoke-static {v2, v6, v7}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v2

    int-to-long v6, v2

    iput-wide v6, v0, Landroidx/media3/extractor/ts/DtsReader;->k:J

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/DtsReader;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v2, v3, v5}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    const/4 v2, 0x6

    iput v2, v0, Landroidx/media3/extractor/ts/DtsReader;->h:I

    goto/16 :goto_0

    :cond_2c
    :pswitch_6
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v0, Landroidx/media3/extractor/ts/DtsReader;->j:I

    const/16 v27, 0x8

    shl-int/lit8 v2, v2, 0x8

    iput v2, v0, Landroidx/media3/extractor/ts/DtsReader;->j:I

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/extractor/ts/DtsReader;->j:I

    invoke-static {v2}, Landroidx/media3/extractor/DtsUtil;->b(I)I

    move-result v2

    iput v2, v0, Landroidx/media3/extractor/ts/DtsReader;->n:I

    if-eqz v2, :cond_2c

    iget-object v3, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v5, v0, Landroidx/media3/extractor/ts/DtsReader;->j:I

    shr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/16 v29, 0x0

    aput-byte v6, v3, v29

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v11

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v13

    const/4 v3, 0x4

    iput v3, v0, Landroidx/media3/extractor/ts/DtsReader;->i:I

    const/4 v6, 0x0

    iput v6, v0, Landroidx/media3/extractor/ts/DtsReader;->j:I

    if-eq v2, v13, :cond_2f

    if-ne v2, v3, :cond_2d

    goto :goto_1b

    :cond_2d
    if-ne v2, v4, :cond_2e

    iput v4, v0, Landroidx/media3/extractor/ts/DtsReader;->h:I

    goto/16 :goto_0

    :cond_2e
    iput v11, v0, Landroidx/media3/extractor/ts/DtsReader;->h:I

    goto/16 :goto_0

    :cond_2f
    :goto_1b
    iput v3, v0, Landroidx/media3/extractor/ts/DtsReader;->h:I

    goto/16 :goto_0

    :cond_30
    return-void

    nop

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

.method public final b(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->i:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->i:I

    invoke-virtual {p1, v1, v0, p2}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    iget p1, p0, Landroidx/media3/extractor/ts/DtsReader;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/DtsReader;->i:I

    if-ne p1, p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->h:I

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->i:I

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->j:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/extractor/ts/DtsReader;->q:J

    iget-object p0, p0, Landroidx/media3/extractor/ts/DtsReader;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final d(Z)V
    .locals 0

    return-void
.end method

.method public final e(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->f:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget p2, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/DtsReader;->g:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method

.method public final f(IJ)V
    .locals 0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/DtsReader;->q:J

    return-void
.end method

.method public final g(Landroidx/media3/extractor/DtsUtil$DtsHeader;)V
    .locals 4

    iget v0, p1, Landroidx/media3/extractor/DtsUtil$DtsHeader;->b:I

    iget-object v1, p1, Landroidx/media3/extractor/DtsUtil$DtsHeader;->a:Ljava/lang/String;

    iget p1, p1, Landroidx/media3/extractor/DtsUtil$DtsHeader;->c:I

    const v2, -0x7fffffff

    if-eq v0, v2, :cond_3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/media3/extractor/ts/DtsReader;->l:Landroidx/media3/common/Format;

    if-eqz v2, :cond_1

    iget v3, v2, Landroidx/media3/common/Format;->G:I

    if-ne p1, v3, :cond_1

    iget v3, v2, Landroidx/media3/common/Format;->H:I

    if-ne v0, v3, :cond_1

    iget-object v2, v2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Landroidx/media3/extractor/ts/DtsReader;->l:Landroidx/media3/common/Format;

    if-nez v2, :cond_2

    new-instance v2, Landroidx/media3/common/Format$Builder;

    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Landroidx/media3/extractor/ts/DtsReader;->f:Ljava/lang/String;

    iput-object v3, v2, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/extractor/ts/DtsReader;->e:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput p1, v2, Landroidx/media3/common/Format$Builder;->F:I

    iput v0, v2, Landroidx/media3/common/Format$Builder;->G:I

    iget-object p1, p0, Landroidx/media3/extractor/ts/DtsReader;->c:Ljava/lang/String;

    iput-object p1, v2, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iget p1, p0, Landroidx/media3/extractor/ts/DtsReader;->d:I

    iput p1, v2, Landroidx/media3/common/Format$Builder;->f:I

    new-instance p1, Landroidx/media3/common/Format;

    invoke-direct {p1, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/DtsReader;->l:Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/extractor/ts/DtsReader;->g:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    :cond_3
    :goto_1
    return-void
.end method
