.class public final Lcom/cyberlink/clgpuimage/cosmetic/m;
.super Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/m$a;
    }
.end annotation


# static fields
.field public static final g6:[F


# instance fields
.field public final C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

.field public final D5:Ljava/nio/FloatBuffer;

.field public E5:I

.field public F5:I

.field public G5:I

.field public H5:I

.field public I5:I

.field public J5:I

.field public K5:I

.field public L5:I

.field public M5:I

.field public N5:I

.field public O5:I

.field public P5:I

.field public Q5:I

.field public R5:I

.field public S5:I

.field public T5:Z

.field public final U5:[F

.field public final V5:[F

.field public final W5:[F

.field public final X5:[F

.field public final Y5:[F

.field public final Z5:[F

.field public a6:F

.field public b6:F

.field public c6:I

.field public d6:I

.field public e6:I

.field public f6:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->g6:[F

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

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$q;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$r;->a:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$s;->a:[C

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/m$a;->a:[C

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/m$a;->b:[C

    invoke-static {v3}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->J5:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->T5:Z

    const/4 v0, 0x4

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->U5:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->V5:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->W5:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->X5:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->Y5:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->Z5:[F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->a6:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->b6:F

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->D5:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public static C([FI)V
    .locals 4

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget p0, p0, v3

    invoke-static {p1, v0, v1, v2, p0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method


# virtual methods
.method public final d0()V
    .locals 18

    move-object/from16 v0, p0

    invoke-super {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->d0()V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->D5:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-boolean v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->k0:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->A5:[F

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/m;->g6:[F

    :goto_0
    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->o0:I

    const/16 v4, 0x5a

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x5

    if-ne v3, v4, :cond_1

    new-array v3, v8, [F

    aget v4, v2, v5

    aput v4, v3, v6

    aget v4, v2, v13

    aput v4, v3, v7

    aget v4, v2, v6

    aput v4, v3, v12

    aget v4, v2, v7

    aput v4, v3, v11

    aget v4, v2, v10

    aput v4, v3, v5

    aget v4, v2, v9

    aput v4, v3, v13

    aget v4, v2, v12

    aput v4, v3, v10

    aget v2, v2, v11

    aput v2, v3, v9

    goto :goto_1

    :cond_1
    const/16 v4, 0xb4

    if-ne v3, v4, :cond_2

    new-array v3, v8, [F

    aget v4, v2, v10

    aput v4, v3, v6

    aget v4, v2, v9

    aput v4, v3, v7

    aget v4, v2, v5

    aput v4, v3, v12

    aget v4, v2, v13

    aput v4, v3, v11

    aget v4, v2, v12

    aput v4, v3, v5

    aget v4, v2, v11

    aput v4, v3, v13

    aget v4, v2, v6

    aput v4, v3, v10

    aget v2, v2, v7

    aput v2, v3, v9

    goto :goto_1

    :cond_2
    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    new-array v3, v8, [F

    aget v4, v2, v12

    aput v4, v3, v6

    aget v4, v2, v11

    aput v4, v3, v7

    aget v4, v2, v10

    aput v4, v3, v12

    aget v4, v2, v9

    aput v4, v3, v11

    aget v4, v2, v6

    aput v4, v3, v5

    aget v4, v2, v7

    aput v4, v3, v13

    aget v4, v2, v5

    aput v4, v3, v10

    aget v2, v2, v13

    aput v2, v3, v9

    goto :goto_1

    :cond_3
    new-array v3, v8, [F

    aget v4, v2, v6

    aput v4, v3, v6

    aget v4, v2, v7

    aput v4, v3, v7

    aget v4, v2, v12

    aput v4, v3, v12

    aget v4, v2, v11

    aput v4, v3, v11

    aget v4, v2, v5

    aput v4, v3, v5

    aget v4, v2, v13

    aput v4, v3, v13

    aget v4, v2, v10

    aput v4, v3, v10

    aget v2, v2, v9

    aput v2, v3, v9

    :goto_1
    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->E5:I

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->D5:Ljava/nio/FloatBuffer;

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->E5:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v7}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    const/16 v2, 0xcf5

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->I5:I

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v3, 0x84c4

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->J5:I

    const/4 v4, -0x1

    const/16 v5, 0xde1

    iget-object v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    if-ne v3, v4, :cond_4

    new-array v3, v7, [I

    invoke-static {v7, v3, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v3, v6

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->J5:I

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v5, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2801

    invoke-static {v5, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v5, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    invoke-static {v5, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v3, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->forehead_neck_mask:[B

    if-eqz v3, :cond_5

    iget v12, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v13, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    const/16 v16, 0x1401

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v17

    goto :goto_2

    :cond_4
    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v3, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->forehead_neck_mask:[B

    if-eqz v3, :cond_5

    iget v12, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v13, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    const/16 v16, 0x1401

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v17

    :goto_2
    const/16 v9, 0xde1

    const/4 v10, 0x0

    const/16 v11, 0x1906

    const/4 v14, 0x0

    const/16 v15, 0x1906

    invoke-static/range {v9 .. v17}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_5
    invoke-virtual {v1, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iget v1, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    iget v2, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->G5:I

    iget v3, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_cos:F

    iget v4, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_sin:F

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->H5:I

    iget v3, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    iget v4, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->F5:I

    iget v3, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_left:F

    iget v4, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_top:F

    iget v5, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_right:F

    iget v9, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_bottom:F

    invoke-static {v2, v3, v4, v5, v9}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->K5:I

    iget v3, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_forehead_face_boundary:F

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->L5:I

    iget-boolean v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->T5:Z

    if-eqz v2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->M5:I

    iget v2, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average:F

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iget v4, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_cb_average:F

    div-float/2addr v4, v3

    iget v5, v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_cr_average:F

    div-float/2addr v5, v3

    invoke-static {v1, v2, v4, v5}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->N5:I

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->U5:[F

    invoke-static {v2, v1}, Lcom/cyberlink/clgpuimage/cosmetic/m;->C([FI)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->O5:I

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->V5:[F

    invoke-static {v2, v1}, Lcom/cyberlink/clgpuimage/cosmetic/m;->C([FI)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->P5:I

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->W5:[F

    invoke-static {v2, v1}, Lcom/cyberlink/clgpuimage/cosmetic/m;->C([FI)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->Q5:I

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->X5:[F

    invoke-static {v2, v1}, Lcom/cyberlink/clgpuimage/cosmetic/m;->C([FI)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->R5:I

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->Y5:[F

    invoke-static {v2, v1}, Lcom/cyberlink/clgpuimage/cosmetic/m;->C([FI)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->S5:I

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->Z5:[F

    invoke-static {v2, v1}, Lcom/cyberlink/clgpuimage/cosmetic/m;->C([FI)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->c6:I

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->a6:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->d6:I

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->b6:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->e6:I

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    invoke-static {v1, v7, v2, v6}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/m;->f6:I

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    invoke-static {v1, v7, v0, v6}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method

.method public final k0(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;)Z
    .locals 8

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->h0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_layer2_valid:Z

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->i0:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->rotation:I

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->j0:I

    iget-boolean v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_flip:Z

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->k0:Z

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->pnp_matrix:[F

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->l0:[F

    const/16 v4, 0xc

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->camera_matrix:[F

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->m0:[F

    const/16 v4, 0x9

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->normal_pnp_matrix:[F

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->n0:[F

    const/16 v4, 0x10

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    if-eqz v1, :cond_1

    array-length v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-lez v3, :cond_3

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    iget-boolean v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_layer2_texcoord_changed:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->texcoord_array:[F

    move v5, v4

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move v5, v2

    :goto_1
    iget-object v6, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->vertex_array:[F

    iget-object v7, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->normal_array:[F

    invoke-virtual {v1, v6, v7, v3}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->UpdateCoordinates([F[F[F)V

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    iget-boolean v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_blend_data_valid:Z

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->T5:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->left_ear_hori_line:[F

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->U5:[F

    const/4 v6, 0x4

    invoke-static {v1, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->left_ear_vert_line:[F

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->V5:[F

    invoke-static {v1, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->left_ear_location_factors:[F

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->W5:[F

    invoke-static {v1, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->right_ear_hori_line:[F

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->X5:[F

    invoke-static {v1, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->right_ear_vert_line:[F

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->Y5:[F

    invoke-static {v1, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->right_ear_location_factors:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->Z5:[F

    invoke-static {p1, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->C5:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;)V

    iget p1, p3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_luma:F

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget p3, p3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_luma:F

    div-float/2addr p3, p2

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->a6:F

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->b6:F

    iput-boolean v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->C0:Z

    monitor-exit v0

    return v5

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->onDestroy()V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->J5:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->J5:I

    :cond_0
    return-void
.end method

.method public final onInit()V
    .locals 2

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->onInit()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputSkinToneMaskCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->E5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_mask_roi"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->F5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_region_roi_rect_rotated_cos_sin"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->G5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_region_roi_width_height_resized_ratio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->H5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "forehead_neck_mask"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->I5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_mask_forehead_face_boundary"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->K5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "blend_data_valid"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->L5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_ycbcr_mean"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->M5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_ear_hori_line"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->N5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_ear_vert_line"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->O5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_ear_location_factors"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->P5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "right_ear_hori_line"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->Q5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "right_ear_vert_line"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->R5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "right_ear_location_factors"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->S5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "dynamicRangeCompress"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->c6:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "dynamicRangeOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->d6:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_start"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->e6:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_end"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/m;->f6:I

    return-void
.end method
