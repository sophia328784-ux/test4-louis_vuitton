.class public Lorg/spongycastle/math/ec/custom/sec/SecT283Field;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->a:[J

    return-void

    nop

    :array_0
    .array-data 8
        0xc30c30c30c30808L    # 5.85284437198306E-250
        0x30c30c30c30c30c3L    # 8.42232057182544E-74
        -0x7df7df7df7df7cf4L    # -7.205387683174334E-299
        0x820820820820820L
        0x2082082
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x7

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/16 v0, 0x8

    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long/2addr p0, v1

    aput-wide p0, p2, v0

    return-void
.end method

.method public static b([J[J)V
    .locals 19

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

    const-wide v15, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long v17, v1, v15

    aput-wide v17, p1, v0

    const/16 v0, 0x39

    ushr-long v0, v1, v0

    const/4 v2, 0x7

    shl-long v17, v4, v2

    xor-long v0, v0, v17

    and-long/2addr v0, v15

    aput-wide v0, p1, v3

    const/16 v0, 0x32

    ushr-long v0, v4, v0

    const/16 v2, 0xe

    shl-long v2, v7, v2

    xor-long/2addr v0, v2

    and-long/2addr v0, v15

    aput-wide v0, p1, v6

    const/16 v0, 0x2b

    ushr-long v0, v7, v0

    const/16 v2, 0x15

    shl-long v2, v10, v2

    xor-long/2addr v0, v2

    and-long/2addr v0, v15

    aput-wide v0, p1, v9

    const/16 v0, 0x24

    ushr-long v0, v10, v0

    const/16 v2, 0x1c

    shl-long v2, v13, v2

    xor-long/2addr v0, v2

    aput-wide v0, p1, v12

    return-void
.end method

.method public static c([J[J[J)V
    .locals 52

    const/4 v0, 0x5

    new-array v1, v0, [J

    new-array v2, v0, [J

    move-object/from16 v3, p0

    invoke-static {v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->b([J[J)V

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->b([J[J)V

    const/16 v3, 0x1a

    new-array v4, v3, [J

    const/4 v3, 0x0

    aget-wide v6, v1, v3

    aget-wide v8, v2, v3

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    const/4 v10, 0x1

    aget-wide v6, v1, v10

    aget-wide v8, v2, v10

    const/4 v5, 0x2

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    const/4 v11, 0x2

    aget-wide v6, v1, v11

    aget-wide v8, v2, v11

    const/4 v5, 0x4

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    const/4 v12, 0x3

    aget-wide v6, v1, v12

    aget-wide v8, v2, v12

    const/4 v5, 0x6

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    const/4 v13, 0x4

    aget-wide v6, v1, v13

    aget-wide v8, v2, v13

    const/16 v5, 0x8

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    aget-wide v5, v1, v3

    aget-wide v7, v1, v10

    xor-long v14, v5, v7

    aget-wide v7, v2, v3

    aget-wide v16, v2, v10

    xor-long v16, v7, v16

    aget-wide v18, v1, v11

    xor-long v20, v5, v18

    aget-wide v5, v2, v11

    xor-long v22, v7, v5

    aget-wide v7, v1, v13

    xor-long v18, v18, v7

    aget-wide v24, v2, v13

    xor-long v26, v5, v24

    aget-wide v5, v1, v12

    xor-long v28, v5, v7

    aget-wide v7, v2, v12

    xor-long v24, v7, v24

    xor-long v5, v20, v5

    xor-long v8, v22, v7

    move-wide v6, v5

    const/16 v5, 0x12

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    aget-wide v5, v1, v10

    xor-long v6, v18, v5

    aget-wide v8, v2, v10

    xor-long v8, v26, v8

    const/16 v5, 0x14

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    xor-long v6, v14, v28

    xor-long v8, v16, v24

    aget-wide v30, v1, v11

    xor-long v30, v6, v30

    aget-wide v1, v2, v11

    xor-long/2addr v1, v8

    const/16 v5, 0x16

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    const/16 v5, 0x18

    move-wide v8, v1

    move-wide/from16 v6, v30

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    const/16 v5, 0xa

    move-wide v6, v14

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    const/16 v5, 0xc

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    const/16 v5, 0xe

    move-wide/from16 v6, v18

    move-wide/from16 v8, v26

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    const/16 v5, 0x10

    move-wide/from16 v8, v24

    move-wide/from16 v6, v28

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->d([JIJJ)V

    aget-wide v1, v4, v3

    aput-wide v1, p2, v3

    const/16 v5, 0x9

    aget-wide v6, v4, v5

    aput-wide v6, p2, v5

    aget-wide v8, v4, v3

    aget-wide v14, v4, v10

    xor-long/2addr v14, v8

    aget-wide v16, v4, v11

    xor-long v16, v14, v16

    const/16 v18, 0xa

    aget-wide v18, v4, v18

    xor-long v18, v16, v18

    aput-wide v18, p2, v10

    aget-wide v20, v4, v12

    aget-wide v22, v4, v13

    xor-long v20, v20, v22

    const/16 v22, 0xb

    aget-wide v22, v4, v22

    const/16 v24, 0xc

    aget-wide v24, v4, v24

    xor-long v22, v22, v24

    xor-long v22, v20, v22

    xor-long v16, v16, v22

    aput-wide v16, p2, v11

    xor-long v14, v14, v20

    aget-wide v20, v4, v0

    const/16 v22, 0x6

    aget-wide v23, v4, v22

    xor-long v20, v20, v23

    xor-long v14, v14, v20

    const/16 v23, 0x8

    aget-wide v24, v4, v23

    xor-long v14, v14, v24

    const/16 v26, 0xd

    aget-wide v26, v4, v26

    const/16 v28, 0xe

    aget-wide v29, v4, v28

    xor-long v26, v26, v29

    xor-long v29, v14, v26

    const/16 v31, 0x12

    aget-wide v31, v4, v31

    const/16 v33, 0x16

    aget-wide v34, v4, v33

    xor-long v36, v31, v34

    const/16 v38, 0x18

    aget-wide v38, v4, v38

    xor-long v36, v36, v38

    xor-long v29, v29, v36

    aput-wide v29, p2, v12

    const/16 v36, 0x7

    aget-wide v40, v4, v36

    xor-long v24, v40, v24

    aget-wide v40, v4, v5

    xor-long v24, v24, v40

    const/16 v37, 0x11

    aget-wide v42, v4, v37

    xor-long v42, v24, v42

    aput-wide v42, p2, v23

    xor-long v20, v24, v20

    const/16 v24, 0xf

    aget-wide v44, v4, v24

    const/16 v25, 0x10

    aget-wide v46, v4, v25

    xor-long v44, v44, v46

    xor-long v20, v20, v44

    aput-wide v20, p2, v36

    xor-long v44, v20, v18

    const/16 v25, 0x13

    aget-wide v46, v4, v25

    const/16 v25, 0x14

    aget-wide v48, v4, v25

    xor-long v46, v46, v48

    const/16 v25, 0x19

    aget-wide v48, v4, v25

    xor-long v37, v48, v38

    const/16 v25, 0x17

    aget-wide v50, v4, v25

    xor-long v31, v31, v50

    xor-long v37, v46, v37

    xor-long v31, v37, v31

    xor-long v31, v31, v44

    aput-wide v31, p2, v13

    xor-long v44, v16, v42

    xor-long v37, v37, v44

    const/16 v25, 0x15

    aget-wide v44, v4, v25

    xor-long v34, v44, v34

    xor-long v34, v37, v34

    aput-wide v34, p2, v0

    xor-long/2addr v8, v14

    xor-long v8, v8, v40

    xor-long v8, v8, v26

    xor-long v8, v8, v44

    xor-long v8, v8, v50

    xor-long v8, v8, v48

    aput-wide v8, p2, v22

    const/16 v4, 0x39

    shl-long v14, v18, v4

    xor-long/2addr v1, v14

    aput-wide v1, p2, v3

    ushr-long v1, v18, v36

    const/16 v3, 0x32

    shl-long v3, v16, v3

    xor-long/2addr v1, v3

    aput-wide v1, p2, v10

    ushr-long v1, v16, v28

    const/16 v3, 0x2b

    shl-long v3, v29, v3

    xor-long/2addr v1, v3

    aput-wide v1, p2, v11

    ushr-long v1, v29, v25

    const/16 v3, 0x24

    shl-long v3, v31, v3

    xor-long/2addr v1, v3

    aput-wide v1, p2, v12

    const/16 v1, 0x1c

    ushr-long v1, v31, v1

    const/16 v3, 0x1d

    shl-long v3, v34, v3

    xor-long/2addr v1, v3

    aput-wide v1, p2, v13

    const/16 v1, 0x23

    ushr-long v1, v34, v1

    shl-long v3, v8, v33

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/16 v0, 0x2a

    ushr-long v0, v8, v0

    shl-long v2, v20, v24

    xor-long/2addr v0, v2

    aput-wide v0, p2, v22

    const/16 v0, 0x31

    ushr-long v0, v20, v0

    shl-long v2, v42, v23

    xor-long/2addr v0, v2

    aput-wide v0, p2, v36

    const/16 v0, 0x38

    ushr-long v0, v42, v0

    shl-long v2, v6, v10

    xor-long/2addr v0, v2

    aput-wide v0, p2, v23

    const/16 v0, 0x3f

    ushr-long v0, v6, v0

    aput-wide v0, p2, v5

    return-void
.end method

.method public static d([JIJJ)V
    .locals 18

    move-wide/from16 v0, p2

    const/16 v2, 0x8

    new-array v3, v2, [J

    const/4 v4, 0x1

    aput-wide p4, v3, v4

    shl-long v5, p4, v4

    const/4 v7, 0x2

    aput-wide v5, v3, v7

    xor-long v5, v5, p4

    const/4 v8, 0x3

    aput-wide v5, v3, v8

    shl-long v9, p4, v7

    const/4 v7, 0x4

    aput-wide v9, v3, v7

    const/4 v7, 0x5

    xor-long v9, v9, p4

    aput-wide v9, v3, v7

    shl-long/2addr v5, v4

    const/4 v7, 0x6

    aput-wide v5, v3, v7

    xor-long v5, v5, p4

    const/4 v9, 0x7

    aput-wide v5, v3, v9

    long-to-int v5, v0

    and-int/2addr v5, v9

    aget-wide v5, v3, v5

    const-wide/16 v10, 0x0

    const/16 v12, 0x30

    :cond_0
    ushr-long v13, v0, v12

    long-to-int v13, v13

    and-int/lit8 v14, v13, 0x7

    aget-wide v14, v3, v14

    ushr-int/lit8 v16, v13, 0x3

    and-int/lit8 v16, v16, 0x7

    aget-wide v16, v3, v16

    shl-long v16, v16, v8

    xor-long v14, v14, v16

    ushr-int/2addr v13, v7

    and-int/2addr v13, v9

    aget-wide v16, v3, v13

    shl-long v16, v16, v7

    xor-long v13, v14, v16

    shl-long v15, v13, v12

    xor-long/2addr v5, v15

    neg-int v15, v12

    ushr-long/2addr v13, v15

    xor-long/2addr v10, v13

    add-int/lit8 v12, v12, -0x9

    if-gtz v12, :cond_0

    const-wide v7, 0x100804020100800L

    and-long/2addr v0, v7

    shl-long v7, p4, v9

    const/16 v3, 0x3f

    shr-long/2addr v7, v3

    and-long/2addr v0, v7

    ushr-long/2addr v0, v2

    xor-long/2addr v0, v10

    const-wide v2, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v2, v5

    aput-wide v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    const/16 v3, 0x39

    ushr-long v3, v5, v3

    shl-long/2addr v0, v9

    xor-long/2addr v0, v3

    aput-wide v0, p0, v2

    return-void
.end method

.method public static e([J[J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    shl-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, p1, v3}, Lorg/spongycastle/math/raw/Interleave;->c(J[JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-wide v0, p0, v1

    long-to-int p0, v0

    invoke-static {p0}, Lorg/spongycastle/math/raw/Interleave;->b(I)J

    move-result-wide v0

    const/16 p0, 0x8

    aput-wide v0, p1, p0

    return-void
.end method

.method public static f([J[J[J)V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->c([J[J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->g([J[J)V

    return-void
.end method

.method public static g([J[J)V
    .locals 36

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

    aget-wide v18, p0, v18

    const/16 v20, 0x7

    aget-wide v21, p0, v20

    const/16 v23, 0x8

    aget-wide v23, p0, v23

    const/16 v25, 0x25

    shl-long v26, v23, v25

    const/16 v28, 0x2a

    shl-long v29, v23, v28

    xor-long v26, v26, v29

    const/16 v29, 0x2c

    shl-long v30, v23, v29

    xor-long v26, v26, v30

    const/16 v30, 0x31

    shl-long v31, v23, v30

    xor-long v26, v26, v31

    xor-long v10, v10, v26

    const/16 v26, 0x1b

    ushr-long v31, v23, v26

    const/16 v27, 0x16

    ushr-long v33, v23, v27

    xor-long v31, v31, v33

    const/16 v33, 0x14

    ushr-long v34, v23, v33

    xor-long v31, v31, v34

    const/16 v34, 0xf

    ushr-long v23, v23, v34

    xor-long v23, v31, v23

    xor-long v13, v13, v23

    shl-long v23, v21, v25

    shl-long v31, v21, v28

    xor-long v23, v23, v31

    shl-long v31, v21, v29

    xor-long v23, v23, v31

    shl-long v31, v21, v30

    xor-long v23, v23, v31

    xor-long v7, v7, v23

    ushr-long v23, v21, v26

    ushr-long v31, v21, v27

    xor-long v23, v23, v31

    ushr-long v31, v21, v33

    xor-long v23, v23, v31

    ushr-long v21, v21, v34

    xor-long v21, v23, v21

    xor-long v10, v10, v21

    shl-long v21, v18, v25

    shl-long v23, v18, v28

    xor-long v21, v21, v23

    shl-long v23, v18, v29

    xor-long v21, v21, v23

    shl-long v23, v18, v30

    xor-long v21, v21, v23

    xor-long v4, v4, v21

    ushr-long v21, v18, v26

    ushr-long v23, v18, v27

    xor-long v21, v21, v23

    ushr-long v23, v18, v33

    xor-long v21, v21, v23

    ushr-long v18, v18, v34

    xor-long v18, v21, v18

    xor-long v7, v7, v18

    shl-long v18, v16, v25

    shl-long v21, v16, v28

    xor-long v18, v18, v21

    shl-long v21, v16, v29

    xor-long v18, v18, v21

    shl-long v21, v16, v30

    xor-long v18, v18, v21

    xor-long v1, v1, v18

    ushr-long v18, v16, v26

    ushr-long v21, v16, v27

    xor-long v18, v18, v21

    ushr-long v21, v16, v33

    xor-long v18, v18, v21

    ushr-long v16, v16, v34

    xor-long v16, v18, v16

    xor-long v4, v4, v16

    ushr-long v16, v13, v26

    xor-long v1, v1, v16

    shl-long v18, v16, v15

    xor-long v1, v1, v18

    shl-long v18, v16, v20

    xor-long v1, v1, v18

    const/16 v15, 0xc

    shl-long v15, v16, v15

    xor-long/2addr v1, v15

    aput-wide v1, p1, v0

    aput-wide v4, p1, v3

    aput-wide v7, p1, v6

    aput-wide v10, p1, v9

    const-wide/32 v0, 0x7ffffff

    and-long/2addr v0, v13

    aput-wide v0, p1, v12

    return-void
.end method

.method public static h([J[J)V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->e([J[J)V

    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->g([J[J)V

    return-void
.end method

.method public static i([JI[J)V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->e([J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->g([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->e([J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->g([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method
