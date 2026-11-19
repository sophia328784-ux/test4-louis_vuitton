.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish512Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threefish512Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x2e

.field private static final ROTATION_0_1:I = 0x24

.field private static final ROTATION_0_2:I = 0x13

.field private static final ROTATION_0_3:I = 0x25

.field private static final ROTATION_1_0:I = 0x21

.field private static final ROTATION_1_1:I = 0x1b

.field private static final ROTATION_1_2:I = 0xe

.field private static final ROTATION_1_3:I = 0x2a

.field private static final ROTATION_2_0:I = 0x11

.field private static final ROTATION_2_1:I = 0x31

.field private static final ROTATION_2_2:I = 0x24

.field private static final ROTATION_2_3:I = 0x27

.field private static final ROTATION_3_0:I = 0x2c

.field private static final ROTATION_3_1:I = 0x9

.field private static final ROTATION_3_2:I = 0x36

.field private static final ROTATION_3_3:I = 0x38

.field private static final ROTATION_4_0:I = 0x27

.field private static final ROTATION_4_1:I = 0x1e

.field private static final ROTATION_4_2:I = 0x22

.field private static final ROTATION_4_3:I = 0x18

.field private static final ROTATION_5_0:I = 0xd

.field private static final ROTATION_5_1:I = 0x32

.field private static final ROTATION_5_2:I = 0xa

.field private static final ROTATION_5_3:I = 0x11

.field private static final ROTATION_6_0:I = 0x19

.field private static final ROTATION_6_1:I = 0x1d

.field private static final ROTATION_6_2:I = 0x27

.field private static final ROTATION_6_3:I = 0x2b

.field private static final ROTATION_7_0:I = 0x8

.field private static final ROTATION_7_1:I = 0x23

.field private static final ROTATION_7_2:I = 0x38

