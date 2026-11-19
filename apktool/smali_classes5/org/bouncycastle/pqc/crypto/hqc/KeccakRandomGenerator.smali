.class Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
.super Ljava/lang/Object;


# static fields
.field private static KeccakRoundConstants:[J


# instance fields
.field protected bitsInQueue:I

.field protected dataQueue:[B

.field protected fixedOutputLength:I

.field protected rate:I

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->KeccakRoundConstants:[J

    return-void

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.32E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    const/16 v0, 0x120

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1a

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->dataQueue:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->init(I)V

    return-void
.end method

.method private init(I)V
    .locals 1

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

    rsub-int p1, p1, 0x640

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->initSponge(I)V

    return-void
.end method

.method private initSponge(I)V
    .locals 4

    if-lez p1, :cond_0

    const/16 v0, 0x640

    if-ge p1, v0, :cond_0

    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->dataQueue:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->bitsInQueue:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->fixedOutputLength:I

    return-void

    :cond_0
    const-string p0, "invalid rate value"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method private keccakIncAbsorb([BI)V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    shr-int/lit8 v1, v1, 0x3

    move/from16 v3, p2

    const/4 v4, 0x0

    :goto_0
    int-to-long v5, v3

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v8, 0x19

    aget-wide v9, v7, v8

    add-long/2addr v9, v5

    int-to-long v11, v1

    cmp-long v7, v9, v11

    const-wide/16 v13, 0x8

    move/from16 p2, v8

    if-ltz v7, :cond_1

    const/4 v3, 0x0

    const-wide/16 v15, 0x7

    :goto_1
    int-to-long v8, v3

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v17, v7, p2

    sub-long v19, v11, v17

    cmp-long v10, v8, v19

    if-gez v10, :cond_0

    move/from16 v19, v3

    add-long v2, v17, v8

    long-to-int v2, v2

    shr-int/lit8 v2, v2, 0x3

    aget-wide v17, v7, v2

    add-int v3, v19, v4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v20

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v22, v3, p2

    add-long v22, v22, v8

    and-long v8, v22, v15

    mul-long/2addr v8, v13

    long-to-int v3, v8

    shl-long v8, v20, v3

    xor-long v8, v17, v8

    aput-wide v8, v7, v2

    add-int/lit8 v3, v19, 0x1

    goto :goto_1

    :cond_0
    sub-long v2, v11, v17

    sub-long/2addr v5, v2

    long-to-int v3, v5

    int-to-long v4, v4

    sub-long v11, v11, v17

    add-long/2addr v11, v4

    long-to-int v4, v11

    const-wide/16 v5, 0x0

    aput-wide v5, v7, p2

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakPermutation([J)V

    goto :goto_0

    :cond_1
    const-wide/16 v15, 0x7

    const/4 v2, 0x0

    :goto_2
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    if-ge v2, v3, :cond_2

    aget-wide v7, v1, p2

    int-to-long v9, v2

    add-long/2addr v7, v9

    long-to-int v7, v7

    shr-int/lit8 v7, v7, 0x3

    aget-wide v11, v1, v7

    add-int v8, v2, v4

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v17

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v19, v8, p2

    add-long v19, v19, v9

    and-long v8, v19, v15

    mul-long/2addr v8, v13

    long-to-int v8, v8

    shl-long v8, v17, v8

    xor-long/2addr v8, v11

    aput-wide v8, v1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    aget-wide v2, v1, p2

    add-long/2addr v2, v5

    aput-wide v2, v1, p2

    return-void
.end method

.method private keccakIncFinalize(I)V
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v2, 0x19

    aget-wide v3, v1, v2

    long-to-int v3, v3

    shr-int/lit8 v3, v3, 0x3

    aget-wide v4, v1, v3

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v6

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v8, p1, v2

    const-wide/16 v10, 0x7

    and-long/2addr v8, v10

    const-wide/16 v10, 0x8

    mul-long/2addr v8, v10

    long-to-int v8, v8

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v1, v0, 0x3

    aget-wide v3, p1, v1

    const/16 v5, 0x80

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v5

    and-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x8

    shl-long/2addr v5, v0

    xor-long/2addr v3, v5

    aput-wide v3, p1, v1

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const-wide/16 v0, 0x0

    aput-wide v0, p0, v2

    return-void
.end method

.method private keccakIncSqueeze([BI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    const/4 v3, 0x3

    shr-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x19

    if-ge v5, v1, :cond_0

    int-to-long v7, v5

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v10, v9, v6

    cmp-long v12, v7, v10

    if-gez v12, :cond_0

    int-to-long v12, v2

    sub-long v14, v12, v10

    add-long/2addr v14, v7

    shr-long/2addr v14, v3

    long-to-int v6, v14

    aget-wide v14, v9, v6

    sub-long/2addr v12, v10

    add-long/2addr v12, v7

    const-wide/16 v6, 0x7

    and-long/2addr v6, v12

    const-wide/16 v8, 0x8

    mul-long/2addr v6, v8

    long-to-int v6, v6

    shr-long v6, v14, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v5

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v7, v3, v6

    int-to-long v9, v5

    sub-long/2addr v7, v9

    aput-wide v7, v3, v6

    :goto_1
    if-lez v1, :cond_2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakPermutation([J)V

    move v3, v4

    :goto_2
    if-ge v3, v1, :cond_1

    if-ge v3, v2, :cond_1

    add-int v7, v5, v3

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    shr-int/lit8 v9, v3, 0x3

    aget-wide v8, v8, v9

    and-int/lit8 v10, v3, 0x7

    mul-int/lit8 v10, v10, 0x8

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v5, v3

    sub-int/2addr v1, v3

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    sub-int v3, v2, v3

    int-to-long v8, v3

    aput-wide v8, v7, v6

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static keccakPermutation([J)V
    .locals 97

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/4 v6, 0x2

    aget-wide v7, p0, v6

    const/4 v9, 0x3

    aget-wide v10, p0, v9

    const/4 v12, 0x4

    aget-wide v13, p0, v12

    const/4 v15, 0x5

    aget-wide v16, p0, v15

    const/16 v18, 0x6

    aget-wide v19, p0, v18

    const/16 v21, 0x7

    aget-wide v22, p0, v21

    const/16 v24, 0x8

    aget-wide v25, p0, v24

    const/16 v27, 0x9

    aget-wide v28, p0, v27

    const/16 v30, 0xa

    aget-wide v31, p0, v30

    const/16 v33, 0xb

    aget-wide v34, p0, v33

    const/16 v36, 0xc

    aget-wide v37, p0, v36

    const/16 v39, 0xd

    aget-wide v40, p0, v39

    const/16 v42, 0xe

    aget-wide v43, p0, v42

    const/16 v45, 0xf

    aget-wide v46, p0, v45

    const/16 v48, 0x10

    aget-wide v49, p0, v48

    const/16 v51, 0x11

    aget-wide v52, p0, v51

    const/16 v54, 0x12

    aget-wide v55, p0, v54

    const/16 v57, 0x13

    aget-wide v58, p0, v57

    const/16 v60, 0x14

    aget-wide v61, p0, v60

    const/16 v63, 0x15

    aget-wide v64, p0, v63

    const/16 v66, 0x16

    aget-wide v67, p0, v66

    const/16 v69, 0x17

    aget-wide v70, p0, v69

    move/from16 v72, v0

    const/16 v0, 0x18

    aget-wide v73, p0, v0

    move/from16 v75, v3

    move/from16 v3, v72

    :goto_0
    if-ge v3, v0, :cond_0

    xor-long v76, v1, v16

    xor-long v76, v76, v31

    xor-long v76, v76, v46

    xor-long v76, v76, v61

    xor-long v78, v4, v19

    xor-long v78, v78, v34

    xor-long v78, v78, v49

    xor-long v78, v78, v64

    xor-long v80, v7, v22

    xor-long v80, v80, v37

    xor-long v80, v80, v52

    xor-long v80, v80, v67

    xor-long v82, v10, v25

    xor-long v82, v82, v40

    xor-long v82, v82, v55

    xor-long v82, v82, v70

    xor-long v84, v13, v28

    xor-long v84, v84, v43

    xor-long v84, v84, v58

    xor-long v84, v84, v73

    shl-long v86, v78, v75

    const/16 v88, -0x1

    ushr-long v89, v78, v88

    or-long v86, v86, v89

    xor-long v86, v86, v84

    shl-long v89, v80, v75

    ushr-long v91, v80, v88

    or-long v89, v89, v91

    xor-long v89, v89, v76

    shl-long v91, v82, v75

    ushr-long v93, v82, v88

    or-long v91, v91, v93

    xor-long v78, v91, v78

    shl-long v91, v84, v75

    ushr-long v84, v84, v88

    or-long v84, v91, v84

    xor-long v80, v84, v80

    shl-long v84, v76, v75

    ushr-long v76, v76, v88

    or-long v76, v84, v76

    xor-long v76, v76, v82

    xor-long v1, v1, v86

    xor-long v16, v16, v86

    xor-long v31, v31, v86

    xor-long v46, v46, v86

    xor-long v61, v61, v86

    xor-long v4, v4, v89

    xor-long v19, v19, v89

    xor-long v34, v34, v89

    xor-long v49, v49, v89

    xor-long v64, v64, v89

    xor-long v7, v7, v78

    xor-long v22, v22, v78

    xor-long v37, v37, v78

    xor-long v52, v52, v78

    xor-long v67, v67, v78

    xor-long v10, v10, v80

    xor-long v25, v25, v80

    xor-long v40, v40, v80

    xor-long v55, v55, v80

    xor-long v70, v70, v80

    xor-long v13, v13, v76

    xor-long v28, v28, v76

    xor-long v43, v43, v76

    xor-long v58, v58, v76

    xor-long v73, v73, v76

    shl-long v76, v4, v75

    const/16 v78, 0x3f

    ushr-long v4, v4, v78

    or-long v4, v76, v4

    const/16 v76, 0x2c

    shl-long v77, v19, v76

    ushr-long v19, v19, v60

    move/from16 v79, v6

    move-wide/from16 v80, v7

    or-long v6, v77, v19

    shl-long v19, v28, v60

    ushr-long v28, v28, v76

    move/from16 v76, v9

    move-wide/from16 v77, v10

    or-long v9, v19, v28

    const/16 v8, 0x3d

    shl-long v19, v67, v8

    ushr-long v28, v67, v76

    move/from16 v82, v12

    move-wide/from16 v67, v13

    or-long v12, v19, v28

    const/16 v11, 0x27

    shl-long v19, v43, v11

    const/16 v14, 0x19

    ushr-long v28, v43, v14

    move/from16 v43, v14

    move/from16 v83, v15

    or-long v14, v19, v28

    shl-long v19, v61, v54

    const/16 v28, 0x2e

    ushr-long v28, v61, v28

    move-wide/from16 v61, v12

    move v13, v11

    or-long v11, v19, v28

    const/16 v19, 0x3e

    shl-long v28, v80, v19

    ushr-long v80, v80, v79

    move-wide/from16 v84, v14

    move v15, v13

    or-long v13, v28, v80

    const/16 v20, 0x2b

    shl-long v28, v37, v20

    ushr-long v37, v37, v63

    move-wide/from16 v80, v9

    move v10, v8

    or-long v8, v28, v37

    shl-long v28, v40, v43

    ushr-long v37, v40, v15

    move-wide/from16 v40, v11

    move v12, v10

    or-long v10, v28, v37

    shl-long v28, v58, v24

    const/16 v15, 0x38

    ushr-long v37, v58, v15

    move-wide/from16 v43, v13

    move v14, v12

    or-long v12, v28, v37

    shl-long v28, v70, v15

    ushr-long v37, v70, v24

    move/from16 v58, v14

    or-long v14, v28, v37

    const/16 v28, 0x29

    shl-long v28, v46, v28

    ushr-long v37, v46, v69

    move/from16 v86, v0

    move-wide/from16 v87, v1

    or-long v0, v28, v37

    const/16 v2, 0x1b

    shl-long v28, v67, v2

    const/16 v2, 0x25

    ushr-long v37, v67, v2

    move/from16 v89, v3

    or-long v2, v28, v37

    shl-long v28, v73, v42

    const/16 v37, 0x32

    ushr-long v37, v73, v37

    move-wide/from16 v46, v0

    or-long v0, v28, v37

    shl-long v28, v64, v79

    ushr-long v37, v64, v19

    move-wide/from16 v64, v2

    or-long v2, v28, v37

    const/16 v19, 0x37

    shl-long v28, v25, v19

    ushr-long v25, v25, v27

    move-wide/from16 v37, v2

    or-long v2, v28, v25

    const/16 v19, 0x2d

    shl-long v25, v49, v19

    ushr-long v28, v49, v57

    move-wide/from16 v49, v2

    or-long v2, v25, v28

    const/16 v19, 0x24

    shl-long v25, v16, v19

    const/16 v28, 0x1c

    ushr-long v16, v16, v28

    move-wide/from16 v67, v14

    or-long v14, v25, v16

    shl-long v16, v77, v28

    ushr-long v25, v77, v19

    move-wide/from16 v28, v14

    or-long v14, v16, v25

    shl-long v16, v55, v63

    ushr-long v19, v55, v20

    move-wide/from16 v25, v4

    or-long v4, v16, v19

    shl-long v16, v52, v45

    const/16 v19, 0x31

    ushr-long v19, v52, v19

    move-wide/from16 v52, v12

    or-long v12, v16, v19

    shl-long v16, v34, v30

    const/16 v19, 0x36

    ushr-long v19, v34, v19

    move-wide/from16 v34, v12

    or-long v12, v16, v19

    shl-long v16, v22, v18

    const/16 v19, 0x3a

    ushr-long v19, v22, v19

    move-wide/from16 v22, v12

    or-long v12, v16, v19

    shl-long v16, v31, v76

    ushr-long v19, v31, v58

    move-wide/from16 v31, v10

    or-long v10, v16, v19

    move-wide/from16 v16, v12

    not-long v12, v6

    and-long/2addr v12, v8

    xor-long v12, v87, v12

    move-wide/from16 v19, v6

    not-long v6, v8

    and-long/2addr v6, v4

    xor-long v6, v19, v6

    move-wide/from16 v55, v6

    not-long v6, v4

    and-long/2addr v6, v0

    xor-long v7, v8, v6

    move-wide/from16 v58, v4

    not-long v4, v0

    and-long v4, v4, v87

    xor-long v4, v58, v4

    move-wide/from16 v58, v0

    move-wide/from16 v0, v87

    not-long v0, v0

    and-long v0, v0, v19

    xor-long v0, v58, v0

    move-wide/from16 v19, v0

    move-wide/from16 v58, v4

    move-wide/from16 v0, v80

    not-long v4, v0

    and-long/2addr v4, v10

    xor-long/2addr v4, v14

    not-long v0, v10

    and-long/2addr v0, v2

    xor-long v0, v80, v0

    move-wide/from16 v70, v0

    not-long v0, v2

    and-long v0, v0, v61

    xor-long/2addr v0, v10

    move-wide/from16 v9, v61

    move-wide/from16 v61, v0

    not-long v0, v9

    and-long/2addr v0, v14

    xor-long/2addr v0, v2

    not-long v2, v14

    and-long v2, v2, v80

    xor-long/2addr v2, v9

    move-wide/from16 v9, v16

    not-long v14, v9

    and-long v14, v14, v31

    xor-long v14, v25, v14

    move-wide/from16 v16, v0

    move-wide/from16 v0, v31

    move-wide/from16 v31, v2

    not-long v2, v0

    and-long v2, v2, v52

    xor-long/2addr v2, v9

    move-wide/from16 v73, v0

    move-wide/from16 v0, v52

    move-wide/from16 v52, v2

    not-long v2, v0

    and-long v2, v2, v40

    xor-long v2, v73, v2

    move-wide/from16 v73, v0

    move-wide/from16 v0, v40

    move-wide/from16 v40, v2

    not-long v2, v0

    and-long v2, v2, v25

    xor-long v2, v73, v2

    move-wide/from16 v73, v0

    move-wide/from16 v0, v25

    not-long v0, v0

    and-long/2addr v0, v9

    xor-long v0, v73, v0

    move-wide/from16 v25, v0

    move-wide/from16 v9, v28

    not-long v0, v9

    and-long v0, v0, v22

    xor-long v0, v64, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v22

    move-wide/from16 v22, v2

    not-long v2, v0

    and-long v2, v2, v34

    xor-long/2addr v2, v9

    move-wide/from16 v73, v0

    move-wide/from16 v0, v34

    move-wide/from16 v34, v2

    not-long v2, v0

    and-long v2, v2, v67

    xor-long v2, v73, v2

    move-wide/from16 v73, v0

    move-wide/from16 v0, v67

    move-wide/from16 v67, v2

    not-long v2, v0

    and-long v2, v2, v64

    xor-long v2, v73, v2

    move-wide/from16 v73, v0

    move-wide/from16 v0, v64

    not-long v0, v0

    and-long/2addr v0, v9

    xor-long v0, v73, v0

    move-wide/from16 v9, v49

    move-wide/from16 v49, v0

    not-long v0, v9

    and-long v0, v0, v84

    xor-long v0, v43, v0

    move-wide/from16 v64, v0

    move-wide/from16 v73, v2

    move-wide/from16 v0, v84

    not-long v2, v0

    and-long v2, v2, v46

    xor-long/2addr v2, v9

    move-wide/from16 v0, v46

    move-wide/from16 v46, v2

    not-long v2, v0

    and-long v2, v2, v37

    xor-long v2, v84, v2

    move-wide/from16 v77, v0

    move-wide/from16 v0, v37

    move-wide/from16 v37, v2

    not-long v2, v0

    and-long v2, v2, v43

    xor-long v2, v77, v2

    move-wide/from16 v77, v0

    move-wide/from16 v0, v43

    not-long v0, v0

    and-long/2addr v0, v9

    xor-long v0, v77, v0

    sget-object v6, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->KeccakRoundConstants:[J

    aget-wide v9, v6, v89

    xor-long/2addr v9, v12

    add-int/lit8 v6, v89, 0x1

    move-wide/from16 v43, v25

    move/from16 v12, v82

    move-wide/from16 v25, v16

    move-wide/from16 v16, v4

    move-wide/from16 v4, v55

    move-wide/from16 v55, v73

    move-wide/from16 v73, v0

    move/from16 v0, v86

    move-wide/from16 v95, v2

    move v3, v6

    move-wide v1, v9

    move-wide/from16 v10, v58

    move/from16 v9, v76

    move/from16 v6, v79

    move-wide/from16 v58, v49

    move-wide/from16 v49, v34

    move-wide/from16 v34, v52

    move-wide/from16 v52, v67

    move-wide/from16 v67, v37

    move-wide/from16 v37, v40

    move-wide/from16 v40, v22

    move-wide/from16 v22, v61

    move-wide/from16 v61, v64

    move-wide/from16 v64, v46

    move-wide/from16 v46, v28

    move-wide/from16 v28, v31

    move-wide/from16 v31, v14

    move-wide/from16 v13, v19

    move-wide/from16 v19, v70

    move/from16 v15, v83

    move-wide/from16 v70, v95

    goto/16 :goto_0

    :cond_0
    move/from16 v86, v0

    move/from16 v79, v6

    move/from16 v76, v9

    move/from16 v82, v12

    move/from16 v83, v15

    aput-wide v1, p0, v72

    aput-wide v4, p0, v75

    aput-wide v7, p0, v79

    aput-wide v10, p0, v76

    aput-wide v13, p0, v82

    aput-wide v16, p0, v83

    aput-wide v19, p0, v18

    aput-wide v22, p0, v21

    aput-wide v25, p0, v24

    aput-wide v28, p0, v27

    aput-wide v31, p0, v30

    aput-wide v34, p0, v33

    aput-wide v37, p0, v36

    aput-wide v40, p0, v39

    aput-wide v43, p0, v42

    aput-wide v46, p0, v45

    aput-wide v49, p0, v48

    aput-wide v52, p0, v51

    aput-wide v55, p0, v54

    aput-wide v58, p0, v57

    aput-wide v61, p0, v60

    aput-wide v64, p0, v63

    aput-wide v67, p0, v66

    aput-wide v70, p0, v69

    aput-wide v73, p0, v86

    return-void
.end method

.method private static toUnsignedLong(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public SHAKE256_512_ds([B[BI[B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    array-length p2, p4

    invoke-direct {p0, p4, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    const/16 p2, 0x1f

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncFinalize(I)V

    const/16 p2, 0x40

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    return-void
.end method

.method public expandSeed([BI)V
    .locals 3

    and-int/lit8 v0, p2, 0x7

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    new-array v2, v1, [B

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    const/4 p0, 0x0

    invoke-static {v2, p0, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public randomGeneratorInit([B[BII)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    invoke-direct {p0, p2, p4}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    const/16 p1, 0x1f

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncFinalize(I)V

    return-void
.end method

.method public seedExpanderInit([BI)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    const/16 p1, 0x1f

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncFinalize(I)V

    return-void
.end method

.method public squeeze([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    return-void
.end method
