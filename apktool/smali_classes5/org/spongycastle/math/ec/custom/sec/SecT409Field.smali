.class public Lorg/spongycastle/math/ec/custom/sec/SecT409Field;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([J[J)V
    .locals 25

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

    const-wide v21, 0x7ffffffffffffffL

    and-long v23, v1, v21

    aput-wide v23, p1, v0

    const/16 v0, 0x3b

    ushr-long v0, v1, v0

    shl-long v23, v4, v15

    xor-long v0, v0, v23

    and-long v0, v0, v21

    aput-wide v0, p1, v3

    const/16 v0, 0x36

    ushr-long v0, v4, v0

    const/16 v2, 0xa

    shl-long v2, v7, v2

    xor-long/2addr v0, v2

    and-long v0, v0, v21

    aput-wide v0, p1, v6

    const/16 v0, 0x31

    ushr-long v0, v7, v0

    const/16 v2, 0xf

    shl-long v2, v10, v2

    xor-long/2addr v0, v2

    and-long v0, v0, v21

    aput-wide v0, p1, v9

    const/16 v0, 0x2c

    ushr-long v0, v10, v0

    const/16 v2, 0x14

    shl-long v2, v13, v2

    xor-long/2addr v0, v2

    and-long v0, v0, v21

    aput-wide v0, p1, v12

    const/16 v0, 0x27

    ushr-long v0, v13, v0

    const/16 v2, 0x19

    shl-long v2, v16, v2

    xor-long/2addr v0, v2

    and-long v0, v0, v21

    aput-wide v0, p1, v15

    const/16 v0, 0x22

    ushr-long v0, v16, v0

    const/16 v2, 0x1e

    shl-long v2, v19, v2

    xor-long/2addr v0, v2

    aput-wide v0, p1, v18

    return-void
.end method

.method public static b([J[J[J)V
    .locals 47

    const/4 v0, 0x7

    new-array v1, v0, [J

    new-array v2, v0, [J

    move-object/from16 v3, p0

    invoke-static {v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->a([J[J)V

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->a([J[J)V

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x3b

    const/16 v6, 0x36

    const-wide/16 v7, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/16 v14, 0x8

    const/4 v15, 0x1

    if-ge v4, v0, :cond_2

    aget-wide v16, v2, v4

    new-array v14, v14, [J

    aput-wide v16, v14, v15

    shl-long v18, v16, v15

    aput-wide v18, v14, v13

    xor-long v18, v18, v16

    aput-wide v18, v14, v12

    shl-long v20, v16, v13

    aput-wide v20, v14, v11

    xor-long v20, v20, v16

    aput-wide v20, v14, v10

    shl-long v18, v18, v15

    aput-wide v18, v14, v9

    xor-long v16, v18, v16

    aput-wide v16, v14, v0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_1

    move/from16 v16, v0

    move-object/from16 v17, v1

    aget-wide v0, v17, v9

    long-to-int v11, v0

    and-int/lit8 v13, v11, 0x7

    aget-wide v18, v14, v13

    ushr-int/2addr v11, v12

    and-int/lit8 v11, v11, 0x7

    aget-wide v20, v14, v11

    shl-long v20, v20, v12

    xor-long v18, v18, v20

    move/from16 p1, v4

    move v11, v6

    move-wide/from16 v20, v7

    const/16 p0, 0x0

    :cond_0
    ushr-long v3, v0, v11

    long-to-int v3, v3

    and-int/lit8 v4, v3, 0x7

    aget-wide v22, v14, v4

    ushr-int/2addr v3, v12

    and-int/lit8 v3, v3, 0x7

    aget-wide v3, v14, v3

    shl-long/2addr v3, v12

    xor-long v3, v22, v3

    shl-long v22, v3, v11

    xor-long v18, v18, v22

    neg-int v13, v11

    ushr-long/2addr v3, v13

    xor-long v20, v20, v3

    add-int/lit8 v11, v11, -0x6

    if-gtz v11, :cond_0

    add-int v4, p1, v9

    aget-wide v0, p2, v4

    const-wide v22, 0x7ffffffffffffffL

    and-long v22, v18, v22

    xor-long v0, v0, v22

    aput-wide v0, p2, v4

    add-int/2addr v4, v15

    aget-wide v0, p2, v4

    ushr-long v18, v18, v5

    shl-long v20, v20, v10

    xor-long v18, v18, v20

    xor-long v0, v0, v18

    aput-wide v0, p2, v4

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, p1

    move/from16 v0, v16

    move-object/from16 v1, v17

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 p1, v4

    const/16 p0, 0x0

    add-int/lit8 v4, p1, 0x1

    goto/16 :goto_0

    :cond_2
    move/from16 v16, v0

    const/16 p0, 0x0

    aget-wide v0, p2, p0

    aget-wide v2, p2, v15

    aget-wide v17, p2, v13

    aget-wide v19, p2, v12

    aget-wide v21, p2, v11

    aget-wide v23, p2, v10

    aget-wide v25, p2, v9

    aget-wide v27, p2, v16

    aget-wide v29, p2, v14

    const/16 v4, 0x9

    aget-wide v31, p2, v4

    const/16 v33, 0xa

    aget-wide v34, p2, v33

    const/16 v36, 0xb

    aget-wide v37, p2, v36

    const/16 v39, 0xc

    aget-wide v40, p2, v39

    const/16 v42, 0xd

    aget-wide v43, p2, v42

    shl-long v45, v2, v5

    xor-long v0, v0, v45

    aput-wide v0, p2, p0

    ushr-long v0, v2, v10

    shl-long v2, v17, v6

    xor-long/2addr v0, v2

    aput-wide v0, p2, v15

    ushr-long v0, v17, v33

    const/16 v2, 0x31

    shl-long v2, v19, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v13

    const/16 v0, 0xf

    ushr-long v0, v19, v0

    const/16 v2, 0x2c

    shl-long v2, v21, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v12

    const/16 v0, 0x14

    ushr-long v0, v21, v0

    const/16 v2, 0x27

    shl-long v2, v23, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v11

    const/16 v0, 0x19

    ushr-long v0, v23, v0

    const/16 v2, 0x22

    shl-long v2, v25, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v10

    const/16 v0, 0x1e

    ushr-long v0, v25, v0

    const/16 v2, 0x1d

    shl-long v2, v27, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v9

    const/16 v0, 0x23

    ushr-long v0, v27, v0

    const/16 v2, 0x18

    shl-long v2, v29, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v16

    const/16 v0, 0x28

    ushr-long v0, v29, v0

    const/16 v2, 0x13

    shl-long v2, v31, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v14

    const/16 v0, 0x2d

    ushr-long v0, v31, v0

    const/16 v2, 0xe

    shl-long v2, v34, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v4

    const/16 v0, 0x32

    ushr-long v0, v34, v0

    shl-long v2, v37, v4

    xor-long/2addr v0, v2

    aput-wide v0, p2, v33

    const/16 v0, 0x37

    ushr-long v0, v37, v0

    shl-long v2, v40, v11

    xor-long/2addr v0, v2

    const/16 v2, 0x3f

    shl-long v2, v43, v2

    xor-long/2addr v0, v2

    aput-wide v0, p2, v36

    const/16 v0, 0x3c

    ushr-long v0, v40, v0

    ushr-long v2, v43, v15

    xor-long/2addr v0, v2

    aput-wide v0, p2, v39

    aput-wide v7, p2, v42

    return-void
.end method

.method public static c([J[J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

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

    const/16 p0, 0xc

    aput-wide v0, p1, p0

    return-void
.end method

.method public static d([J[J[J)V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [J

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->b([J[J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->e([J[J)V

    return-void
.end method

.method public static e([J[J)V
    .locals 32

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

    aget-wide v21, p0, v21

    const/16 v23, 0xc

    aget-wide v23, p0, v23

    const/16 v25, 0x27

    shl-long v26, v23, v25

    xor-long v16, v16, v26

    const/16 v26, 0x19

    ushr-long v27, v23, v26

    const/16 v29, 0x3e

    shl-long v30, v23, v29

    xor-long v27, v27, v30

    xor-long v19, v19, v27

    ushr-long v23, v23, v6

    xor-long v21, v21, v23

    const/16 v23, 0xb

    aget-wide v23, p0, v23

    shl-long v27, v23, v25

    xor-long v13, v13, v27

    ushr-long v27, v23, v26

    shl-long v30, v23, v29

    xor-long v27, v27, v30

    xor-long v16, v16, v27

    ushr-long v23, v23, v6

    xor-long v19, v19, v23

    const/16 v23, 0xa

    aget-wide v23, p0, v23

    shl-long v27, v23, v25

    xor-long v10, v10, v27

    ushr-long v27, v23, v26

    shl-long v30, v23, v29

    xor-long v27, v27, v30

    xor-long v13, v13, v27

    ushr-long v23, v23, v6

    xor-long v16, v16, v23

    const/16 v23, 0x9

    aget-wide v23, p0, v23

    shl-long v27, v23, v25

    xor-long v7, v7, v27

    ushr-long v27, v23, v26

    shl-long v30, v23, v29

    xor-long v27, v27, v30

    xor-long v10, v10, v27

    ushr-long v23, v23, v6

    xor-long v13, v13, v23

    const/16 v23, 0x8

    aget-wide v23, p0, v23

    shl-long v27, v23, v25

    xor-long v4, v4, v27

    ushr-long v27, v23, v26

    shl-long v30, v23, v29

    xor-long v27, v27, v30

    xor-long v7, v7, v27

    ushr-long v23, v23, v6

    xor-long v10, v10, v23

    shl-long v23, v21, v25

    xor-long v1, v1, v23

    ushr-long v23, v21, v26

    shl-long v27, v21, v29

    xor-long v23, v23, v27

    xor-long v4, v4, v23

    ushr-long v21, v21, v6

    xor-long v7, v7, v21

    ushr-long v21, v19, v26

    xor-long v1, v1, v21

    aput-wide v1, p1, v0

    const/16 v0, 0x17

    shl-long v0, v21, v0

    xor-long/2addr v0, v4

    aput-wide v0, p1, v3

    aput-wide v7, p1, v6

    aput-wide v10, p1, v9

    aput-wide v13, p1, v12

    aput-wide v16, p1, v15

    const-wide/32 v0, 0x1ffffff

    and-long v0, v19, v0

    aput-wide v0, p1, v18

    return-void
.end method

.method public static f([JI[J)V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [J

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->c([J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->e([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->c([J[J)V

    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->e([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method
