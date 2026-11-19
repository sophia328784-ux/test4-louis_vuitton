.class public abstract Lcom/perfectcorp/perfectlib/makeupcam/utility/CameraUtils$PictureTaken;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/Bitmap;)[B
    .locals 27

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v8, v3, v7

    new-array v1, v8, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v0, v0, -0x2

    add-int/lit8 v2, v7, 0x1

    and-int/lit8 v2, v2, -0x2

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    move v10, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v5, v7, :cond_8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v3, :cond_7

    if-ge v9, v8, :cond_7

    aget v12, v1, v9

    shr-int/lit8 v13, v12, 0x10

    const/16 v14, 0xff

    and-int/2addr v13, v14

    shr-int/lit8 v15, v12, 0x8

    and-int/2addr v15, v14

    and-int/2addr v12, v14

    move/from16 v16, v5

    int-to-double v4, v13

    const-wide v17, 0x3fd3318fc504816fL    # 0.2999

    mul-double v17, v17, v4

    int-to-double v14, v15

    const-wide v19, 0x3fe2c8b439581062L    # 0.587

    mul-double v19, v19, v14

    add-double v19, v19, v17

    move-wide/from16 v21, v14

    int-to-double v13, v12

    const-wide v23, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double v23, v23, v13

    move-object v12, v1

    move-object v15, v2

    add-double v1, v23, v19

    double-to-int v1, v1

    const-wide v18, -0x403a5e353f7ced91L    # -0.169

    mul-double v18, v18, v4

    const-wide v23, 0x3fd52f1a9fbe76c9L    # 0.331

    mul-double v23, v23, v21

    sub-double v18, v18, v23

    const-wide/high16 v23, 0x3fe0000000000000L    # 0.5

    mul-double v25, v13, v23

    add-double v25, v25, v18

    const-wide/high16 v18, 0x4060000000000000L    # 128.0

    move/from16 v20, v3

    add-double v2, v25, v18

    double-to-int v2, v2

    mul-double v4, v4, v23

    const-wide v23, 0x3fdad0e560418937L    # 0.419

    mul-double v21, v21, v23

    sub-double v4, v4, v21

    const-wide v21, 0x3fb4bc6a7ef9db23L    # 0.081

    mul-double v13, v13, v21

    sub-double/2addr v4, v13

    add-double v4, v4, v18

    double-to-int v3, v4

    add-int/lit8 v4, v6, 0x1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    const/16 v13, 0xff

    if-le v1, v13, :cond_1

    const/16 v1, 0xff

    :cond_1
    :goto_2
    int-to-byte v1, v1

    aput-byte v1, v15, v6

    rem-int/lit8 v5, v16, 0x2

    if-nez v5, :cond_6

    rem-int/lit8 v1, v11, 0x2

    if-nez v1, :cond_6

    add-int/lit8 v1, v10, 0x1

    if-ge v1, v0, :cond_6

    if-gez v3, :cond_2

    const/4 v3, 0x0

    const/16 v13, 0xff

    goto :goto_3

    :cond_2
    const/16 v13, 0xff

    if-le v3, v13, :cond_3

    move v3, v13

    :cond_3
    :goto_3
    int-to-byte v3, v3

    aput-byte v3, v15, v10

    add-int/lit8 v10, v10, 0x2

    if-gez v2, :cond_4

    const/4 v14, 0x0

    goto :goto_4

    :cond_4
    if-le v2, v13, :cond_5

    move v14, v13

    goto :goto_4

    :cond_5
    move v14, v2

    :goto_4
    int-to-byte v2, v14

    aput-byte v2, v15, v1

    :cond_6
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    move v6, v4

    move-object v1, v12

    move-object v2, v15

    move/from16 v5, v16

    move/from16 v3, v20

    goto/16 :goto_1

    :cond_7
    move-object v12, v1

    move-object v15, v2

    move/from16 v20, v3

    move/from16 v16, v5

    add-int/lit8 v5, v16, 0x1

    move-object v1, v12

    move-object v2, v15

    move/from16 v3, v20

    goto/16 :goto_0

    :cond_8
    move-object v15, v2

    return-object v15
.end method
