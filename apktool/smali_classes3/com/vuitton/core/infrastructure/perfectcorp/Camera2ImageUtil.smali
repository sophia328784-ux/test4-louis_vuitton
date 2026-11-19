.class abstract Lcom/vuitton/core/infrastructure/perfectcorp/Camera2ImageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/media/Image;)[B
    .locals 19

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported image format "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    new-array v6, v6, [B

    mul-int v7, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v8

    invoke-static {v8}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v8

    mul-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x8

    new-array v8, v8, [B

    move v9, v2

    move v10, v9

    move v11, v3

    :goto_1
    array-length v12, v5

    if-ge v9, v12, :cond_9

    if-eqz v9, :cond_3

    const/4 v12, 0x2

    if-eq v9, v3, :cond_2

    if-eq v9, v12, :cond_1

    goto :goto_3

    :cond_1
    move v10, v7

    :goto_2
    move v11, v12

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v7, 0x1

    goto :goto_2

    :cond_3
    move v10, v2

    move v11, v3

    :goto_3
    aget-object v12, v5, v9

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    aget-object v13, v5, v9

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    aget-object v14, v5, v9

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    if-nez v9, :cond_4

    move v15, v2

    goto :goto_4

    :cond_4
    move v15, v3

    :goto_4
    shr-int v2, v1, v15

    shr-int v3, v4, v15

    move/from16 v17, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    shr-int/2addr v1, v15

    mul-int/2addr v1, v13

    move/from16 p0, v1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    shr-int/2addr v1, v15

    mul-int/2addr v1, v14

    add-int v1, v1, p0

    invoke-virtual {v12, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_8

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    if-ne v11, v15, :cond_5

    invoke-virtual {v12, v8, v10, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v10, v2

    move-object/from16 v16, v0

    move/from16 p0, v15

    move v15, v2

    goto :goto_7

    :cond_5
    add-int/lit8 v16, v2, -0x1

    mul-int v16, v16, v14

    move/from16 p0, v15

    add-int/lit8 v15, v16, 0x1

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-virtual {v12, v6, v0, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_6
    if-ge v0, v2, :cond_6

    mul-int v18, v0, v14

    aget-byte v18, v6, v18

    aput-byte v18, v8, v10

    add-int/2addr v10, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    :goto_7
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_7

    invoke-virtual {v12}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v13

    sub-int/2addr v0, v15

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v16

    goto :goto_5

    :cond_8
    move-object/from16 v16, v0

    const/16 p0, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p0

    move/from16 v1, v17

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_9
    return-object v8
.end method