.field private static final ROTATION_7_3:I = 0x16


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method public decryptBlock([J[J)V
    .locals 49

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v3

    array-length v4, v1

    const/16 v5, 0x11

    if-ne v4, v5, :cond_2

    array-length v4, v0

    const/4 v6, 0x5

    if-ne v4, v6, :cond_1

    const/4 v4, 0x0

    aget-wide v7, p1, v4

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    const/4 v15, 0x3

    aget-wide v16, p1, v15

    const/16 v18, 0x4

    aget-wide v19, p1, v18

    aget-wide v21, p1, v6

    const/16 v23, 0x6

    aget-wide v24, p1, v23

    const/16 v26, 0x7

    aget-wide v27, p1, v26

    move/from16 p0, v4

    move v4, v5

    :goto_0
    if-lt v4, v9, :cond_0

    aget v29, v2, v4

    aget v30, v3, v4

    add-int/lit8 v31, v29, 0x1

    aget-wide v32, v1, v31

    sub-long v7, v7, v32

    add-int/lit8 v32, v29, 0x2

    aget-wide v33, v1, v32

    sub-long v10, v10, v33

    add-int/lit8 v33, v29, 0x3

    aget-wide v34, v1, v33

    sub-long v13, v13, v34

    add-int/lit8 v34, v29, 0x4

    aget-wide v35, v1, v34

    move/from16 v37, v6

    sub-long v5, v16, v35

    add-int/lit8 v16, v29, 0x5

    aget-wide v35, v1, v16

    move/from16 v38, v12

    move-wide/from16 v39, v13

    sub-long v12, v19, v35

    add-int/lit8 v14, v29, 0x6

    aget-wide v19, v1, v14

    add-int/lit8 v17, v30, 0x1

    aget-wide v35, v0, v17

    add-long v19, v19, v35

    move/from16 v35, v9

    move-wide/from16 v41, v10

    sub-long v9, v21, v19

    add-int/lit8 v11, v29, 0x7

    aget-wide v19, v1, v11

    add-int/lit8 v21, v30, 0x2

    aget-wide v21, v0, v21

    add-long v19, v19, v21

    move-object/from16 v43, v0

    move-object/from16 v36, v1

    sub-long v0, v24, v19

    add-int/lit8 v19, v29, 0x8

    aget-wide v19, v36, v19

    move-object/from16 v44, v2

    move-object/from16 v45, v3

    int-to-long v2, v4

    add-long v19, v19, v2

    const-wide/16 v21, 0x1

    add-long v19, v19, v21

    move-wide/from16 v21, v2

    sub-long v2, v27, v19

    move/from16 v46, v15

    const/16 v15, 0x8

    move/from16 p1, v4

    move-wide/from16 v47, v5

    move-wide/from16 v4, v41

    invoke-static {v4, v5, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v6, 0x23

    invoke-static {v2, v3, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v6, 0x38

    move/from16 v19, v14

    move-wide/from16 v14, v39

    invoke-static {v9, v10, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v14, v9

    const/16 v6, 0x16

    move-wide/from16 v24, v2

    move-wide/from16 v2, v47

    invoke-static {v2, v3, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v6, 0x19

    invoke-static {v4, v5, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v12, v4

    const/16 v6, 0x1d

    invoke-static {v2, v3, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v6, 0x27

    invoke-static {v9, v10, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const/16 v6, 0x2b

    move-wide/from16 v39, v2

    move-wide/from16 v2, v24

    invoke-static {v2, v3, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v14, v2

    const/16 v6, 0xd

    invoke-static {v4, v5, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v14, v4

    const/16 v6, 0x32

    invoke-static {v2, v3, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v12, v2

    const/16 v6, 0xa

    invoke-static {v9, v10, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v0, v9

    move-wide/from16 v24, v0

    move-wide/from16 v0, v39

    const/16 v6, 0x11

    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v6, 0x27

    invoke-static {v4, v5, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v7, v4

    const/16 v6, 0x1e

    invoke-static {v0, v1, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v14, v0

    const/16 v6, 0x22

    invoke-static {v9, v10, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v12, v9

    const/16 v6, 0x18

    move-wide/from16 v39, v0

    move-wide/from16 v0, v24

    invoke-static {v2, v3, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    aget-wide v24, v36, v29

    sub-long v7, v7, v24

    aget-wide v24, v36, v31

    sub-long v4, v4, v24

    aget-wide v24, v36, v32

    sub-long v14, v14, v24

    aget-wide v24, v36, v33

    move-wide/from16 v28, v0

    sub-long v0, v39, v24

    aget-wide v24, v36, v34

    sub-long v12, v12, v24

    aget-wide v24, v36, v16

    aget-wide v30, v43, v30

    add-long v24, v24, v30

    sub-long v9, v9, v24

    aget-wide v24, v36, v19

    aget-wide v16, v43, v17

    add-long v24, v24, v16

    move-wide/from16 v16, v2

    sub-long v2, v28, v24

    aget-wide v24, v36, v11

    add-long v24, v24, v21

    move-wide/from16 v21, v0

    sub-long v0, v16, v24

    const/16 v6, 0x2c

    invoke-static {v4, v5, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v6, 0x9

    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v6, 0x36

    invoke-static {v9, v10, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v14, v9

    move-wide/from16 v16, v0

    move-wide/from16 v0, v21

    const/16 v6, 0x38

    invoke-static {v0, v1, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v12, v0

    const/16 v6, 0x11

    invoke-static {v4, v5, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v12, v4

    const/16 v11, 0x31

    invoke-static {v0, v1, v11, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v11, 0x24

    invoke-static {v9, v10, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v7, v9

    move-wide/from16 v19, v7

    move-wide/from16 v6, v16

    const/16 v8, 0x27

    invoke-static {v6, v7, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v14, v6

    const/16 v8, 0x21

    invoke-static {v4, v5, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v14, v4

    const/16 v8, 0x1b

    invoke-static {v6, v7, v8, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v6

    sub-long/2addr v12, v6

    const/16 v8, 0xe

    invoke-static {v9, v10, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    sub-long/2addr v2, v8

    const/16 v10, 0x2a

    move-wide/from16 v21, v12

    move-wide/from16 v11, v19

    invoke-static {v0, v1, v10, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v10, v11, v0

    const/16 v12, 0x2e

    invoke-static {v4, v5, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v10, v4

    const/16 v12, 0x24

    invoke-static {v0, v1, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v13, v14, v16

    const/16 v0, 0x13

    move-wide/from16 v19, v4

    move-wide/from16 v4, v21

    invoke-static {v8, v9, v0, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v21

    sub-long v0, v4, v21

    const/16 v4, 0x25

    invoke-static {v6, v7, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v27

    sub-long v24, v2, v27

    add-int/lit8 v4, p1, -0x2

    move-wide v7, v10

    move-wide/from16 v10, v19

    move/from16 v9, v35

    move/from16 v6, v37

    move/from16 v12, v38

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move/from16 v15, v46

    const/16 v5, 0x11

    move-wide/from16 v19, v0

    move-object/from16 v1, v36

    move-object/from16 v0, v43

    goto/16 :goto_0

    :cond_0
    move-object/from16 v43, v0

    move-object/from16 v36, v1

    move/from16 v37, v6

    move/from16 v35, v9

    move/from16 v38, v12

    move/from16 v46, v15

    aget-wide v0, v36, p0

    sub-long/2addr v7, v0

    aget-wide v0, v36, v35

    sub-long/2addr v10, v0

    aget-wide v0, v36, v38

    sub-long/2addr v13, v0

    aget-wide v0, v36, v46

    sub-long v16, v16, v0

    aget-wide v0, v36, v18

    sub-long v19, v19, v0

    aget-wide v0, v36, v37

    aget-wide v2, v43, p0

    add-long/2addr v0, v2

    sub-long v21, v21, v0

    aget-wide v0, v36, v23

    aget-wide v2, v43, v35

    add-long/2addr v0, v2

    sub-long v24, v24, v0

    aget-wide v0, v36, v26

    sub-long v27, v27, v0

    aput-wide v7, p2, p0

    aput-wide v10, p2, v35

    aput-wide v13, p2, v38

    aput-wide v16, p2, v46

    aput-wide v19, p2, v18

    aput-wide v21, p2, v37

    aput-wide v24, p2, v23

    aput-wide v27, p2, v26

    return-void

    :cond_1
    invoke-static {}, Lct0;->c()V

    return-void

    :cond_2
    invoke-static {}, Lct0;->c()V

    return-void
.end method

.method public encryptBlock([J[J)V
    .locals 47

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$200()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v3

    array-length v4, v1

    const/16 v5, 0x11

    if-ne v4, v5, :cond_2

    array-length v4, v0

    const/4 v6, 0x5

    if-ne v4, v6, :cond_1

    const/4 v4, 0x0

    aget-wide v7, p1, v4

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    const/4 v15, 0x3

    aget-wide v16, p1, v15

    const/16 v18, 0x4

    aget-wide v19, p1, v18

    aget-wide v21, p1, v6

    const/16 v23, 0x6

    aget-wide v24, p1, v23

    const/16 v26, 0x7

    aget-wide v27, p1, v26

    aget-wide v29, v1, v4

    add-long v7, v7, v29

    aget-wide v29, v1, v9

    add-long v10, v10, v29

    aget-wide v29, v1, v12

    add-long v13, v13, v29

    aget-wide v29, v1, v15

    add-long v16, v16, v29

    aget-wide v29, v1, v18

    add-long v19, v19, v29

    aget-wide v29, v1, v6

    aget-wide v31, v0, v4

    add-long v29, v29, v31

    add-long v29, v29, v21

    aget-wide v21, v1, v23

    aget-wide v31, v0, v9

    add-long v21, v21, v31

    add-long v21, v21, v24

    aget-wide v24, v1, v26

    add-long v27, v27, v24

    move/from16 p0, v6

    move/from16 p1, v12

    move-wide/from16 v24, v13

    move-wide/from16 v12, v27

    move/from16 v27, v4

    move v4, v9

    move/from16 v28, v4

    move-wide/from16 v45, v16

    move-wide/from16 v16, v7

    move-wide/from16 v6, v45

    move-wide/from16 v8, v29

    :goto_0
    const/16 v14, 0x12

    if-ge v4, v14, :cond_0

    aget v14, v2, v4

    aget v29, v3, v4

    move-wide/from16 v31, v6

    add-long v5, v16, v10

    const/16 v7, 0x2e

    invoke-static {v10, v11, v7, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    move-object/from16 v33, v0

    move-object v7, v1

    add-long v0, v24, v31

    move/from16 v34, v15

    const/16 v15, 0x24

    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move-wide/from16 v2, v31

    invoke-static {v2, v3, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v16, v0

    add-long v0, v19, v8

    const/16 v15, 0x13

    invoke-static {v8, v9, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v19, v0

    add-long v0, v21, v12

    const/16 v15, 0x25

    invoke-static {v12, v13, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    move-wide/from16 v21, v0

    add-long v0, v16, v10

    const/16 v15, 0x21

    invoke-static {v10, v11, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    move-wide v15, v0

    add-long v0, v19, v12

    move-wide/from16 v31, v5

    const/16 v5, 0x1b

    invoke-static {v12, v13, v5, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long v12, v21, v8

    move-wide/from16 v19, v0

    const/16 v0, 0xe

    invoke-static {v8, v9, v0, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v8, v31, v2

    move-object/from16 v31, v7

    const/16 v7, 0x2a

    invoke-static {v2, v3, v7, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v21, v8

    add-long v7, v19, v10

    const/16 v9, 0x11

    invoke-static {v10, v11, v9, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v12, v2

    const/16 v9, 0x31

    invoke-static {v2, v3, v9, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v19, v7

    add-long v7, v21, v0

    const/16 v9, 0x24

    invoke-static {v0, v1, v9, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v21, v7

    add-long v7, v15, v5

    const/16 v9, 0x27

    invoke-static {v5, v6, v9, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v12, v10

    const/16 v15, 0x2c

    invoke-static {v10, v11, v15, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    move-wide/from16 v16, v10

    add-long v9, v21, v5

    const/16 v11, 0x9

    invoke-static {v5, v6, v11, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v7, v0

    const/16 v11, 0x36

    invoke-static {v0, v1, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v21, v0

    add-long v0, v19, v2

    const/16 v11, 0x38

    invoke-static {v2, v3, v11, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    aget-wide v19, v31, v14

    add-long v9, v9, v19

    add-int/lit8 v19, v14, 0x1

    aget-wide v24, v31, v19

    move-wide/from16 v37, v12

    add-long v11, v16, v24

    add-int/lit8 v16, v14, 0x2

    aget-wide v24, v31, v16

    add-long v7, v7, v24

    add-int/lit8 v17, v14, 0x3

    aget-wide v24, v31, v17

    add-long v2, v2, v24

    add-int/lit8 v20, v14, 0x4

    aget-wide v24, v31, v20

    add-long v0, v0, v24

    add-int/lit8 v24, v14, 0x5

    aget-wide v39, v31, v24

    aget-wide v41, v33, v29

    add-long v39, v39, v41

    move/from16 v32, v14

    add-long v13, v39, v21

    add-int/lit8 v21, v32, 0x6

    aget-wide v39, v31, v21

    add-int/lit8 v22, v29, 0x1

    aget-wide v41, v33, v22

    add-long v39, v39, v41

    add-long v39, v39, v37

    add-int/lit8 v37, v32, 0x7

    aget-wide v41, v31, v37

    move-wide/from16 v43, v0

    int-to-long v0, v4

    add-long v41, v41, v0

    add-long v5, v41, v5

    add-long/2addr v9, v11

    const/16 v15, 0x27

    invoke-static {v11, v12, v15, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    add-long/2addr v7, v2

    const/16 v15, 0x1e

    invoke-static {v2, v3, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v41, v0

    add-long v0, v43, v13

    const/16 v15, 0x22

    invoke-static {v13, v14, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v43, v0

    add-long v0, v39, v5

    const/16 v15, 0x18

    invoke-static {v5, v6, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v7, v11

    const/16 v15, 0xd

    invoke-static {v11, v12, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v39, v0

    add-long v0, v43, v5

    const/16 v15, 0x32

    invoke-static {v5, v6, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    move-wide/from16 v43, v0

    add-long v0, v39, v13

    const/16 v15, 0xa

    invoke-static {v13, v14, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    add-long/2addr v9, v2

    const/16 v15, 0x11

    invoke-static {v2, v3, v15, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v39, v0

    add-long v0, v43, v11

    const/16 v15, 0x19

    invoke-static {v11, v12, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v43, v0

    add-long v0, v39, v2

    const/16 v15, 0x1d

    invoke-static {v2, v3, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long/2addr v9, v13

    const/16 v15, 0x27

    invoke-static {v13, v14, v15, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    add-long/2addr v7, v5

    const/16 v15, 0x2b

    invoke-static {v5, v6, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v0, v11

    const/16 v15, 0x8

    invoke-static {v11, v12, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    add-long/2addr v9, v5

    move/from16 v38, v15

    const/16 v15, 0x23

    invoke-static {v5, v6, v15, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v7, v13

    const/16 v15, 0x38

    invoke-static {v13, v14, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v39, v0

    add-long v0, v43, v2

    const/16 v15, 0x16

    invoke-static {v2, v3, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    aget-wide v43, v31, v19

    add-long v9, v9, v43

    aget-wide v15, v31, v16

    add-long/2addr v11, v15

    aget-wide v15, v31, v17

    add-long/2addr v7, v15

    aget-wide v15, v31, v20

    add-long/2addr v2, v15

    aget-wide v15, v31, v24

    add-long v19, v0, v15

    aget-wide v0, v31, v21

    aget-wide v15, v33, v22

    add-long/2addr v0, v15

    add-long/2addr v0, v13

    aget-wide v13, v31, v37

    add-int/lit8 v29, v29, 0x2

    aget-wide v15, v33, v29

    add-long/2addr v13, v15

    add-long v21, v13, v39

    add-int/lit8 v14, v32, 0x8

    aget-wide v13, v31, v14

    add-long v13, v13, v41

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    add-long/2addr v5, v13

    add-int/lit8 v4, v4, 0x2

    move-wide/from16 v24, v7

    move-wide/from16 v16, v9

    move-wide v10, v11

    move/from16 v15, v34

    move-wide v8, v0

    move-wide v12, v5

    move-object/from16 v1, v31

    move-object/from16 v0, v33

    const/16 v5, 0x11

    move-wide v6, v2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    goto/16 :goto_0

    :cond_0
    move-wide v2, v6

    move/from16 v34, v15

    aput-wide v16, p2, v27

    aput-wide v10, p2, v28

    aput-wide v24, p2, p1

    aput-wide v2, p2, v34

    aput-wide v19, p2, v18

    aput-wide v8, p2, p0

    aput-wide v21, p2, v23

    aput-wide v12, p2, v26

    return-void

    :cond_1
    invoke-static {}, Lct0;->c()V

    return-void

    :cond_2
    invoke-static {}, Lct0;->c()V

    return-void
.end method
