.class public abstract Landroidx/compose/ui/platform/InvertMatrixKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "ui"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a([F[F)Z
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    array-length v2, v1

    if-ge v2, v4, :cond_1

    :cond_0
    move/from16 v17, v3

    goto/16 :goto_2

    :cond_1
    aget v2, v0, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    const/4 v6, 0x2

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v9, v0, v8

    const/4 v10, 0x4

    aget v11, v0, v10

    const/4 v12, 0x5

    aget v13, v0, v12

    const/4 v14, 0x6

    aget v15, v0, v14

    const/16 v16, 0x7

    move/from16 v17, v3

    aget v3, v0, v16

    const/16 v18, 0x8

    move/from16 v19, v4

    aget v4, v0, v18

    const/16 v20, 0x9

    move/from16 v21, v6

    aget v6, v0, v20

    const/16 v22, 0xa

    aget v23, v0, v22

    const/16 v24, 0xb

    move/from16 v25, v8

    aget v8, v0, v24

    const/16 v26, 0xc

    move/from16 v27, v10

    aget v10, v0, v26

    const/16 v28, 0xd

    aget v29, v0, v28

    const/16 v30, 0xe

    move/from16 v31, v12

    aget v12, v0, v30

    const/16 v32, 0xf

    aget v0, v0, v32

    mul-float v33, v2, v13

    mul-float v34, v5, v11

    move/from16 v35, v14

    sub-float v14, v33, v34

    mul-float v33, v2, v15

    mul-float v34, v7, v11

    sub-float v1, v33, v34

    mul-float v33, v2, v3

    mul-float v34, v9, v11

    sub-float v33, v33, v34

    mul-float v34, v5, v15

    mul-float v36, v7, v13

    move/from16 v37, v7

    sub-float v7, v34, v36

    mul-float v34, v5, v3

    mul-float v36, v9, v13

    sub-float v34, v34, v36

    mul-float v36, v37, v3

    mul-float v38, v9, v15

    sub-float v36, v36, v38

    mul-float v38, v4, v29

    mul-float v39, v6, v10

    move/from16 v40, v13

    sub-float v13, v38, v39

    mul-float v38, v4, v12

    mul-float v39, v23, v10

    move/from16 v41, v12

    sub-float v12, v38, v39

    mul-float v38, v4, v0

    mul-float v39, v8, v10

    sub-float v38, v38, v39

    mul-float v39, v6, v41

    mul-float v42, v23, v29

    move/from16 v43, v15

    sub-float v15, v39, v42

    mul-float v39, v6, v0

    mul-float v42, v8, v29

    sub-float v39, v39, v42

    mul-float v42, v23, v0

    mul-float v44, v8, v41

    sub-float v42, v42, v44

    mul-float v44, v14, v42

    mul-float v45, v1, v39

    sub-float v44, v44, v45

    mul-float v45, v33, v15

    add-float v45, v45, v44

    mul-float v44, v7, v38

    add-float v44, v44, v45

    mul-float v45, v34, v12

    sub-float v44, v44, v45

    mul-float v45, v36, v13

    add-float v45, v45, v44

    const/16 v44, 0x0

    cmpg-float v44, v45, v44

    if-nez v44, :cond_2

    goto/16 :goto_0

    :cond_2
    const/high16 v46, 0x3f800000    # 1.0f

    move/from16 p0, v14

    div-float v14, v46, v45

    mul-float v45, v40, v42

    mul-float v46, v43, v39

    sub-float v45, v45, v46

    mul-float v46, v3, v15

    add-float v46, v46, v45

    mul-float v46, v46, v14

    aput v46, p1, v17

    move/from16 v45, v4

    neg-float v4, v5

    mul-float v4, v4, v42

    mul-float v46, v37, v39

    add-float v4, v46, v4

    invoke-static {v9, v15, v4, v14}, Lpq0;->a(FFFF)F

    move-result v4

    aput v4, p1, v19

    mul-float v4, v29, v36

    mul-float v46, v41, v34

    sub-float v4, v4, v46

    mul-float v46, v0, v7

    add-float v46, v46, v4

    mul-float v46, v46, v14

    aput v46, p1, v21

    neg-float v4, v6

    mul-float v4, v4, v36

    mul-float v21, v23, v34

    add-float v4, v21, v4

    invoke-static {v8, v7, v4, v14}, Lpq0;->a(FFFF)F

    move-result v4

    aput v4, p1, v25

    neg-float v4, v11

    mul-float v21, v4, v42

    mul-float v25, v43, v38

    move/from16 v46, v4

    add-float v4, v25, v21

    invoke-static {v3, v12, v4, v14}, Lpq0;->a(FFFF)F

    move-result v4

    aput v4, p1, v27

    mul-float v42, v42, v2

    mul-float v4, v37, v38

    sub-float v42, v42, v4

    mul-float v4, v9, v12

    add-float v4, v4, v42

    mul-float/2addr v4, v14

    aput v4, p1, v31

    neg-float v4, v10

    mul-float v21, v4, v36

    mul-float v25, v41, v33

    move/from16 v27, v3

    add-float v3, v25, v21

    invoke-static {v0, v1, v3, v14}, Lpq0;->a(FFFF)F

    move-result v3

    aput v3, p1, v35

    mul-float v3, v45, v36

    mul-float v21, v23, v33

    sub-float v3, v3, v21

    mul-float v21, v8, v1

    add-float v21, v21, v3

    mul-float v21, v21, v14

    aput v21, p1, v16

    mul-float v11, v11, v39

    mul-float v3, v40, v38

    sub-float/2addr v11, v3

    mul-float v3, v27, v13

    add-float/2addr v3, v11

    mul-float/2addr v3, v14

    aput v3, p1, v18

    neg-float v3, v2

    mul-float v3, v3, v39

    mul-float v38, v38, v5

    add-float v3, v38, v3

    invoke-static {v9, v13, v3, v14}, Lpq0;->a(FFFF)F

    move-result v3

    aput v3, p1, v20

    mul-float v10, v10, v34

    mul-float v3, v29, v33

    sub-float/2addr v10, v3

    mul-float v0, v0, p0

    add-float/2addr v0, v10

    mul-float/2addr v0, v14

    aput v0, p1, v22

    move/from16 v0, v45

    neg-float v3, v0

    mul-float v3, v3, v34

    mul-float v33, v33, v6

    add-float v3, v33, v3

    move/from16 v9, p0

    invoke-static {v8, v9, v3, v14}, Lpq0;->a(FFFF)F

    move-result v3

    aput v3, p1, v24

    mul-float v3, v46, v15

    mul-float v8, v40, v12

    add-float/2addr v8, v3

    move/from16 v3, v43

    invoke-static {v3, v13, v8, v14}, Lpq0;->a(FFFF)F

    move-result v3

    aput v3, p1, v26

    mul-float/2addr v2, v15

    mul-float/2addr v5, v12

    sub-float/2addr v2, v5

    mul-float v3, v37, v13

    add-float/2addr v3, v2

    mul-float/2addr v3, v14

    aput v3, p1, v28

    mul-float/2addr v4, v7

    mul-float v29, v29, v1

    add-float v2, v29, v4

    move/from16 v3, v41

    invoke-static {v3, v9, v2, v14}, Lpq0;->a(FFFF)F

    move-result v2

    aput v2, p1, v30

    mul-float v4, v0, v7

    mul-float/2addr v6, v1

    sub-float/2addr v4, v6

    mul-float v23, v23, v9

    add-float v23, v23, v4

    mul-float v23, v23, v14

    aput v23, p1, v32

    :goto_0
    if-nez v44, :cond_3

    move/from16 v3, v19

    goto :goto_1

    :cond_3
    move/from16 v3, v17

    :goto_1
    xor-int/lit8 v0, v3, 0x1

    return v0

    :goto_2
    return v17
.end method
