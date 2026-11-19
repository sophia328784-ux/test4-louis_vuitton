.class public Lorg/spongycastle/crypto/digests/SHA1Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/digests/EncodableDigest;


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:[I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x50

    .line 88
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->i:[I

    .line 89
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V
    .locals 4

    .line 78
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x50

    .line 79
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->i:[I

    .line 80
    iget v1, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->d:I

    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->d:I

    .line 81
    iget v1, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->e:I

    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->e:I

    .line 82
    iget v1, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->f:I

    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->f:I

    .line 83
    iget v1, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->g:I

    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->g:I

    .line 84
    iget v1, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->h:I

    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->h:I

    .line 85
    iget-object v1, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->i:[I

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget p1, p1, Lorg/spongycastle/crypto/digests/SHA1Digest;->j:I

    iput p1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->j:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>([B)V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->i:[I

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->a([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->d:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->a([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->e:I

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->a([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->f:I

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->a([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->g:I

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->a([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->h:I

    const/16 v0, 0x24

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->a([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->j:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->j:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->i:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x28

    invoke-static {p1, v2}, Lorg/spongycastle/util/Pack;->a([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final b([B)I
    .locals 2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->d()V

    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->d:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->e:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->f:I

    const/16 v1, 0x8

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->g:I

    const/16 v1, 0xc

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->h:I

    const/16 v1, 0x10

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->c(I[BI)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->h()V

    const/16 p0, 0x14

    return p0
.end method

.method public final e()V
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x10

    move v2, v1

    :goto_0
    const/16 v3, 0x50

    iget-object v4, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->i:[I

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x3

    aget v3, v4, v3

    add-int/lit8 v5, v2, -0x8

    aget v5, v4, v5

    xor-int/2addr v3, v5

    add-int/lit8 v5, v2, -0xe

    aget v5, v4, v5

    xor-int/2addr v3, v5

    add-int/lit8 v5, v2, -0x10

    aget v5, v4, v5

    xor-int/2addr v3, v5

    shl-int/lit8 v5, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v5

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->d:I

    iget v3, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->e:I

    iget v5, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->f:I

    iget v6, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->g:I

    iget v7, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->h:I

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_1
    const/4 v11, 0x4

    if-ge v9, v11, :cond_1

    shl-int/lit8 v11, v2, 0x5

    ushr-int/lit8 v12, v2, 0x1b

    or-int/2addr v11, v12

    and-int v12, v3, v5

    not-int v13, v3

    and-int/2addr v13, v6

    or-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/lit8 v11, v10, 0x1

    aget v13, v4, v10

    const v14, 0x5a827999

    invoke-static {v12, v13, v14, v7}, Lpq0;->D(IIII)I

    move-result v7

    shl-int/lit8 v12, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v12

    shl-int/lit8 v12, v7, 0x5

    ushr-int/lit8 v13, v7, 0x1b

    or-int/2addr v12, v13

    and-int v13, v2, v3

    not-int v15, v2

    and-int/2addr v15, v5

    or-int/2addr v13, v15

    add-int/2addr v13, v12

    add-int/lit8 v12, v10, 0x2

    aget v11, v4, v11

    invoke-static {v13, v11, v14, v6}, Lpq0;->D(IIII)I

    move-result v6

    shl-int/lit8 v11, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v11

    shl-int/lit8 v11, v6, 0x5

    ushr-int/lit8 v13, v6, 0x1b

    or-int/2addr v11, v13

    and-int v13, v7, v2

    not-int v15, v7

    and-int/2addr v15, v3

    or-int/2addr v13, v15

    add-int/2addr v13, v11

    add-int/lit8 v11, v10, 0x3

    aget v12, v4, v12

    invoke-static {v13, v12, v14, v5}, Lpq0;->D(IIII)I

    move-result v5

    shl-int/lit8 v12, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v12

    shl-int/lit8 v12, v5, 0x5

    ushr-int/lit8 v13, v5, 0x1b

    or-int/2addr v12, v13

    and-int v13, v6, v7

    not-int v15, v6

    and-int/2addr v15, v2

    or-int/2addr v13, v15

    add-int/2addr v13, v12

    add-int/lit8 v12, v10, 0x4

    aget v11, v4, v11

    invoke-static {v13, v11, v14, v3}, Lpq0;->D(IIII)I

    move-result v3

    shl-int/lit8 v11, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v11

    shl-int/lit8 v11, v3, 0x5

    ushr-int/lit8 v13, v3, 0x1b

    or-int/2addr v11, v13

    and-int v13, v5, v6

    not-int v15, v5

    and-int/2addr v15, v7

    or-int/2addr v13, v15

    add-int/2addr v13, v11

    add-int/lit8 v10, v10, 0x5

    aget v11, v4, v12

    invoke-static {v13, v11, v14, v2}, Lpq0;->D(IIII)I

    move-result v2

    shl-int/lit8 v11, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v11

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_1
    move v9, v8

    :goto_2
    if-ge v9, v11, :cond_2

    shl-int/lit8 v12, v2, 0x5

    ushr-int/lit8 v13, v2, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v3, v5

    xor-int/2addr v13, v6

    add-int/2addr v12, v13

    add-int/lit8 v13, v10, 0x1

    aget v14, v4, v10

    const v15, 0x6ed9eba1

    invoke-static {v12, v14, v15, v7}, Lpq0;->D(IIII)I

    move-result v7

    shl-int/lit8 v12, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v12

    shl-int/lit8 v12, v7, 0x5

    ushr-int/lit8 v14, v7, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v2, v3

    xor-int/2addr v14, v5

    add-int/2addr v12, v14

    add-int/lit8 v14, v10, 0x2

    aget v13, v4, v13

    invoke-static {v12, v13, v15, v6}, Lpq0;->D(IIII)I

    move-result v6

    shl-int/lit8 v12, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v12

    shl-int/lit8 v12, v6, 0x5

    ushr-int/lit8 v13, v6, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v7, v2

    xor-int/2addr v13, v3

    add-int/2addr v12, v13

    add-int/lit8 v13, v10, 0x3

    aget v14, v4, v14

    invoke-static {v12, v14, v15, v5}, Lpq0;->D(IIII)I

    move-result v5

    shl-int/lit8 v12, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v12

    shl-int/lit8 v12, v5, 0x5

    ushr-int/lit8 v14, v5, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v6, v7

    xor-int/2addr v14, v2

    add-int/2addr v12, v14

    add-int/lit8 v14, v10, 0x4

    aget v13, v4, v13

    invoke-static {v12, v13, v15, v3}, Lpq0;->D(IIII)I

    move-result v3

    shl-int/lit8 v12, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v12

    shl-int/lit8 v12, v3, 0x5

    ushr-int/lit8 v13, v3, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v5, v6

    xor-int/2addr v13, v7

    add-int/2addr v12, v13

    add-int/lit8 v10, v10, 0x5

    aget v13, v4, v14

    invoke-static {v12, v13, v15, v2}, Lpq0;->D(IIII)I

    move-result v2

    shl-int/lit8 v12, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move v9, v8

    :goto_3
    if-ge v9, v11, :cond_3

    shl-int/lit8 v12, v2, 0x5

    ushr-int/lit8 v13, v2, 0x1b

    or-int/2addr v12, v13

    or-int v13, v5, v6

    and-int/2addr v13, v3

    and-int v14, v5, v6

    or-int/2addr v13, v14

    add-int/2addr v13, v12

    add-int/lit8 v12, v10, 0x1

    aget v14, v4, v10

    const v15, -0x70e44324

    invoke-static {v13, v14, v15, v7}, Lpq0;->D(IIII)I

    move-result v7

    shl-int/lit8 v13, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v13

    shl-int/lit8 v13, v7, 0x5

    ushr-int/lit8 v14, v7, 0x1b

    or-int/2addr v13, v14

    or-int v14, v3, v5

    and-int/2addr v14, v2

    and-int v16, v3, v5

    or-int v14, v14, v16

    add-int/2addr v14, v13

    add-int/lit8 v13, v10, 0x2

    aget v12, v4, v12

    invoke-static {v14, v12, v15, v6}, Lpq0;->D(IIII)I

    move-result v6

    shl-int/lit8 v12, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v12

    shl-int/lit8 v12, v6, 0x5

    ushr-int/lit8 v14, v6, 0x1b

    or-int/2addr v12, v14

    or-int v14, v2, v3

    and-int/2addr v14, v7

    and-int v16, v2, v3

    or-int v14, v14, v16

    add-int/2addr v14, v12

    add-int/lit8 v12, v10, 0x3

    aget v13, v4, v13

    invoke-static {v14, v13, v15, v5}, Lpq0;->D(IIII)I

    move-result v5

    shl-int/lit8 v13, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v13

    shl-int/lit8 v13, v5, 0x5

    ushr-int/lit8 v14, v5, 0x1b

    or-int/2addr v13, v14

    or-int v14, v7, v2

    and-int/2addr v14, v6

    and-int v16, v7, v2

    or-int v14, v14, v16

    add-int/2addr v14, v13

    add-int/lit8 v13, v10, 0x4

    aget v12, v4, v12

    invoke-static {v14, v12, v15, v3}, Lpq0;->D(IIII)I

    move-result v3

    shl-int/lit8 v12, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v12

    shl-int/lit8 v12, v3, 0x5

    ushr-int/lit8 v14, v3, 0x1b

    or-int/2addr v12, v14

    or-int v14, v6, v7

    and-int/2addr v14, v5

    and-int v16, v6, v7

    or-int v14, v14, v16

    add-int/2addr v14, v12

    add-int/lit8 v10, v10, 0x5

    aget v12, v4, v13

    invoke-static {v14, v12, v15, v2}, Lpq0;->D(IIII)I

    move-result v2

    shl-int/lit8 v12, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v12

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_3
    move v9, v8

    :goto_4
    const/4 v11, 0x3

    if-gt v9, v11, :cond_4

    shl-int/lit8 v11, v2, 0x5

    ushr-int/lit8 v12, v2, 0x1b

    or-int/2addr v11, v12

    xor-int v12, v3, v5

    xor-int/2addr v12, v6

    add-int/2addr v11, v12

    add-int/lit8 v12, v10, 0x1

    aget v13, v4, v10

    const v14, -0x359d3e2a    # -3715189.5f

    invoke-static {v11, v13, v14, v7}, Lpq0;->D(IIII)I

    move-result v7

    shl-int/lit8 v11, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v11

    shl-int/lit8 v11, v7, 0x5

    ushr-int/lit8 v13, v7, 0x1b

    or-int/2addr v11, v13

    xor-int v13, v2, v3

    xor-int/2addr v13, v5

    add-int/2addr v11, v13

    add-int/lit8 v13, v10, 0x2

    aget v12, v4, v12

    invoke-static {v11, v12, v14, v6}, Lpq0;->D(IIII)I

    move-result v6

    shl-int/lit8 v11, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v11

    shl-int/lit8 v11, v6, 0x5

    ushr-int/lit8 v12, v6, 0x1b

    or-int/2addr v11, v12

    xor-int v12, v7, v2

    xor-int/2addr v12, v3

    add-int/2addr v11, v12

    add-int/lit8 v12, v10, 0x3

    aget v13, v4, v13

    invoke-static {v11, v13, v14, v5}, Lpq0;->D(IIII)I

    move-result v5

    shl-int/lit8 v11, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v11

    shl-int/lit8 v11, v5, 0x5

    ushr-int/lit8 v13, v5, 0x1b

    or-int/2addr v11, v13

    xor-int v13, v6, v7

    xor-int/2addr v13, v2

    add-int/2addr v11, v13

    add-int/lit8 v13, v10, 0x4

    aget v12, v4, v12

    invoke-static {v11, v12, v14, v3}, Lpq0;->D(IIII)I

    move-result v3

    shl-int/lit8 v11, v6, 0x1e

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v6, v11

    shl-int/lit8 v11, v3, 0x5

    ushr-int/lit8 v12, v3, 0x1b

    or-int/2addr v11, v12

    xor-int v12, v5, v6

    xor-int/2addr v12, v7

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x5

    aget v12, v4, v13

    invoke-static {v11, v12, v14, v2}, Lpq0;->D(IIII)I

    move-result v2

    shl-int/lit8 v11, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->d:I

    add-int/2addr v9, v2

    iput v9, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->d:I

    iget v2, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->e:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->e:I

    iget v2, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->f:I

    add-int/2addr v2, v5

    iput v2, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->f:I

    iget v2, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->g:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->g:I

    iget v2, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->h:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->h:I

    iput v8, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;->j:I

    move v0, v8

    :goto_5
    if-ge v0, v1, :cond_5

    aput v8, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final f(J)V
    .locals 4

    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->j:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->e()V

    :cond_0
    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    iget-object p0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->i:[I

    aput v0, p0, v1

    const/16 v0, 0xf

    long-to-int p1, p1

    aput p1, p0, v0

    return-void
.end method

.method public final g([BI)V
    .locals 3

    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iget p2, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->j:I

    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->i:[I

    aput p1, v0, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->j:I

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->e()V

    :cond_0
    return-void
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .locals 0

    const-string p0, "SHA-1"

    return-object p0
.end method

.method public final getDigestSize()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public final h()V
    .locals 4

    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->h()V

    const v0, 0x67452301

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->d:I

    const v0, -0x10325477

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->e:I

    const v0, -0x67452302

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->f:I

    const v0, 0x10325476

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->g:I

    const v0, -0x3c2d1e10

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->j:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA1Digest;->i:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
