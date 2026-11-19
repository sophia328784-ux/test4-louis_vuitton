.class public Lorg/spongycastle/crypto/digests/KeccakDigest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# static fields
.field public static final g:[J

.field public static final h:[I


# instance fields
.field public final a:[J

.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x18

    new-array v1, v0, [J

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_4

    const-wide/16 v6, 0x0

    aput-wide v6, v1, v5

    move v6, v4

    :goto_1
    const/4 v7, 0x7

    if-ge v6, v7, :cond_3

    shl-int v7, v2, v6

    sub-int/2addr v7, v2

    aget-byte v8, v3, v4

    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_0

    move v9, v2

    goto :goto_2

    :cond_0
    move v9, v4

    :goto_2
    and-int/lit16 v10, v8, 0x80

    if-eqz v10, :cond_1

    shl-int/lit8 v8, v8, 0x1

    xor-int/lit8 v8, v8, 0x71

    int-to-byte v8, v8

    aput-byte v8, v3, v4

    goto :goto_3

    :cond_1
    shl-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v3, v4

    :goto_3
    if-eqz v9, :cond_2

    aget-wide v8, v1, v5

    const-wide/16 v10, 0x1

    shl-long/2addr v10, v7

    xor-long v7, v8, v10

    aput-wide v7, v1, v5

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    sput-object v1, Lorg/spongycastle/crypto/digests/KeccakDigest;->g:[J

    const/16 v1, 0x19

    new-array v1, v1, [I

    aput v4, v1, v4

    move v3, v4

    :goto_4
    if-ge v4, v0, :cond_5

    rem-int/lit8 v5, v2, 0x5

    rem-int/lit8 v6, v3, 0x5

    mul-int/lit8 v7, v6, 0x5

    add-int/2addr v7, v5

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    rem-int/lit8 v4, v4, 0x40

    aput v4, v1, v7

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x5

    move v4, v5

    move v2, v6

    goto :goto_4

    :cond_5
    sput-object v1, Lorg/spongycastle/crypto/digests/KeccakDigest;->h:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x120

    .line 49
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 46
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->a:[J

    const/16 v0, 0xc0

    .line 47
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->b:[B

    .line 48
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->f(I)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/KeccakDigest;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->a:[J

    const/16 v1, 0xc0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->b:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->a:[J

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->b:[B

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->c:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->c:I

    iget v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    iget v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->e:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->e:I

    iget-boolean p1, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->f:Z

    iput-boolean p1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->f:Z

    return-void
.end method

.method public static g(IJ)J
    .locals 2

    shl-long v0, p1, p0

    neg-int p0, p0

    ushr-long p0, p1, p0

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final a(I[B)V
    .locals 6

    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->f:Z

    if-nez v1, :cond_4

    shr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->c:I

    shr-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, p1, :cond_3

    if-nez v0, :cond_2

    sub-int v4, p1, v1

    if-gt v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0, p2, v3}, Lorg/spongycastle/crypto/digests/KeccakDigest;->c([BI)V

    add-int/2addr v3, v1

    if-le v3, v4, :cond_1

    goto :goto_0

    :cond_2
    sub-int v4, v1, v0

    sub-int v5, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->b:[B

    invoke-static {p2, v3, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    add-int/2addr v3, v4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v5, v2}, Lorg/spongycastle/crypto/digests/KeccakDigest;->c([BI)V

    move v0, v2

    goto :goto_0

    :cond_3
    shl-int/lit8 p1, v0, 0x3

    iput p1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    return-void

    :cond_4
    const-string p0, "attempt to absorb while squeezing"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p0, "attempt to absorb with odd length queue"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public b([B)I
    .locals 2

    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->e:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->h(J[B)V

    iget p1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->e:I

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->f(I)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result p0

    return p0
.end method

.method public final c([BI)V
    .locals 7

    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->c:I

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->a:[J

    aget-wide v3, v2, v1

    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->f([BI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->e()V

    return-void
.end method

.method public final d()V
    .locals 7

    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->c:I

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->a:[J

    aget-wide v3, v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v5, v3

    long-to-int v5, v5

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->b:[B

    invoke-static {v5, v6, v2}, Lorg/spongycastle/util/Pack;->d(I[BI)V

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    add-int/lit8 v4, v2, 0x4

    invoke-static {v3, v6, v4}, Lorg/spongycastle/util/Pack;->d(I[BI)V

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 41

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x18

    if-ge v1, v2, :cond_2

    move-object/from16 v3, p0

    iget-object v4, v3, Lorg/spongycastle/crypto/digests/KeccakDigest;->a:[J

    aget-wide v5, v4, v0

    const/4 v7, 0x5

    aget-wide v8, v4, v7

    xor-long/2addr v5, v8

    const/16 v8, 0xa

    aget-wide v9, v4, v8

    xor-long/2addr v5, v9

    const/16 v9, 0xf

    aget-wide v10, v4, v9

    xor-long/2addr v5, v10

    const/16 v10, 0x14

    aget-wide v11, v4, v10

    xor-long/2addr v5, v11

    const/4 v11, 0x1

    aget-wide v12, v4, v11

    const/4 v14, 0x6

    aget-wide v15, v4, v14

    xor-long/2addr v12, v15

    const/16 v15, 0xb

    aget-wide v16, v4, v15

    xor-long v12, v12, v16

    const/16 v16, 0x10

    aget-wide v17, v4, v16

    xor-long v12, v12, v17

    const/16 v17, 0x15

    aget-wide v18, v4, v17

    xor-long v12, v12, v18

    const/16 v18, 0x2

    aget-wide v19, v4, v18

    const/16 v21, 0x7

    aget-wide v22, v4, v21

    xor-long v19, v19, v22

    const/16 v22, 0xc

    aget-wide v23, v4, v22

    xor-long v19, v19, v23

    const/16 v23, 0x11

    aget-wide v24, v4, v23

    xor-long v19, v19, v24

    const/16 v24, 0x16

    aget-wide v25, v4, v24

    move/from16 v27, v0

    move/from16 v28, v1

    xor-long v0, v19, v25

    const/16 v19, 0x3

    aget-wide v25, v4, v19

    const/16 v20, 0x8

    aget-wide v29, v4, v20

    xor-long v25, v25, v29

    const/16 v29, 0xd

    aget-wide v30, v4, v29

    xor-long v25, v25, v30

    const/16 v30, 0x12

    aget-wide v31, v4, v30

    xor-long v25, v25, v31

    const/16 v31, 0x17

    aget-wide v32, v4, v31

    move/from16 v34, v2

    xor-long v2, v25, v32

    const/16 v25, 0x4

    aget-wide v32, v4, v25

    const/16 v26, 0x9

    aget-wide v35, v4, v26

    xor-long v32, v32, v35

    const/16 v35, 0xe

    aget-wide v36, v4, v35

    xor-long v32, v32, v36

    const/16 v36, 0x13

    aget-wide v37, v4, v36

    xor-long v32, v32, v37

    aget-wide v37, v4, v34

    move/from16 v39, v7

    move/from16 v40, v8

    xor-long v7, v32, v37

    invoke-static {v11, v12, v13}, Lorg/spongycastle/crypto/digests/KeccakDigest;->g(IJ)J

    move-result-wide v32

    xor-long v32, v32, v7

    aget-wide v37, v4, v27

    xor-long v37, v37, v32

    aput-wide v37, v4, v27

    aget-wide v37, v4, v39

    xor-long v37, v37, v32

    aput-wide v37, v4, v39

    aget-wide v37, v4, v40

    xor-long v37, v37, v32

    aput-wide v37, v4, v40

    aget-wide v37, v4, v9

    xor-long v37, v37, v32

    aput-wide v37, v4, v9

    aget-wide v37, v4, v10

    xor-long v32, v37, v32

    aput-wide v32, v4, v10

    invoke-static {v11, v0, v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->g(IJ)J

    move-result-wide v32

    xor-long v32, v32, v5

    aget-wide v37, v4, v11

    xor-long v37, v37, v32

    aput-wide v37, v4, v11

    aget-wide v37, v4, v14

    xor-long v37, v37, v32

    aput-wide v37, v4, v14

    aget-wide v37, v4, v15

    xor-long v37, v37, v32

    aput-wide v37, v4, v15

    aget-wide v37, v4, v16

    xor-long v37, v37, v32

    aput-wide v37, v4, v16

    aget-wide v37, v4, v17

    xor-long v32, v37, v32

    aput-wide v32, v4, v17

    invoke-static {v11, v2, v3}, Lorg/spongycastle/crypto/digests/KeccakDigest;->g(IJ)J

    move-result-wide v32

    xor-long v12, v32, v12

    aget-wide v32, v4, v18

    xor-long v32, v32, v12

    aput-wide v32, v4, v18

    aget-wide v32, v4, v21

    xor-long v32, v32, v12

    aput-wide v32, v4, v21

    aget-wide v32, v4, v22

    xor-long v32, v32, v12

    aput-wide v32, v4, v22

    aget-wide v32, v4, v23

    xor-long v32, v32, v12

    aput-wide v32, v4, v23

    aget-wide v32, v4, v24

    xor-long v12, v32, v12

    aput-wide v12, v4, v24

    invoke-static {v11, v7, v8}, Lorg/spongycastle/crypto/digests/KeccakDigest;->g(IJ)J

    move-result-wide v7

    xor-long/2addr v0, v7

    aget-wide v7, v4, v19

    xor-long/2addr v7, v0

    aput-wide v7, v4, v19

    aget-wide v7, v4, v20

    xor-long/2addr v7, v0

    aput-wide v7, v4, v20

    aget-wide v7, v4, v29

    xor-long/2addr v7, v0

    aput-wide v7, v4, v29

    aget-wide v7, v4, v30

    xor-long/2addr v7, v0

    aput-wide v7, v4, v30

    aget-wide v7, v4, v31

    xor-long/2addr v0, v7

    aput-wide v0, v4, v31

    invoke-static {v11, v5, v6}, Lorg/spongycastle/crypto/digests/KeccakDigest;->g(IJ)J

    move-result-wide v0

    xor-long/2addr v0, v2

    aget-wide v2, v4, v25

    xor-long/2addr v2, v0

    aput-wide v2, v4, v25

    aget-wide v2, v4, v26

    xor-long/2addr v2, v0

    aput-wide v2, v4, v26

    aget-wide v2, v4, v35

    xor-long/2addr v2, v0

    aput-wide v2, v4, v35

    aget-wide v2, v4, v36

    xor-long/2addr v2, v0

    aput-wide v2, v4, v36

    aget-wide v2, v4, v34

    xor-long/2addr v0, v2

    aput-wide v0, v4, v34

    move v0, v11

    :goto_1
    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    aget-wide v1, v4, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/KeccakDigest;->h:[I

    aget v3, v3, v0

    invoke-static {v3, v1, v2}, Lorg/spongycastle/crypto/digests/KeccakDigest;->g(IJ)J

    move-result-wide v1

    aput-wide v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    aget-wide v2, v4, v11

    aget-wide v5, v4, v14

    aput-wide v5, v4, v11

    aget-wide v5, v4, v26

    aput-wide v5, v4, v14

    aget-wide v5, v4, v24

    aput-wide v5, v4, v26

    aget-wide v5, v4, v35

    aput-wide v5, v4, v24

    aget-wide v5, v4, v10

    aput-wide v5, v4, v35

    aget-wide v5, v4, v18

    aput-wide v5, v4, v10

    aget-wide v5, v4, v22

    aput-wide v5, v4, v18

    aget-wide v5, v4, v29

    aput-wide v5, v4, v22

    aget-wide v5, v4, v36

    aput-wide v5, v4, v29

    aget-wide v5, v4, v31

    aput-wide v5, v4, v36

    aget-wide v5, v4, v9

    aput-wide v5, v4, v31

    aget-wide v5, v4, v25

    aput-wide v5, v4, v9

    aget-wide v5, v4, v34

    aput-wide v5, v4, v25

    aget-wide v5, v4, v17

    aput-wide v5, v4, v34

    aget-wide v5, v4, v20

    aput-wide v5, v4, v17

    aget-wide v5, v4, v16

    aput-wide v5, v4, v20

    aget-wide v5, v4, v39

    aput-wide v5, v4, v16

    aget-wide v5, v4, v19

    aput-wide v5, v4, v39

    aget-wide v5, v4, v30

    aput-wide v5, v4, v19

    aget-wide v5, v4, v23

    aput-wide v5, v4, v30

    aget-wide v5, v4, v15

    aput-wide v5, v4, v23

    aget-wide v5, v4, v21

    aput-wide v5, v4, v15

    aget-wide v5, v4, v40

    aput-wide v5, v4, v21

    aput-wide v2, v4, v40

    move/from16 v0, v27

    :goto_2
    if-ge v0, v1, :cond_1

    aget-wide v2, v4, v0

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    not-long v8, v6

    add-int/lit8 v10, v0, 0x2

    aget-wide v11, v4, v10

    and-long/2addr v8, v11

    xor-long/2addr v8, v2

    not-long v13, v11

    add-int/lit8 v15, v0, 0x3

    move-wide/from16 v17, v2

    aget-wide v1, v4, v15

    and-long/2addr v13, v1

    xor-long/2addr v13, v6

    move-object/from16 v19, v4

    not-long v3, v1

    add-int/lit8 v20, v0, 0x4

    move/from16 v21, v0

    move-wide/from16 v22, v1

    aget-wide v0, v19, v20

    and-long v2, v3, v0

    xor-long/2addr v2, v11

    not-long v11, v0

    and-long v11, v11, v17

    xor-long v11, v22, v11

    move-wide/from16 v22, v0

    move-wide/from16 v0, v17

    not-long v0, v0

    and-long/2addr v0, v6

    xor-long v0, v22, v0

    aput-wide v8, v19, v21

    aput-wide v13, v19, v5

    aput-wide v2, v19, v10

    aput-wide v11, v19, v15

    aput-wide v0, v19, v20

    add-int/lit8 v0, v21, 0x5

    move-object/from16 v4, v19

    const/16 v1, 0x19

    goto :goto_2

    :cond_1
    move-object/from16 v19, v4

    aget-wide v0, v19, v27

    sget-object v2, Lorg/spongycastle/crypto/digests/KeccakDigest;->g:[J

    aget-wide v2, v2, v28

    xor-long/2addr v0, v2

    aput-wide v0, v19, v27

    add-int/lit8 v1, v28, 0x1

    move/from16 v0, v27

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public final f(I)V
    .locals 6

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x120

    if-eq p1, v0, :cond_1

    const/16 v0, 0x180

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "bitLength must be one of 128, 224, 256, 288, 384, or 512."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    shl-int/lit8 p1, p1, 0x1

    const/16 v0, 0x640

    rsub-int p1, p1, 0x640

    if-lez p1, :cond_4

    if-ge p1, v0, :cond_4

    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_4

    iput p1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->c:I

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->a:[J

    array-length v4, v3

    if-ge v2, v4, :cond_2

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_2
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->b:[B

    array-length v4, v3

    if-ge v2, v4, :cond_3

    aput-byte v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iput v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    iput-boolean v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->f:Z

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->e:I

    return-void

    :cond_4
    const-string p0, "invalid rate value"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keccak-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDigestSize()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->e:I

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public final h(J[B)V
    .locals 13

    iget-boolean v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->f:Z

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->b:[B

    if-nez v0, :cond_3

    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    shr-int/lit8 v2, v0, 0x3

    aget-byte v3, v1, v2

    and-int/lit8 v4, v0, 0x7

    const-wide/16 v5, 0x1

    shl-long v7, v5, v4

    long-to-int v4, v7

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    iget v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->c:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v1, v4}, Lorg/spongycastle/crypto/digests/KeccakDigest;->c([BI)V

    iput v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    move v7, v4

    :goto_0
    iget-object v8, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->a:[J

    if-ge v4, v3, :cond_1

    aget-wide v9, v8, v4

    invoke-static {v1, v7}, Lorg/spongycastle/util/Pack;->f([BI)J

    move-result-wide v11

    xor-long/2addr v9, v11

    aput-wide v9, v8, v4

    add-int/lit8 v7, v7, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    shl-long v9, v5, v0

    sub-long/2addr v9, v5

    aget-wide v4, v8, v3

    invoke-static {v1, v7}, Lorg/spongycastle/util/Pack;->f([BI)J

    move-result-wide v6

    and-long/2addr v6, v9

    xor-long/2addr v4, v6

    aput-wide v4, v8, v3

    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->c:I

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x6

    aget-wide v3, v8, v0

    const-wide/high16 v5, -0x8000000000000000L

    xor-long/2addr v3, v5

    aput-wide v3, v8, v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->e()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->d()V

    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->c:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    iput-boolean v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->f:Z

    :cond_3
    const-wide/16 v2, 0x8

    rem-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    :goto_1
    cmp-long v0, v6, p1

    if-gez v0, :cond_5

    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->e()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->d()V

    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->c:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    :cond_4
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    int-to-long v4, v0

    sub-long v8, p1, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    iget v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->c:I

    iget v5, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x8

    div-long v8, v6, v2

    long-to-int v5, v8

    div-int/lit8 v8, v0, 0x8

    move-object/from16 v9, p3

    invoke-static {v1, v4, v9, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    sub-int/2addr v4, v0

    iput v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->d:I

    int-to-long v4, v0

    add-long/2addr v6, v4

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    const-string p0, "outputLength not a multiple of 8"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
