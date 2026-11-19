.class public abstract Lcom/google/crypto/tink/subtle/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/Base64$Encoder;,
        Lcom/google/crypto/tink/subtle/Base64$Decoder;,
        Lcom/google/crypto/tink/subtle/Base64$Coder;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/subtle/Base64;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 17

    sget-object v0, Lcom/google/crypto/tink/subtle/Base64;->a:Ljava/nio/charset/Charset;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    new-instance v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;

    mul-int/lit8 v3, v1, 0x3

    const/4 v4, 0x4

    div-int/2addr v3, v4

    new-array v3, v3, [B

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3}, Lcom/google/crypto/tink/subtle/Base64$Decoder;-><init>(I[B)V

    iget v3, v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;->b:I

    const/4 v6, 0x6

    if-eq v3, v6, :cond_1b

    iget-object v7, v2, Lcom/google/crypto/tink/subtle/Base64$Coder;->a:[B

    iget v8, v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;->c:I

    move v9, v5

    move v10, v9

    :goto_0
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v9, v1, :cond_15

    iget-object v14, v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;->d:[I

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v15, v9, 0x4

    if-gt v15, v1, :cond_0

    aget-byte v8, v0, v9

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    shl-int/lit8 v8, v8, 0x12

    add-int/lit8 v16, v9, 0x1

    aget-byte v5, v0, v16

    and-int/lit16 v5, v5, 0xff

    aget v5, v14, v5

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x2

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    shl-int/2addr v8, v6

    or-int/2addr v5, v8

    add-int/lit8 v8, v9, 0x3

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    or-int/2addr v8, v5

    if-ltz v8, :cond_0

    add-int/lit8 v5, v10, 0x2

    int-to-byte v9, v8

    aput-byte v9, v7, v5

    add-int/lit8 v5, v10, 0x1

    shr-int/lit8 v9, v8, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v5

    shr-int/lit8 v5, v8, 0x10

    int-to-byte v5, v5

    aput-byte v5, v7, v10

    add-int/lit8 v10, v10, 0x3

    move v9, v15

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    if-lt v9, v1, :cond_1

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v5, v9, 0x1

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v14, v9

    const/4 v14, -0x1

    if-eqz v3, :cond_12

    if-eq v3, v13, :cond_f

    const/4 v13, -0x2

    if-eq v3, v12, :cond_b

    const/4 v12, 0x5

    if-eq v3, v11, :cond_7

    if-eq v3, v4, :cond_4

    if-eq v3, v12, :cond_2

    goto/16 :goto_4

    :cond_2
    if-ne v9, v14, :cond_3

    goto/16 :goto_4

    :cond_3
    iput v6, v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;->b:I

    goto/16 :goto_7

    :cond_4
    if-ne v9, v13, :cond_5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_5
    if-ne v9, v14, :cond_6

    goto/16 :goto_4

    :cond_6
    iput v6, v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;->b:I

    goto/16 :goto_7

    :cond_7
    if-ltz v9, :cond_8

    shl-int/lit8 v3, v8, 0x6

    or-int/2addr v3, v9

    add-int/lit8 v8, v10, 0x2

    int-to-byte v9, v3

    aput-byte v9, v7, v8

    add-int/lit8 v8, v10, 0x1

    shr-int/lit8 v9, v3, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    shr-int/lit8 v8, v3, 0x10

    int-to-byte v8, v8

    aput-byte v8, v7, v10

    add-int/lit8 v10, v10, 0x3

    move v8, v3

    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    if-ne v9, v13, :cond_9

    add-int/lit8 v3, v10, 0x1

    shr-int/lit8 v9, v8, 0x2

    int-to-byte v9, v9

    aput-byte v9, v7, v3

    shr-int/lit8 v3, v8, 0xa

    int-to-byte v3, v3

    aput-byte v3, v7, v10

    add-int/lit8 v10, v10, 0x2

    move v3, v12

    goto :goto_4

    :cond_9
    if-ne v9, v14, :cond_a

    goto :goto_4

    :cond_a
    iput v6, v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;->b:I

    goto/16 :goto_7

    :cond_b
    if-ltz v9, :cond_c

    :goto_3
    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v8, v9

    goto :goto_2

    :cond_c
    if-ne v9, v13, :cond_d

    add-int/lit8 v3, v10, 0x1

    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v7, v10

    move v10, v3

    move v3, v4

    goto :goto_4

    :cond_d
    if-ne v9, v14, :cond_e

    goto :goto_4

    :cond_e
    iput v6, v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;->b:I

    goto :goto_7

    :cond_f
    if-ltz v9, :cond_10

    goto :goto_3

    :cond_10
    if-ne v9, v14, :cond_11

    goto :goto_4

    :cond_11
    iput v6, v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;->b:I

    goto :goto_7

    :cond_12
    if-ltz v9, :cond_13

    add-int/lit8 v3, v3, 0x1

    move v8, v9

    goto :goto_4

    :cond_13
    if-ne v9, v14, :cond_14

    :goto_4
    move v9, v5

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_14
    iput v6, v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;->b:I

    goto :goto_7

    :cond_15
    :goto_5
    if-eq v3, v13, :cond_1a

    if-eq v3, v12, :cond_18

    if-eq v3, v11, :cond_17

    if-eq v3, v4, :cond_16

    goto :goto_6

    :cond_16
    iput v6, v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;->b:I

    goto :goto_7

    :cond_17
    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v1, v8, 0xa

    int-to-byte v1, v1

    aput-byte v1, v7, v10

    add-int/lit8 v10, v10, 0x2

    shr-int/lit8 v1, v8, 0x2

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    goto :goto_6

    :cond_18
    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v1, v8, 0x4

    int-to-byte v1, v1

    aput-byte v1, v7, v10

    move v10, v0

    :goto_6
    iput v3, v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;->b:I

    iget-object v0, v2, Lcom/google/crypto/tink/subtle/Base64$Coder;->a:[B

    array-length v1, v0

    if-ne v10, v1, :cond_19

    return-object v0

    :cond_19
    new-array v1, v10, [B

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1a
    iput v6, v2, Lcom/google/crypto/tink/subtle/Base64$Decoder;->b:I

    :cond_1b
    :goto_7
    const-string v0, "bad base-64"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static b([B)[B
    .locals 23

    move-object/from16 v0, p0

    array-length v1, v0

    new-instance v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/google/crypto/tink/subtle/Base64$Encoder;-><init>(I[B)V

    div-int/lit8 v3, v1, 0x3

    const/4 v5, 0x4

    mul-int/2addr v3, v5

    const/4 v6, 0x1

    iget-boolean v7, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->e:Z

    if-eqz v7, :cond_0

    rem-int/lit8 v8, v1, 0x3

    if-lez v8, :cond_3

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_0
    rem-int/lit8 v8, v1, 0x3

    if-eq v8, v6, :cond_2

    if-eq v8, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x2

    :cond_3
    :goto_0
    iget-boolean v8, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->g:Z

    iget-boolean v9, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->f:Z

    if-eqz v9, :cond_5

    if-lez v1, :cond_5

    const/16 v10, 0x39

    invoke-static {v1, v6, v10, v6}, La;->a(IIII)I

    move-result v10

    if-eqz v8, :cond_4

    move v11, v4

    goto :goto_1

    :cond_4
    move v11, v6

    :goto_1
    mul-int/2addr v10, v11

    add-int/2addr v3, v10

    :cond_5
    new-array v3, v3, [B

    iput-object v3, v2, Lcom/google/crypto/tink/subtle/Base64$Coder;->a:[B

    iget v10, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->d:I

    iget v11, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->c:I

    const/4 v12, 0x0

    iget-object v13, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->b:[B

    const/4 v14, -0x1

    if-eq v11, v6, :cond_7

    if-eq v11, v4, :cond_6

    goto :goto_2

    :cond_6
    if-gt v6, v1, :cond_8

    aget-byte v11, v13, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    aget-byte v15, v13, v6

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v11, v15

    aget-byte v15, v0, v12

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v11, v15

    iput v12, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->c:I

    move/from16 v16, v4

    move v15, v6

    goto :goto_3

    :cond_7
    if-gt v4, v1, :cond_8

    aget-byte v11, v13, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    aget-byte v15, v0, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v11, v15

    aget-byte v15, v0, v6

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v11, v15

    iput v12, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->c:I

    move v15, v4

    move/from16 v16, v15

    goto :goto_3

    :cond_8
    :goto_2
    move/from16 v16, v4

    move v15, v12

    move v11, v14

    :goto_3
    const/16 v17, 0xd

    const/16 v18, 0xa

    move/from16 v19, v5

    iget-object v5, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->h:[B

    if-eq v11, v14, :cond_b

    shr-int/lit8 v14, v11, 0x12

    and-int/lit8 v14, v14, 0x3f

    aget-byte v14, v5, v14

    aput-byte v14, v3, v12

    shr-int/lit8 v14, v11, 0xc

    and-int/lit8 v14, v14, 0x3f

    aget-byte v14, v5, v14

    aput-byte v14, v3, v6

    shr-int/lit8 v14, v11, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-byte v14, v5, v14

    aput-byte v14, v3, v16

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v5, v11

    const/4 v14, 0x3

    aput-byte v11, v3, v14

    add-int/lit8 v10, v10, -0x1

    if-nez v10, :cond_a

    if-eqz v8, :cond_9

    aput-byte v17, v3, v19

    const/4 v10, 0x5

    goto :goto_4

    :cond_9
    move/from16 v10, v19

    :goto_4
    add-int/lit8 v11, v10, 0x1

    aput-byte v18, v3, v10

    :goto_5
    const/16 v10, 0x13

    goto :goto_6

    :cond_a
    move/from16 v11, v19

    goto :goto_6

    :cond_b
    move v11, v12

    :goto_6
    add-int/lit8 v14, v15, 0x3

    if-gt v14, v1, :cond_e

    move/from16 v20, v12

    aget-byte v12, v0, v15

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v21, v15, 0x1

    aget-byte v4, v0, v21

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v12

    add-int/lit8 v15, v15, 0x2

    aget-byte v12, v0, v15

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v4, v12

    shr-int/lit8 v12, v4, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v5, v12

    aput-byte v12, v3, v11

    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v15, v4, 0xc

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v5, v15

    aput-byte v15, v3, v12

    add-int/lit8 v12, v11, 0x2

    shr-int/lit8 v15, v4, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v5, v15

    aput-byte v15, v3, v12

    add-int/lit8 v12, v11, 0x3

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v5, v4

    aput-byte v4, v3, v12

    add-int/lit8 v4, v11, 0x4

    add-int/lit8 v10, v10, -0x1

    if-nez v10, :cond_d

    if-eqz v8, :cond_c

    add-int/lit8 v11, v11, 0x5

    aput-byte v17, v3, v4

    move v4, v11

    :cond_c
    add-int/lit8 v11, v4, 0x1

    aput-byte v18, v3, v4

    move v15, v14

    move/from16 v12, v20

    goto :goto_5

    :cond_d
    move v11, v4

    move v15, v14

    move/from16 v12, v20

    goto :goto_6

    :cond_e
    move/from16 v20, v12

    iget v4, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->c:I

    sub-int v12, v15, v4

    add-int/lit8 v14, v1, -0x1

    const/16 v21, 0x3d

    if-ne v12, v14, :cond_12

    if-lez v4, :cond_f

    aget-byte v0, v13, v20

    goto :goto_7

    :cond_f
    aget-byte v0, v0, v15

    move/from16 v6, v20

    :goto_7
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    sub-int/2addr v4, v6

    iput v4, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->c:I

    add-int/lit8 v1, v11, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v5, v4

    aput-byte v4, v3, v11

    add-int/lit8 v4, v11, 0x2

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v5, v0

    aput-byte v0, v3, v1

    if-eqz v7, :cond_10

    add-int/lit8 v0, v11, 0x3

    aput-byte v21, v3, v4

    add-int/lit8 v4, v11, 0x4

    aput-byte v21, v3, v0

    :cond_10
    if-eqz v9, :cond_19

    if-eqz v8, :cond_11

    add-int/lit8 v0, v4, 0x1

    aput-byte v17, v3, v4

    move v4, v0

    :cond_11
    aput-byte v18, v3, v4

    goto/16 :goto_a

    :cond_12
    add-int/lit8 v1, v1, -0x2

    if-ne v12, v1, :cond_17

    if-le v4, v6, :cond_13

    aget-byte v1, v13, v20

    goto :goto_8

    :cond_13
    add-int/lit8 v1, v15, 0x1

    aget-byte v6, v0, v15

    move v15, v1

    move v1, v6

    move/from16 v6, v20

    :goto_8
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xa

    if-lez v4, :cond_14

    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v13, v6

    goto :goto_9

    :cond_14
    aget-byte v0, v0, v15

    move/from16 v22, v6

    move v6, v0

    move/from16 v0, v22

    :goto_9
    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v1, v6

    sub-int/2addr v4, v0

    iput v4, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->c:I

    add-int/lit8 v0, v11, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v5, v4

    aput-byte v4, v3, v11

    add-int/lit8 v4, v11, 0x2

    shr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v5, v6

    aput-byte v6, v3, v0

    add-int/lit8 v0, v11, 0x3

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v5, v1

    aput-byte v1, v3, v4

    if-eqz v7, :cond_15

    add-int/lit8 v11, v11, 0x4

    aput-byte v21, v3, v0

    move v0, v11

    :cond_15
    if-eqz v9, :cond_19

    if-eqz v8, :cond_16

    add-int/lit8 v1, v0, 0x1

    aput-byte v17, v3, v0

    move v0, v1

    :cond_16
    aput-byte v18, v3, v0

    goto :goto_a

    :cond_17
    if-eqz v9, :cond_19

    if-lez v11, :cond_19

    const/16 v0, 0x13

    if-eq v10, v0, :cond_19

    if-eqz v8, :cond_18

    add-int/lit8 v0, v11, 0x1

    aput-byte v17, v3, v11

    move v11, v0

    :cond_18
    aput-byte v18, v3, v11

    :cond_19
    :goto_a
    iput v10, v2, Lcom/google/crypto/tink/subtle/Base64$Encoder;->d:I

    iget-object v0, v2, Lcom/google/crypto/tink/subtle/Base64$Coder;->a:[B

    return-object v0
.end method
