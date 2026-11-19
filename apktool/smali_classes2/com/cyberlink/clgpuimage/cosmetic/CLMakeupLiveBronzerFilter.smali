.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;
.super Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$d;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$c;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$e;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$b;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;
    }
.end annotation


# static fields
.field public static final I5:[F


# instance fields
.field public final C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

.field public final D5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

.field public E5:I

.field public F5:I

.field public G5:I

.field public final H5:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->I5:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$b;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$b;->b:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$e;->a:[C

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$c;->a:[C

    invoke-static {v3}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$d;->a:[C

    invoke-static {v4}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->D5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->E5:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->F5:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->G5:I

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->H5:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public final R()V
    .locals 27

    move-object/from16 v0, p0

    invoke-super {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->R()V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->H5:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-boolean v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->k0:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->A5:[F

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->I5:[F

    :goto_0
    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->o0:I

    const/16 v4, 0x5a

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    if-ne v3, v4, :cond_1

    new-array v3, v11, [F

    aget v4, v2, v5

    aput v4, v3, v10

    aget v4, v2, v6

    aput v4, v3, v9

    aget v4, v2, v10

    aput v4, v3, v8

    aget v4, v2, v9

    aput v4, v3, v7

    aget v4, v2, v13

    aput v4, v3, v5

    aget v4, v2, v12

    aput v4, v3, v6

    aget v4, v2, v8

    aput v4, v3, v13

    aget v2, v2, v7

    aput v2, v3, v12

    goto :goto_1

    :cond_1
    const/16 v4, 0xb4

    if-ne v3, v4, :cond_2

    new-array v3, v11, [F

    aget v4, v2, v13

    aput v4, v3, v10

    aget v4, v2, v12

    aput v4, v3, v9

    aget v4, v2, v5

    aput v4, v3, v8

    aget v4, v2, v6

    aput v4, v3, v7

    aget v4, v2, v8

    aput v4, v3, v5

    aget v4, v2, v7

    aput v4, v3, v6

    aget v4, v2, v10

    aput v4, v3, v13

    aget v2, v2, v9

    aput v2, v3, v12

    goto :goto_1

    :cond_2
    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    new-array v3, v11, [F

    aget v4, v2, v8

    aput v4, v3, v10

    aget v4, v2, v7

    aput v4, v3, v9

    aget v4, v2, v13

    aput v4, v3, v8

    aget v4, v2, v12

    aput v4, v3, v7

    aget v4, v2, v10

    aput v4, v3, v5

    aget v4, v2, v9

    aput v4, v3, v6

    aget v4, v2, v5

    aput v4, v3, v13

    aget v2, v2, v6

    aput v2, v3, v12

    goto :goto_1

    :cond_3
    new-array v3, v11, [F

    aget v4, v2, v10

    aput v4, v3, v10

    aget v4, v2, v9

    aput v4, v3, v9

    aget v4, v2, v8

    aput v4, v3, v8

    aget v4, v2, v7

    aput v4, v3, v7

    aget v4, v2, v5

    aput v4, v3, v5

    aget v4, v2, v6

    aput v4, v3, v6

    aget v4, v2, v13

    aput v4, v3, v13

    aget v2, v2, v12

    aput v2, v3, v12

    :goto_1
    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v2, "inputSkinToneMaskCoordinate"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v11

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->H5:Ljava/nio/FloatBuffer;

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->D5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "skin_mask_roi"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iget v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_left:F

    iget v11, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_top:F

    iget v12, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_right:F

    iget v13, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_bottom:F

    invoke-static {v3, v4, v11, v12, v13}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "skin_region_roi_rect_rotated_cos_sin"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iget v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_cos:F

    iget v11, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_sin:F

    invoke-static {v3, v4, v11}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "skin_region_roi_width_height_resized_ratio"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iget v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    iget v11, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    int-to-float v11, v11

    div-float/2addr v11, v2

    invoke-static {v3, v4, v11}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "frame_buffer_width"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v4, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "frame_buffer_height"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v4, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    aget-object v3, v3, v10

    check-cast v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;

    iget v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;->b:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v12

    new-array v14, v5, [F

    aput v11, v14, v10

    aput v13, v14, v9

    aput v4, v14, v8

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v14, v7

    aget v11, v14, v10

    const v13, 0x3e991687    # 0.299f

    mul-float/2addr v13, v11

    aget v15, v14, v9

    const v16, 0x3f1645a2    # 0.587f

    mul-float v16, v16, v15

    add-float v16, v16, v13

    aget v13, v14, v8

    const v14, 0x3de978d5    # 0.114f

    mul-float/2addr v14, v13

    add-float v14, v14, v16

    const v16, -0x41d2f1aa    # -0.169f

    mul-float v16, v16, v11

    const v17, 0x3ea978d5    # 0.331f

    mul-float v17, v17, v15

    sub-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v18, v13, v17

    add-float v18, v18, v16

    mul-float v11, v11, v17

    const v16, 0x3ed6872b    # 0.419f

    mul-float v15, v15, v16

    sub-float/2addr v11, v15

    const v15, 0x3da5e354    # 0.081f

    mul-float/2addr v13, v15

    sub-float/2addr v11, v13

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    iget v15, v13, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_luma:F

    iget v13, v13, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_luma:F

    sub-float/2addr v13, v15

    mul-float/2addr v13, v14

    add-float/2addr v13, v15

    mul-float/2addr v13, v4

    const v14, 0x3a6bedfa    # 9.0E-4f

    mul-float v14, v14, v18

    sub-float v14, v13, v14

    const v15, 0x3fb36ae8    # 1.4017f

    mul-float/2addr v15, v11

    add-float/2addr v15, v14

    invoke-static {v15, v4}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    const v16, 0x3eaff972    # 0.3437f

    mul-float v16, v16, v18

    sub-float v16, v13, v16

    const v17, 0x3f36d5d0    # 0.7142f

    mul-float v17, v17, v11

    move/from16 v19, v8

    sub-float v8, v16, v17

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v8, v15}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const v16, 0x3fe2d42c    # 1.7721f

    mul-float v18, v18, v16

    add-float v18, v18, v13

    const v13, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v11, v13

    add-float v11, v11, v18

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, v15}, Ljava/lang/Math;->max(FF)F

    move-result v4

    new-array v11, v7, [F

    aput v14, v11, v10

    aput v8, v11, v9

    aput v4, v11, v19

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v8, "color"

    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    aget v8, v11, v10

    aget v13, v11, v9

    aget v11, v11, v19

    invoke-static {v4, v8, v13, v11}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v8, "enable_bronzer"

    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iget v8, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;->a:F

    cmpl-float v8, v8, v15

    if-lez v8, :cond_4

    move v8, v9

    goto :goto_2

    :cond_4
    move v8, v10

    :goto_2
    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v8, "skin_forehead_boundary"

    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iget v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_forehead_face_boundary:F

    div-float/2addr v8, v2

    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "skin_y_cb_cr_average"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iget v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average:F

    div-float/2addr v4, v12

    iget v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_cb_average:F

    div-float/2addr v8, v12

    iget v11, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_cr_average:F

    div-float/2addr v11, v12

    invoke-static {v2, v4, v8, v11}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "step_3D_x"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v4, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    int-to-float v4, v4

    const v8, 0x3f2aaae3

    div-float v4, v8, v4

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "step_3D_y"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v4, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    int-to-float v4, v4

    div-float/2addr v8, v4

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "grid_roi_start"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    invoke-static {v2, v9, v4, v10}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "grid_roi_end"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    invoke-static {v2, v9, v4, v10}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "bronzer_glow_table_texture"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v2, 0x84c3

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->E5:I

    const/16 v4, 0x2803

    const/16 v7, 0x2802

    const/16 v8, 0x2801

    const/16 v11, 0x2800

    const/4 v12, -0x1

    const v13, 0x47012f00    # 33071.0f

    const v14, 0x46180400    # 9729.0f

    const/16 v15, 0xde1

    if-eq v2, v12, :cond_5

    invoke-static {v15, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_3

    :cond_5
    new-array v2, v9, [I

    invoke-static {v9, v2, v10}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v2, v10

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->E5:I

    invoke-static {v15, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v15, v11, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v15, v8, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v15, v7, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v15, v4, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    :goto_3
    iget-object v2, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;->c:[B

    array-length v3, v2

    const/16 v23, 0x1401

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v24

    const/16 v16, 0xde1

    const/16 v17, 0x0

    const/16 v18, 0x1906

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1906

    move/from16 v19, v3

    invoke-static/range {v16 .. v24}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v9}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    const/16 v3, 0xcf5

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-static {v3, v9}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v6, "skin_forehead_neck_mask"

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v3, 0x84c4

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->F5:I

    if-eq v3, v12, :cond_6

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_4

    :cond_6
    new-array v3, v9, [I

    invoke-static {v9, v3, v10}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v3, v10

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->F5:I

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v15, v11, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v15, v8, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v15, v7, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v15, v4, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    :goto_4
    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->forehead_neck_mask:[B

    if-eqz v3, :cond_7

    iget v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v6, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    const/16 v25, 0x1401

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    const/16 v18, 0xde1

    const/16 v19, 0x0

    const/16 v20, 0x1906

    const/16 v23, 0x0

    const/16 v24, 0x1906

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-static/range {v18 .. v26}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_7
    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v5, "skinMapTexture"

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    const/4 v5, 0x5

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v3, 0x84c5

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->G5:I

    if-eq v3, v12, :cond_8

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_5

    :cond_8
    new-array v3, v9, [I

    invoke-static {v9, v3, v10}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v3, v10

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->G5:I

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v15, v11, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v15, v8, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v15, v7, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v15, v4, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    :goto_5
    iget-object v0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_probability_mask:[B

    if-eqz v0, :cond_9

    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    const/16 v24, 0x1401

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v25

    const/16 v17, 0xde1

    const/16 v18, 0x0

    const/16 v19, 0x1906

    const/16 v22, 0x0

    const/16 v23, 0x1906

    move/from16 v21, v1

    move/from16 v20, v3

    invoke-static/range {v17 .. v25}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_9
    invoke-virtual {v2, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    const/16 v1, 0xcf5

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    return-void
.end method

.method public final T(Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;)V
    .locals 4

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->j0:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->n0:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->m0:[F

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->l0:[F

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->N(I[F[F[F)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->O0:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->y0:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->P0:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->z0:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->Q0:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->A0:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    check-cast p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "roi_start_x"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;->d:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "roi_start_y"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;->e:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "texture_height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;->g:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "texture_width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;->h:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "intensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;->a:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$a;->f:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string p1, "bronzer_texture"

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    return-void
.end method

.method public final k0(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;)V
    .locals 5

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->h0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;->is_valid:Z

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->i0:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;->rotation:I

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->j0:I

    iget-boolean v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;->is_flip:Z

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->k0:Z

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;->pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->l0:[F

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;->camera_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->m0:[F

    const/16 v3, 0x9

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;->normal_pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->n0:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    if-eqz v1, :cond_3

    aget-object v1, v1, v4

    if-eqz v1, :cond_3

    iget-boolean v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;->is_texcoord_changed:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;->texcoord_array:[F

    :goto_1
    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;->vertex_array:[F

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter$LiveBronzerMetadata;->normal_array:[F

    invoke-virtual {v1, v3, p1, v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->UpdateCoordinates([F[F[F)V

    :cond_3
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->D5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-virtual {p1, p3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->C0:Z

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->onDestroy()V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->E5:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->E5:I

    :cond_0
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->F5:I

    if-eq v0, v3, :cond_1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->F5:I

    :cond_1
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->G5:I

    if-eq v0, v3, :cond_2

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBronzerFilter;->G5:I

    :cond_2
    return-void
.end method
