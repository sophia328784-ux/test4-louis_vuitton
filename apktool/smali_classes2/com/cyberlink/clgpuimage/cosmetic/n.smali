.class public final Lcom/cyberlink/clgpuimage/cosmetic/n;
.super Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/n$c;,
        Lcom/cyberlink/clgpuimage/cosmetic/n$b;,
        Lcom/cyberlink/clgpuimage/cosmetic/n$a;
    }
.end annotation


# static fields
.field public static final F5:[F


# instance fields
.field public final C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

.field public D5:I

.field public final E5:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/n;->F5:[F

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
    .locals 4

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/n$b;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/n$b;->b:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/n$c;->a:[C

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/n$c;->b:[C

    invoke-static {v3}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/n;->C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/n;->D5:I

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/n;->E5:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public final R()V
    .locals 13

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->R()V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/n;->E5:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->k0:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->A5:[F

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/n;->F5:[F

    :goto_0
    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->o0:I

    const/16 v3, 0x5a

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x5

    if-ne v2, v3, :cond_1

    new-array v2, v7, [F

    aget v3, v1, v4

    aput v3, v2, v6

    aget v3, v1, v12

    aput v3, v2, v5

    aget v3, v1, v6

    aput v3, v2, v11

    aget v3, v1, v5

    aput v3, v2, v10

    aget v3, v1, v9

    aput v3, v2, v4

    aget v3, v1, v8

    aput v3, v2, v12

    aget v3, v1, v11

    aput v3, v2, v9

    aget v1, v1, v10

    aput v1, v2, v8

    goto :goto_1

    :cond_1
    const/16 v3, 0xb4

    if-ne v2, v3, :cond_2

    new-array v2, v7, [F

    aget v3, v1, v9

    aput v3, v2, v6

    aget v3, v1, v8

    aput v3, v2, v5

    aget v3, v1, v4

    aput v3, v2, v11

    aget v3, v1, v12

    aput v3, v2, v10

    aget v3, v1, v11

    aput v3, v2, v4

    aget v3, v1, v10

    aput v3, v2, v12

    aget v3, v1, v6

    aput v3, v2, v9

    aget v1, v1, v5

    aput v1, v2, v8

    goto :goto_1

    :cond_2
    const/16 v3, 0x10e

    if-ne v2, v3, :cond_3

    new-array v2, v7, [F

    aget v3, v1, v11

    aput v3, v2, v6

    aget v3, v1, v10

    aput v3, v2, v5

    aget v3, v1, v9

    aput v3, v2, v11

    aget v3, v1, v8

    aput v3, v2, v10

    aget v3, v1, v6

    aput v3, v2, v4

    aget v3, v1, v5

    aput v3, v2, v12

    aget v3, v1, v4

    aput v3, v2, v9

    aget v1, v1, v12

    aput v1, v2, v8

    goto :goto_1

    :cond_3
    new-array v2, v7, [F

    aget v3, v1, v6

    aput v3, v2, v6

    aget v3, v1, v5

    aput v3, v2, v5

    aget v3, v1, v11

    aput v3, v2, v11

    aget v3, v1, v10

    aput v3, v2, v10

    aget v3, v1, v4

    aput v3, v2, v4

    aget v3, v1, v12

    aput v3, v2, v12

    aget v3, v1, v9

    aput v3, v2, v9

    aget v1, v1, v8

    aput v1, v2, v8

    :goto_1
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v1, "inputSkinToneMaskCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v7

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/cyberlink/clgpuimage/cosmetic/n;->E5:Ljava/nio/FloatBuffer;

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/n;->C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v3, "skin_mask_roi"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_left:F

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_top:F

    iget v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_right:F

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_bottom:F

    invoke-static {v2, v3, v7, v8, v9}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v3, "skin_region_roi_rect_rotated_cos_sin"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_cos:F

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_sin:F

    invoke-static {v2, v3, v7}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v3, "skin_region_roi_width_height_resized_ratio"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    int-to-float v7, v7

    div-float/2addr v7, v1

    invoke-static {v2, v3, v7}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v3, "frame_buffer_width"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v3, v3, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v3, "frame_buffer_height"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v3, v3, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v3, "skin_forehead_neck_mask"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v2, 0x84c4

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/n;->D5:I

    const/4 v3, -0x1

    const/16 v4, 0xde1

    if-eq v2, v3, :cond_4

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_2

    :cond_4
    new-array v2, v5, [I

    invoke-static {v5, v2, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v2, v6

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/n;->D5:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2801

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    :goto_2
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->forehead_neck_mask:[B

    if-eqz v2, :cond_5

    iget v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    const/16 v10, 0x1401

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1906

    const/4 v8, 0x0

    const/16 v9, 0x1906

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_5
    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v2, "skin_forehead_boundary"

    invoke-static {p0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_forehead_face_boundary:F

    div-float/2addr v0, v1

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

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

    check-cast p1, Lcom/cyberlink/clgpuimage/cosmetic/n$a;

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "enable_highlight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "highlight_roi_start_x"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "highlight_roi_start_y"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "highlight_texture_height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "highlight_texture_width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v4, "highlight_texture"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v2, "enable_multiply"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v2, "multiply_roi_start_x"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v2, "multiply_roi_start_y"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v2, "multiply_texture_height"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v2, "multiply_texture_width"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const p1, 0x84c3

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string p1, "multiply_texture"

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public final k0(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;)V
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
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/n;->C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;)V

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

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/n;->D5:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/n;->D5:I

    :cond_0
    return-void
.end method
