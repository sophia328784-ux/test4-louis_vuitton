.class Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
.super Ljava/lang/Object;


# instance fields
.field A:[J

.field private RC:[J

.field dbuf:[B

.field dptr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->RC:[J

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dbuf:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    return-void

    nop

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


# virtual methods
.method public i_shake256_flip()V
    .locals 7

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    long-to-int v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    shr-int/lit8 v2, v0, 0x3

    aget-wide v3, v1, v2

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x3

    const-wide/16 v5, 0x1f

    shl-long/2addr v5, v0

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    const/16 v0, 0x10

    aget-wide v2, v1, v0

    const-wide/high16 v4, -0x8000000000000000L

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    const-wide/16 v0, 0x88

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    return-void
.end method

.method public inner_shake256_extract([BII)V
    .locals 6

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    long-to-int v0, v0

    :cond_0
    if-lez p3, :cond_3

    const/16 v1, 0x88

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->process_block([J)V

    const/4 v0, 0x0

    :cond_1
    rsub-int v1, v0, 0x88

    if-le v1, p3, :cond_2

    move v1, p3

    :cond_2
    sub-int/2addr p3, v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    shr-int/lit8 v4, v0, 0x3

    aget-wide v3, v3, v4

    and-int/lit8 v5, v0, 0x7

    shl-int/lit8 v5, v5, 0x3

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    move v1, v2

    goto :goto_0

    :cond_3
    int-to-long p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    return-void
.end method

.method public inner_shake256_init()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aput-wide v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public inner_shake256_inject([BII)V
    .locals 22

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    move-wide v3, v1

    move/from16 v1, p2

    move/from16 v2, p3

    :cond_0
    :goto_0
    if-lez v2, :cond_3

    const-wide/16 v5, 0x88

    sub-long v7, v5, v3

    int-to-long v9, v2

    cmp-long v2, v7, v9

    if-lez v2, :cond_1

    move-wide v7, v9

    :cond_1
    const-wide/16 v13, 0x0

    :goto_1
    cmp-long v2, v13, v7

    if-gez v2, :cond_2

    add-long v15, v13, v3

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    const/16 v17, 0x3

    move-wide/from16 p2, v5

    shr-long v5, v15, v17

    long-to-int v5, v5

    aget-wide v18, v2, v5

    long-to-int v6, v13

    add-int/2addr v6, v1

    aget-byte v6, p1, v6

    int-to-long v11, v6

    const-wide/16 v20, 0xff

    and-long v11, v11, v20

    const-wide/16 v20, 0x7

    and-long v15, v15, v20

    move/from16 v20, v5

    shl-long v5, v15, v17

    long-to-int v5, v5

    shl-long v5, v11, v5

    xor-long v5, v18, v5

    aput-wide v5, v2, v20

    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    move-wide/from16 v5, p2

    goto :goto_1

    :cond_2
    move-wide/from16 p2, v5

    add-long/2addr v3, v7

    int-to-long v1, v1

    add-long/2addr v1, v7

    long-to-int v1, v1

    sub-long/2addr v9, v7

    long-to-int v2, v9

    cmp-long v5, v3, p2

    if-nez v5, :cond_0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->process_block([J)V

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_3
    iput-wide v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    return-void
.end method

.method public process_block([J)V
    .locals 112

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    not-long v1, v1

    aput-wide v1, p1, v0

    const/4 v1, 0x2

    aget-wide v2, p1, v1

    not-long v2, v2

    aput-wide v2, p1, v1

    const/16 v2, 0x8

    aget-wide v3, p1, v2

    not-long v3, v3

    aput-wide v3, p1, v2

    const/16 v3, 0xc

    aget-wide v4, p1, v3

    not-long v4, v4

    aput-wide v4, p1, v3

    const/16 v4, 0x11

    aget-wide v5, p1, v4

    not-long v5, v5

    aput-wide v5, p1, v4

    const/16 v5, 0x14

    aget-wide v6, p1, v5

    not-long v6, v6

    aput-wide v6, p1, v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/16 v8, 0x18

    if-ge v7, v8, :cond_0

    aget-wide v9, p1, v0

    const/4 v11, 0x6

    aget-wide v12, p1, v11

    xor-long v14, v9, v12

    const/16 v16, 0xb

    aget-wide v17, p1, v16

    const/16 v19, 0x10

    aget-wide v20, p1, v19

    xor-long v22, v17, v20

    const/16 v24, 0x15

    aget-wide v25, p1, v24

    xor-long v22, v25, v22

    xor-long v14, v14, v22

    shl-long v22, v14, v0

    const/16 v27, 0x3f

    ushr-long v14, v14, v27

    or-long v14, v22, v14

    const/16 v22, 0x4

    aget-wide v28, p1, v22

    const/16 v23, 0x9

    aget-wide v30, p1, v23

    xor-long v32, v28, v30

    const/16 v34, 0xe

    aget-wide v35, p1, v34

    const/16 v37, 0x13

    aget-wide v38, p1, v37

    xor-long v40, v35, v38

    aget-wide v42, p1, v8

    xor-long v14, v14, v42

    xor-long v32, v32, v40

    xor-long v14, v14, v32

    aget-wide v32, p1, v1

    const/16 v40, 0x7

    aget-wide v44, p1, v40

    xor-long v46, v32, v44

    aget-wide v48, p1, v3

    aget-wide v50, p1, v4

    xor-long v52, v48, v50

    const/16 v41, 0x16

    aget-wide v54, p1, v41

    xor-long v52, v54, v52

    xor-long v46, v46, v52

    shl-long v52, v46, v0

    ushr-long v46, v46, v27

    or-long v46, v52, v46

    aget-wide v52, p1, v6

    const/16 v56, 0x5

    aget-wide v57, p1, v56

    xor-long v59, v52, v57

    const/16 v61, 0xa

    aget-wide v62, p1, v61

    const/16 v64, 0xf

    aget-wide v65, p1, v64

    xor-long v67, v62, v65

    aget-wide v69, p1, v5

    xor-long v46, v46, v69

    xor-long v59, v59, v67

    xor-long v46, v46, v59

    const/16 v59, 0x3

    aget-wide v67, p1, v59

    aget-wide v71, p1, v2

    xor-long v73, v67, v71

    const/16 v60, 0xd

    aget-wide v75, p1, v60

    const/16 v77, 0x12

    aget-wide v78, p1, v77

    xor-long v80, v75, v78

    const/16 v82, 0x17

    aget-wide v83, p1, v82

    xor-long v80, v83, v80

    xor-long v73, v73, v80

    shl-long v80, v73, v0

    ushr-long v73, v73, v27

    or-long v73, v80, v73

    xor-long v80, v9, v12

    xor-long v85, v17, v20

    xor-long v73, v73, v25

    xor-long v80, v80, v85

    xor-long v73, v73, v80

    xor-long v80, v28, v30

    xor-long v85, v35, v38

    xor-long v85, v42, v85

    xor-long v80, v80, v85

    shl-long v85, v80, v0

    ushr-long v80, v80, v27

    or-long v80, v85, v80

    xor-long v85, v32, v44

    xor-long v87, v48, v50

    xor-long v80, v80, v54

    xor-long v85, v85, v87

    xor-long v80, v80, v85

    xor-long v85, v52, v57

    xor-long v87, v62, v65

    xor-long v87, v69, v87

    xor-long v85, v85, v87

    shl-long v87, v85, v0

    ushr-long v85, v85, v27

    or-long v85, v87, v85

    xor-long v87, v67, v71

    xor-long v89, v75, v78

    xor-long v85, v85, v83

    xor-long v87, v87, v89

    xor-long v85, v85, v87

    xor-long v52, v52, v14

    aput-wide v52, p1, v6

    xor-long v57, v57, v14

    aput-wide v57, p1, v56

    xor-long v62, v62, v14

    aput-wide v62, p1, v61

    xor-long v65, v65, v14

    aput-wide v65, p1, v64

    xor-long v14, v69, v14

    aput-wide v14, p1, v5

    xor-long v9, v9, v46

    aput-wide v9, p1, v0

    xor-long v12, v12, v46

    aput-wide v12, p1, v11

    xor-long v17, v17, v46

    aput-wide v17, p1, v16

    xor-long v20, v20, v46

    aput-wide v20, p1, v19

    xor-long v25, v25, v46

    aput-wide v25, p1, v24

    xor-long v32, v32, v73

    aput-wide v32, p1, v1

    xor-long v44, v44, v73

    aput-wide v44, p1, v40

    xor-long v46, v48, v73

    aput-wide v46, p1, v3

    xor-long v48, v50, v73

    aput-wide v48, p1, v4

    xor-long v50, v54, v73

    aput-wide v50, p1, v41

    xor-long v54, v67, v80

    aput-wide v54, p1, v59

    xor-long v67, v71, v80

    aput-wide v67, p1, v2

    xor-long v69, v75, v80

    aput-wide v69, p1, v60

    xor-long v71, v78, v80

    aput-wide v71, p1, v77

    xor-long v73, v83, v80

    aput-wide v73, p1, v82

    xor-long v28, v28, v85

    aput-wide v28, p1, v22

    xor-long v30, v30, v85

    aput-wide v30, p1, v23

    xor-long v35, v35, v85

    aput-wide v35, p1, v34

    xor-long v38, v38, v85

    aput-wide v38, p1, v37

    xor-long v42, v42, v85

    aput-wide v42, p1, v8

    const/16 v75, 0x24

    shl-long v78, v57, v75

    const/16 v76, 0x1c

    ushr-long v57, v57, v76

    or-long v57, v78, v57

    aput-wide v57, p1, v56

    shl-long v78, v62, v59

    const/16 v80, 0x3d

    ushr-long v62, v62, v80

    or-long v62, v78, v62

    aput-wide v62, p1, v61

    const/16 v78, 0x29

    shl-long v83, v65, v78

    ushr-long v65, v65, v82

    or-long v65, v83, v65

    aput-wide v65, p1, v64

    shl-long v83, v14, v77

    const/16 v79, 0x2e

    ushr-long v14, v14, v79

    or-long v14, v83, v14

    aput-wide v14, p1, v5

    shl-long v83, v9, v0

    ushr-long v9, v9, v27

    or-long v9, v83, v9

    aput-wide v9, p1, v0

    const/16 v81, 0x2c

    shl-long v83, v12, v81

    ushr-long/2addr v12, v5

    or-long v12, v83, v12

    aput-wide v12, p1, v11

    shl-long v83, v17, v61

    const/16 v85, 0x36

    ushr-long v17, v17, v85

    or-long v17, v83, v17

    aput-wide v17, p1, v16

    const/16 v83, 0x2d

    shl-long v86, v20, v83

    ushr-long v20, v20, v37

    or-long v20, v86, v20

    aput-wide v20, p1, v19

    shl-long v86, v25, v1

    const/16 v84, 0x3e

    ushr-long v25, v25, v84

    or-long v25, v86, v25

    aput-wide v25, p1, v24

    shl-long v86, v32, v84

    ushr-long v32, v32, v1

    or-long v32, v86, v32

    aput-wide v32, p1, v1

    shl-long v86, v44, v11

    const/16 v88, 0x3a

    ushr-long v44, v44, v88

    or-long v44, v86, v44

    aput-wide v44, p1, v40

    const/16 v86, 0x2b

    shl-long v89, v46, v86

    ushr-long v46, v46, v24

    move/from16 v87, v0

    move/from16 v91, v1

    or-long v0, v89, v46

    aput-wide v0, p1, v3

    shl-long v46, v48, v64

    const/16 v89, 0x31

    ushr-long v48, v48, v89

    move/from16 v90, v2

    move/from16 v92, v3

    or-long v2, v46, v48

    aput-wide v2, p1, v4

    shl-long v46, v50, v80

    ushr-long v48, v50, v59

    move/from16 v50, v4

    move/from16 v51, v5

    or-long v4, v46, v48

    aput-wide v4, p1, v41

    shl-long v46, v54, v76

    ushr-long v48, v54, v75

    or-long v46, v46, v48

    aput-wide v46, p1, v59

    const/16 v48, 0x37

    shl-long v54, v67, v48

    ushr-long v67, v67, v23

    move/from16 v49, v6

    move/from16 v93, v7

    or-long v6, v54, v67

    aput-wide v6, p1, v90

    const/16 v54, 0x19

    shl-long v67, v69, v54

    const/16 v55, 0x27

    ushr-long v69, v69, v55

    or-long v67, v67, v69

    aput-wide v67, p1, v60

    shl-long v69, v71, v24

    ushr-long v71, v71, v86

    or-long v69, v69, v71

    aput-wide v69, p1, v77

    const/16 v71, 0x38

    shl-long v94, v73, v71

    ushr-long v72, v73, v90

    or-long v72, v94, v72

    aput-wide v72, p1, v82

    const/16 v74, 0x1b

    shl-long v94, v28, v74

    const/16 v96, 0x25

    ushr-long v28, v28, v96

    or-long v28, v94, v28

    aput-wide v28, p1, v22

    shl-long v94, v30, v51

    ushr-long v30, v30, v81

    or-long v30, v94, v30

    aput-wide v30, p1, v23

    shl-long v94, v35, v55

    ushr-long v35, v35, v54

    or-long v35, v94, v35

    aput-wide v35, p1, v34

    shl-long v94, v38, v90

    ushr-long v38, v38, v71

    move/from16 v97, v8

    move-wide/from16 v98, v9

    or-long v8, v94, v38

    aput-wide v8, p1, v37

    shl-long v38, v42, v34

    const/16 v10, 0x32

    ushr-long v42, v42, v10

    or-long v38, v38, v42

    aput-wide v38, p1, v97

    move v10, v11

    move-wide/from16 v42, v12

    not-long v11, v0

    or-long v94, v42, v0

    xor-long v94, v52, v94

    or-long v11, v11, v69

    xor-long v11, v42, v11

    and-long v100, v69, v38

    xor-long v0, v0, v100

    or-long v100, v38, v52

    xor-long v69, v69, v100

    and-long v42, v52, v42

    xor-long v38, v38, v42

    aput-wide v94, p1, v49

    aput-wide v11, p1, v10

    aput-wide v0, p1, v92

    aput-wide v69, p1, v77

    aput-wide v38, p1, v97

    move v13, v10

    move-wide/from16 v42, v11

    not-long v10, v4

    or-long v52, v30, v62

    xor-long v52, v46, v52

    and-long v100, v62, v20

    xor-long v100, v30, v100

    or-long v10, v20, v10

    xor-long v10, v62, v10

    or-long v62, v4, v46

    xor-long v20, v20, v62

    and-long v30, v46, v30

    xor-long v4, v4, v30

    aput-wide v52, p1, v59

    aput-wide v100, p1, v23

    aput-wide v10, p1, v61

    aput-wide v20, p1, v19

    aput-wide v4, p1, v41

    move v12, v13

    move-wide/from16 v30, v14

    not-long v13, v8

    or-long v46, v44, v67

    xor-long v46, v98, v46

    and-long v8, v67, v8

    xor-long v8, v44, v8

    and-long v62, v13, v30

    xor-long v62, v67, v62

    or-long v67, v30, v98

    xor-long v13, v13, v67

    and-long v44, v98, v44

    xor-long v30, v30, v44

    aput-wide v46, p1, v87

    aput-wide v8, p1, v40

    aput-wide v62, p1, v60

    aput-wide v13, p1, v37

    aput-wide v30, p1, v51

    move v15, v12

    move-wide/from16 v44, v13

    not-long v12, v2

    and-long v67, v57, v17

    xor-long v67, v28, v67

    or-long v2, v17, v2

    xor-long v2, v57, v2

    or-long v98, v12, v72

    xor-long v17, v17, v98

    and-long v98, v72, v28

    xor-long v12, v12, v98

    or-long v28, v28, v57

    xor-long v28, v72, v28

    aput-wide v67, p1, v22

    aput-wide v2, p1, v56

    aput-wide v17, p1, v16

    aput-wide v12, p1, v50

    aput-wide v28, p1, v82

    move-wide/from16 v57, v0

    not-long v0, v6

    and-long v72, v0, v35

    xor-long v72, v32, v72

    or-long v98, v35, v65

    xor-long v0, v0, v98

    and-long v98, v65, v25

    xor-long v35, v35, v98

    or-long v98, v25, v32

    xor-long v65, v65, v98

    and-long v6, v32, v6

    xor-long v6, v25, v6

    aput-wide v72, p1, v91

    aput-wide v0, p1, v90

    aput-wide v35, p1, v34

    aput-wide v65, p1, v64

    aput-wide v6, p1, v24

    move-object/from16 v14, p0

    move/from16 v25, v15

    iget-object v15, v14, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->RC:[J

    aget-wide v32, v15, v93

    xor-long v32, v94, v32

    aput-wide v32, p1, v49

    xor-long v94, v42, v100

    xor-long v98, v8, v2

    xor-long v98, v0, v98

    xor-long v94, v94, v98

    shl-long v98, v94, v87

    ushr-long v94, v94, v27

    or-long v94, v98, v94

    xor-long v98, v38, v4

    xor-long v102, v30, v28

    xor-long v94, v94, v6

    xor-long v98, v98, v102

    xor-long v94, v94, v98

    xor-long v98, v57, v10

    xor-long v102, v62, v17

    xor-long v102, v35, v102

    xor-long v98, v98, v102

    shl-long v102, v98, v87

    ushr-long v98, v98, v27

    or-long v98, v102, v98

    xor-long v102, v32, v52

    xor-long v104, v46, v67

    xor-long v98, v98, v72

    xor-long v102, v102, v104

    xor-long v98, v98, v102

    xor-long v102, v69, v20

    xor-long v104, v44, v12

    xor-long v104, v65, v104

    xor-long v102, v102, v104

    shl-long v104, v102, v87

    ushr-long v102, v102, v27

    or-long v102, v104, v102

    xor-long v104, v42, v100

    xor-long v106, v8, v2

    xor-long v102, v102, v0

    xor-long v104, v104, v106

    xor-long v102, v102, v104

    xor-long v104, v38, v4

    xor-long v106, v30, v28

    xor-long v106, v6, v106

    xor-long v104, v104, v106

    shl-long v106, v104, v87

    ushr-long v104, v104, v27

    or-long v104, v106, v104

    xor-long v106, v57, v10

    xor-long v108, v62, v17

    xor-long v104, v104, v35

    xor-long v106, v106, v108

    xor-long v104, v104, v106

    xor-long v106, v32, v52

    xor-long v108, v46, v67

    xor-long v108, v72, v108

    xor-long v106, v106, v108

    shl-long v108, v106, v87

    ushr-long v106, v106, v27

    or-long v106, v108, v106

    xor-long v108, v69, v20

    xor-long v110, v44, v12

    xor-long v106, v106, v65

    xor-long v108, v108, v110

    xor-long v106, v106, v108

    xor-long v32, v32, v94

    aput-wide v32, p1, v49

    xor-long v52, v52, v94

    aput-wide v52, p1, v59

    xor-long v46, v46, v94

    aput-wide v46, p1, v87

    xor-long v67, v67, v94

    aput-wide v67, p1, v22

    xor-long v72, v72, v94

    aput-wide v72, p1, v91

    xor-long v42, v42, v98

    aput-wide v42, p1, v25

    xor-long v94, v100, v98

    aput-wide v94, p1, v23

    xor-long v8, v8, v98

    aput-wide v8, p1, v40

    xor-long v2, v2, v98

    aput-wide v2, p1, v56

    xor-long v0, v0, v98

    aput-wide v0, p1, v90

    xor-long v57, v57, v102

    aput-wide v57, p1, v92

    xor-long v10, v10, v102

    aput-wide v10, p1, v61

    xor-long v62, v62, v102

    aput-wide v62, p1, v60

    xor-long v17, v17, v102

    aput-wide v17, p1, v16

    xor-long v35, v35, v102

    aput-wide v35, p1, v34

    xor-long v69, v69, v104

    aput-wide v69, p1, v77

    xor-long v20, v20, v104

    aput-wide v20, p1, v19

    xor-long v44, v44, v104

    aput-wide v44, p1, v37

    xor-long v12, v12, v104

    aput-wide v12, p1, v50

    xor-long v65, v65, v104

    aput-wide v65, p1, v64

    xor-long v38, v38, v106

    aput-wide v38, p1, v97

    xor-long v4, v4, v106

    aput-wide v4, p1, v41

    xor-long v30, v30, v106

    aput-wide v30, p1, v51

    xor-long v28, v28, v106

    aput-wide v28, p1, v82

    xor-long v6, v6, v106

    aput-wide v6, p1, v24

    shl-long v98, v52, v75

    ushr-long v52, v52, v76

    or-long v52, v98, v52

    aput-wide v52, p1, v59

    shl-long v98, v46, v59

    ushr-long v46, v46, v80

    or-long v46, v98, v46

    aput-wide v46, p1, v87

    shl-long v98, v67, v78

    ushr-long v67, v67, v82

    or-long v67, v98, v67

    aput-wide v67, p1, v22

    shl-long v98, v72, v77

    ushr-long v72, v72, v79

    or-long v72, v98, v72

    aput-wide v72, p1, v91

    shl-long v78, v42, v87

    ushr-long v26, v42, v27

    or-long v26, v78, v26

    aput-wide v26, p1, v25

    shl-long v42, v94, v81

    ushr-long v78, v94, v51

    or-long v42, v42, v78

    aput-wide v42, p1, v23

    shl-long v78, v8, v61

    ushr-long v8, v8, v85

    or-long v8, v78, v8

    aput-wide v8, p1, v40

    shl-long v78, v2, v83

    ushr-long v2, v2, v37

    or-long v2, v78, v2

    aput-wide v2, p1, v56

    shl-long v78, v0, v91

    ushr-long v0, v0, v84

    or-long v0, v78, v0

    aput-wide v0, p1, v90

    shl-long v78, v57, v84

    ushr-long v57, v57, v91

    or-long v57, v78, v57

    aput-wide v57, p1, v92

    shl-long v78, v10, v25

    ushr-long v10, v10, v88

    or-long v10, v78, v10

    aput-wide v10, p1, v61

    shl-long v78, v62, v86

    ushr-long v62, v62, v24

    move-wide/from16 v83, v0

    or-long v0, v78, v62

    aput-wide v0, p1, v60

    shl-long v62, v17, v64

    ushr-long v17, v17, v89

    move-wide/from16 v78, v2

    or-long v2, v62, v17

    aput-wide v2, p1, v16

    shl-long v17, v35, v80

    ushr-long v35, v35, v59

    move-wide/from16 v62, v4

    or-long v4, v17, v35

    aput-wide v4, p1, v34

    shl-long v17, v69, v76

    ushr-long v35, v69, v75

    or-long v17, v17, v35

    aput-wide v17, p1, v77

    shl-long v35, v20, v48

    ushr-long v20, v20, v23

    move-wide/from16 v69, v6

    or-long v6, v35, v20

    aput-wide v6, p1, v19

    shl-long v20, v44, v54

    ushr-long v35, v44, v55

    or-long v20, v20, v35

    aput-wide v20, p1, v37

    shl-long v35, v12, v24

    ushr-long v12, v12, v86

    or-long v12, v35, v12

    aput-wide v12, p1, v50

    shl-long v35, v65, v71

    ushr-long v44, v65, v90

    or-long v35, v35, v44

    aput-wide v35, p1, v64

    shl-long v44, v38, v74

    ushr-long v38, v38, v96

    or-long v38, v44, v38

    aput-wide v38, p1, v97

    shl-long v44, v62, v51

    ushr-long v62, v62, v81

    or-long v44, v44, v62

    aput-wide v44, p1, v41

    shl-long v62, v30, v55

    ushr-long v30, v30, v54

    or-long v30, v62, v30

    aput-wide v30, p1, v51

    shl-long v54, v28, v90

    ushr-long v28, v28, v71

    move-wide/from16 v62, v8

    or-long v8, v54, v28

    aput-wide v8, p1, v82

    shl-long v28, v69, v34

    const/16 v48, 0x32

    ushr-long v54, v69, v48

    or-long v28, v28, v54

    aput-wide v28, p1, v24

    move-wide/from16 v54, v10

    not-long v10, v0

    or-long v65, v42, v0

    xor-long v65, v32, v65

    or-long/2addr v10, v12

    xor-long v10, v42, v10

    and-long v69, v12, v28

    xor-long v0, v0, v69

    or-long v69, v28, v32

    xor-long v12, v12, v69

    and-long v32, v32, v42

    xor-long v28, v28, v32

    aput-wide v65, p1, v49

    aput-wide v10, p1, v23

    aput-wide v0, p1, v60

    aput-wide v12, p1, v50

    aput-wide v28, p1, v24

    move-wide/from16 v32, v0

    not-long v0, v4

    or-long v42, v44, v46

    xor-long v42, v17, v42

    and-long v69, v46, v78

    xor-long v69, v44, v69

    or-long v0, v78, v0

    xor-long v0, v46, v0

    or-long v46, v4, v17

    xor-long v46, v78, v46

    and-long v17, v17, v44

    xor-long v4, v4, v17

    aput-wide v42, p1, v77

    aput-wide v69, p1, v41

    aput-wide v0, p1, v87

    aput-wide v46, p1, v56

    aput-wide v4, p1, v34

    move-wide/from16 v17, v0

    not-long v0, v8

    or-long v44, v54, v20

    xor-long v44, v26, v44

    and-long v8, v20, v8

    xor-long v8, v54, v8

    and-long v74, v0, v72

    xor-long v20, v20, v74

    or-long v74, v72, v26

    xor-long v0, v0, v74

    and-long v26, v26, v54

    xor-long v26, v72, v26

    aput-wide v44, p1, v25

    aput-wide v8, p1, v61

    aput-wide v20, p1, v37

    aput-wide v0, p1, v82

    aput-wide v26, p1, v91

    move-wide/from16 v54, v0

    not-long v0, v2

    and-long v71, v52, v62

    xor-long v71, v38, v71

    or-long v2, v62, v2

    xor-long v2, v52, v2

    or-long v73, v0, v35

    xor-long v62, v62, v73

    and-long v73, v35, v38

    xor-long v0, v0, v73

    or-long v38, v38, v52

    xor-long v35, v35, v38

    aput-wide v71, p1, v97

    aput-wide v2, p1, v59

    aput-wide v62, p1, v40

    aput-wide v0, p1, v16

    aput-wide v35, p1, v64

    move-wide/from16 v38, v0

    not-long v0, v6

    and-long v52, v0, v30

    xor-long v52, v57, v52

    or-long v73, v30, v67

    xor-long v0, v0, v73

    and-long v73, v67, v83

    xor-long v30, v30, v73

    or-long v73, v83, v57

    xor-long v67, v67, v73

    and-long v6, v57, v6

    xor-long v6, v83, v6

    aput-wide v52, p1, v92

    aput-wide v0, p1, v19

    aput-wide v30, p1, v51

    aput-wide v67, p1, v22

    aput-wide v6, p1, v90

    add-int/lit8 v48, v93, 0x1

    aget-wide v57, v15, v48

    xor-long v57, v65, v57

    aput-wide v57, p1, v49

    aput-wide v42, p1, v56

    aput-wide v38, p1, v77

    aput-wide v8, p1, v16

    aput-wide v44, p1, v61

    aput-wide v69, p1, v25

    aput-wide v30, p1, v41

    aput-wide v52, p1, v51

    aput-wide v20, p1, v92

    aput-wide v35, p1, v37

    aput-wide v71, p1, v64

    aput-wide v6, p1, v97

    aput-wide v46, p1, v90

    aput-wide v10, p1, v87

    aput-wide v4, p1, v23

    aput-wide v26, p1, v34

    aput-wide v32, p1, v91

    aput-wide v54, p1, v60

    aput-wide v67, p1, v82

    aput-wide v28, p1, v22

    aput-wide v0, p1, v24

    aput-wide v2, p1, v19

    aput-wide v12, p1, v59

    aput-wide v62, p1, v50

    aput-wide v17, p1, v40

    add-int/lit8 v7, v93, 0x2

    move/from16 v6, v49

    move/from16 v4, v50

    move/from16 v5, v51

    move/from16 v0, v87

    move/from16 v2, v90

    move/from16 v1, v91

    move/from16 v3, v92

    goto/16 :goto_0

    :cond_0
    move/from16 v87, v0

    move/from16 v91, v1

    move/from16 v90, v2

    move/from16 v92, v3

    move/from16 v50, v4

    move/from16 v51, v5

    aget-wide v0, p1, v87

    not-long v0, v0

    aput-wide v0, p1, v87

    aget-wide v0, p1, v91

    not-long v0, v0

    aput-wide v0, p1, v91

    aget-wide v0, p1, v90

    not-long v0, v0

    aput-wide v0, p1, v90

    aget-wide v0, p1, v92

    not-long v0, v0

    aput-wide v0, p1, v92

    aget-wide v0, p1, v50

    not-long v0, v0

    aput-wide v0, p1, v50

    aget-wide v0, p1, v51

    not-long v0, v0

    aput-wide v0, p1, v51

    return-void
.end method
