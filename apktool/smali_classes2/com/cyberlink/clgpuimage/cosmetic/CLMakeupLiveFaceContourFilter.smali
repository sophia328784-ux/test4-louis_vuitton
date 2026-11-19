.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;
.super Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$d;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$c;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$b;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;
    }
.end annotation


# static fields
.field public static final J5:[F


# instance fields
.field public final C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

.field public final D5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

.field public E5:I

.field public F5:I

.field public G5:I

.field public H5:F

.field public final I5:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->J5:[F

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

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$b;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$b;->b:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$c;->a:[C

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$c;->b:[C

    invoke-static {v3}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$d;->a:[C

    invoke-static {v4}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->D5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->E5:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->F5:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->G5:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->H5:F

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->I5:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public final R()V
    .locals 37

    move-object/from16 v0, p0

    invoke-super {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->R()V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->I5:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-boolean v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->k0:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->A5:[F

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->J5:[F

    :goto_0
    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->o0:I

    const/16 v4, 0x5a

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    if-ne v3, v4, :cond_1

    new-array v3, v10, [F

    aget v4, v2, v6

    aput v4, v3, v8

    aget v4, v2, v13

    aput v4, v3, v9

    aget v4, v2, v8

    aput v4, v3, v7

    aget v4, v2, v9

    aput v4, v3, v5

    aget v4, v2, v12

    aput v4, v3, v6

    aget v4, v2, v11

    aput v4, v3, v13

    aget v4, v2, v7

    aput v4, v3, v12

    aget v2, v2, v5

    aput v2, v3, v11

    goto :goto_1

    :cond_1
    const/16 v4, 0xb4

    if-ne v3, v4, :cond_2

    new-array v3, v10, [F

    aget v4, v2, v12

    aput v4, v3, v8

    aget v4, v2, v11

    aput v4, v3, v9

    aget v4, v2, v6

    aput v4, v3, v7

    aget v4, v2, v13

    aput v4, v3, v5

    aget v4, v2, v7

    aput v4, v3, v6

    aget v4, v2, v5

    aput v4, v3, v13

    aget v4, v2, v8

    aput v4, v3, v12

    aget v2, v2, v9

    aput v2, v3, v11

    goto :goto_1

    :cond_2
    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    new-array v3, v10, [F

    aget v4, v2, v7

    aput v4, v3, v8

    aget v4, v2, v5

    aput v4, v3, v9

    aget v4, v2, v12

    aput v4, v3, v7

    aget v4, v2, v11

    aput v4, v3, v5

    aget v4, v2, v8

    aput v4, v3, v6

    aget v4, v2, v9

    aput v4, v3, v13

    aget v4, v2, v6

    aput v4, v3, v12

    aget v2, v2, v13

    aput v2, v3, v11

    goto :goto_1

    :cond_3
    new-array v3, v10, [F

    aget v4, v2, v8

    aput v4, v3, v8

    aget v4, v2, v9

    aput v4, v3, v9

    aget v4, v2, v7

    aput v4, v3, v7

    aget v4, v2, v5

    aput v4, v3, v5

    aget v4, v2, v6

    aput v4, v3, v6

    aget v4, v2, v13

    aput v4, v3, v13

    aget v4, v2, v12

    aput v4, v3, v12

    aget v2, v2, v11

    aput v2, v3, v11

    :goto_1
    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v2, "inputSkinToneMaskCoordinate"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v10

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->I5:Ljava/nio/FloatBuffer;

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->D5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "skin_mask_roi"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iget v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_left:F

    iget v10, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_top:F

    iget v11, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_right:F

    iget v12, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_bottom:F

    invoke-static {v3, v4, v10, v11, v12}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "skin_region_roi_rect_rotated_cos_sin"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iget v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_cos:F

    iget v10, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_sin:F

    invoke-static {v3, v4, v10}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "skin_region_roi_width_height_resized_ratio"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iget v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    iget v10, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    int-to-float v10, v10

    div-float/2addr v10, v2

    invoke-static {v3, v4, v10}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "dynamic_range_start"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    iget v10, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_luma:F

    invoke-static {v3, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v10, "dynamic_range_end"

    invoke-static {v3, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iget v4, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_luma:F

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

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

    aget-object v3, v3, v8

    check-cast v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;

    iget v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->a:I

    iget v10, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v11, "highlight_color"

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v10

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

    invoke-static {v10, v11, v13, v4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v10, "highlight_glow_map"

    invoke-static {v4, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v4, 0x84c3

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->E5:I

    const/16 v10, 0x2803

    const/16 v11, 0x2802

    const/16 v13, 0x2801

    const/16 v14, 0x2800

    const/4 v15, -0x1

    move/from16 v16, v7

    const v7, 0x47012f00    # 33071.0f

    move/from16 v17, v12

    const v12, 0x46180400    # 9729.0f

    const/16 v6, 0xde1

    if-eq v4, v15, :cond_4

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_2

    :cond_4
    new-array v4, v9, [I

    invoke-static {v9, v4, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v4, v4, v8

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->E5:I

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v14, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v13, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v11, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v10, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    :goto_2
    iget-object v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->b:[B

    array-length v10, v4

    const/16 v26, 0x1401

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    const/16 v19, 0xde1

    const/16 v20, 0x0

    const/16 v21, 0x1906

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x1906

    move/from16 v22, v10

    invoke-static/range {v19 .. v27}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v10, "highlight_intensity"

    invoke-static {v4, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iget v10, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->c:F

    invoke-static {v4, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v10, "highlight_shimmer_intensity"

    invoke-static {v4, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iget v10, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->f:F

    invoke-static {v4, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->m:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v17

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v17

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v17

    new-array v5, v5, [F

    aput v10, v5, v8

    aput v7, v5, v9

    aput v4, v5, v16

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v7, "multiply_color"

    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    aget v7, v5, v8

    aget v10, v5, v9

    aget v11, v5, v16

    invoke-static {v4, v7, v10, v11}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    const v4, 0x3e991687    # 0.299f

    aget v7, v5, v8

    mul-float/2addr v7, v4

    const v4, 0x3f1645a2    # 0.587f

    aget v10, v5, v9

    mul-float/2addr v10, v4

    add-float/2addr v10, v7

    const v4, 0x3de978d5    # 0.114f

    aget v5, v5, v16

    mul-float/2addr v5, v4

    add-float/2addr v5, v10

    const v4, -0x3faae148    # -3.33f

    mul-float/2addr v5, v4

    const v4, 0x4021eb85    # 2.53f

    add-float/2addr v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v7, "contour_multiply_weight"

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v5, "multiply_intensity"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iget v5, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->n:F

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v9}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v4

    const/16 v5, 0xcf5

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iget v7, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v10, "skin_forehead_neck_mask"

    invoke-static {v7, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    const/4 v10, 0x4

    invoke-static {v7, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v7, 0x84c4

    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->F5:I

    if-eq v7, v15, :cond_5

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_3

    :cond_5
    new-array v7, v9, [I

    invoke-static {v9, v7, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v7, v7, v8

    iput v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->F5:I

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v14, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v13, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v7, 0x2802

    const v10, 0x47012f00    # 33071.0f

    invoke-static {v6, v7, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v7, 0x2803

    invoke-static {v6, v7, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    :goto_3
    iget-object v7, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->forehead_neck_mask:[B

    if-eqz v7, :cond_6

    iget v10, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v11, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    const/16 v35, 0x1401

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v36

    const/16 v28, 0xde1

    const/16 v29, 0x0

    const/16 v30, 0x1906

    const/16 v33, 0x0

    const/16 v34, 0x1906

    move/from16 v31, v10

    move/from16 v32, v11

    invoke-static/range {v28 .. v36}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_6
    invoke-virtual {v4, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    invoke-static {v9}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iget v7, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v10, "skin_map"

    invoke-static {v7, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    const/4 v10, 0x4

    invoke-static {v7, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v7, 0x84c5

    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->G5:I

    if-eq v7, v15, :cond_7

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_4

    :cond_7
    new-array v7, v9, [I

    invoke-static {v9, v7, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v7, v7, v8

    iput v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->G5:I

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v14, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v13, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v7, 0x2802

    const v10, 0x47012f00    # 33071.0f

    invoke-static {v6, v7, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v7, 0x2803

    invoke-static {v6, v7, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    :goto_4
    iget-object v6, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_probability_mask:[B

    if-eqz v6, :cond_8

    iget v13, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v14, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    const/16 v17, 0x1401

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v18

    const/16 v10, 0xde1

    const/4 v11, 0x0

    const/16 v12, 0x1906

    const/4 v15, 0x0

    const/16 v16, 0x1906

    invoke-static/range {v10 .. v18}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_8
    invoke-virtual {v4, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v5, "highlight_dewy_intensity"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iget v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->h:F

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v4, "skin_forehead_boundary"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iget v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_forehead_face_boundary:F

    div-float/2addr v1, v2

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v2, "grid_roi_start"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    invoke-static {v1, v9, v2, v8}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v2, "grid_roi_end"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    invoke-static {v1, v9, v0, v8}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method

.method public final T(Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;)V
    .locals 5

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->e0()V

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

    check-cast p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "highlight_roi_start_x"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->d:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "highlight_roi_start_y"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->e:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "highlight_texture_height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->k:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "highlight_texture_width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->l:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->j:I

    const/16 v1, 0xde1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->j:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v4, "highlight_texture"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->g:I

    if-eq v0, v3, :cond_1

    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->g:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v2, "highlight_shimmer_texture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->i:I

    if-eq v0, v3, :cond_2

    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->i:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v2, "highlight_dewy_texture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_2
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v2, "multiply_roi_start_x"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->o:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v2, "multiply_roi_start_y"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->p:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v2, "multiply_texture_height"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->r:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v2, "multiply_texture_width"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->s:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->q:I

    if-eq v0, v3, :cond_3

    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->q:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "multiply_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_3
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "yaw_degree"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->H5:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v0, "glow_intensity"

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->t:F

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public final k0(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;)V
    .locals 5

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->h0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->is_valid:Z

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->i0:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->pose_parameters:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->H5:F

    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->rotation:I

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->j0:I

    iget-boolean v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->is_flip:Z

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->k0:Z

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->l0:[F

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->camera_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->m0:[F

    const/16 v3, 0x9

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->normal_pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->n0:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    if-eqz v1, :cond_3

    aget-object v1, v1, v4

    if-eqz v1, :cond_3

    iget-boolean v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->is_texcoord_changed:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->texcoord_array:[F

    :goto_1
    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->vertex_array:[F

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->normal_array:[F

    invoke-virtual {v1, v3, p1, v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->UpdateCoordinates([F[F[F)V

    :cond_3
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->D5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

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

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->E5:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->E5:I

    :cond_0
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->F5:I

    if-eq v0, v3, :cond_1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->F5:I

    :cond_1
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->G5:I

    if-eq v0, v3, :cond_2

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;->G5:I

    :cond_2
    return-void
.end method
