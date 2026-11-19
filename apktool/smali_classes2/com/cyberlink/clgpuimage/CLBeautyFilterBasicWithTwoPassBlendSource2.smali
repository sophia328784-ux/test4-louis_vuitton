.class public Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;,
        Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PreProcessMode;,
        Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public final L:F

.field public M:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

.field public N:Z

.field public O:[I

.field public P:I

.field public Q:Ljava/nio/ByteBuffer;

.field public final o:Ljava/nio/FloatBuffer;

.field public final p:Ljava/nio/FloatBuffer;

.field public final q:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:[I

.field public z:[I


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;)V
    .locals 6

    .line 85
    const-string v3, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v4, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    const-string v1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v2, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x3c0

    iput p3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->t:I

    const/16 p3, 0x2d0

    iput p3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->u:I

    const/16 p3, 0x1e0

    iput p3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->v:I

    const/16 p3, 0x168

    iput p3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->w:I

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->s:Ljava/lang/String;

    iput-object p5, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->q:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    sget-object p1, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->LIVE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    if-ne p5, p1, :cond_0

    const/high16 p1, 0x40c00000    # 6.0f

    :goto_0
    iput p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->L:F

    goto :goto_1

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    :goto_1
    sget-object p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->M:[F

    const/16 p2, 0x20

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {p3}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->p:Ljava/nio/FloatBuffer;

    sget-object p2, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object p1, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_NONE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->M:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    iput-boolean p3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->N:Z

    return-void
.end method


# virtual methods
.method public j(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 12

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const v1, 0x8ca6

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    const/16 v3, 0xba2

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget v3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->A:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->v:I

    iget v4, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->w:I

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->y:[I

    aget v3, v3, v5

    const v4, 0x8d40

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {p2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v6, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->B:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x2

    const/16 v8, 0x1406

    move-object v11, p2

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->B:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v6, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->D:I

    move-object v11, p3

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->D:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p2, -0x1

    const/16 p3, 0xde1

    if-eq p1, p2, :cond_0

    const p2, 0x84c0

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->C:I

    invoke-static {p1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    iget p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->v:I

    iget p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->w:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x44340000    # 720.0f

    div-float/2addr p1, p2

    sget-object p2, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->LIVE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->q:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    iget v8, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->L:F

    mul-float/2addr p1, v8

    if-ne v3, p2, :cond_1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    :goto_0
    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-float p1, p1

    goto :goto_1

    :cond_1
    float-to-double p1, p1

    goto :goto_0

    :goto_1
    const/high16 p2, 0x3f000000    # 0.5f

    sub-float p2, p1, p2

    iget v3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->E:I

    iget v6, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->v:I

    int-to-float v6, v6

    div-float/2addr p2, v6

    const/4 v6, 0x0

    invoke-static {v3, p2, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->F:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->v:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-static {p2, p1, v6}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const/4 p1, 0x5

    invoke-static {p1, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->B:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->D:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {p3, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v0, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result p0

    invoke-static {v4, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v2, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result p0

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    const/4 p2, 0x2

    invoke-virtual {v2, p2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p2

    const/4 p3, 0x3

    invoke-virtual {v2, p3}, Ljava/nio/IntBuffer;->get(I)I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public k(II)V
    .locals 11

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iput p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->t:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->u:I

    div-int/lit8 v3, p1, 0x2

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->v:I

    div-int/lit8 v4, p2, 0x2

    iput v4, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->w:I

    const/4 p1, 0x1

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->y:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    const/4 v9, 0x0

    invoke-static {p1, p2, v9}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    invoke-static {p1, p2, v9}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    aget p2, p2, v9

    const/16 v10, 0xde1

    invoke-static {v10, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v7, 0x1401

    const/4 v8, 0x0

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p2, 0x2800

    const v0, 0x46180400    # 9729.0f

    invoke-static {v10, p2, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2801

    invoke-static {v10, p2, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2802

    const v0, 0x47012f00    # 33071.0f

    invoke-static {v10, p2, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2803

    invoke-static {v10, p2, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p1

    const p2, 0x8ca6

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->y:[I

    aget p2, p2, v9

    const v0, 0x8d40

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    aget p2, p2, v9

    const v1, 0x8ce0

    invoke-static {v0, v1, v10, p2, v9}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v10, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {p1, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->t:I

    iget p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->u:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x44340000    # 720.0f

    div-float/2addr p1, p2

    sget-object p2, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->LIVE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->q:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    iget v3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->L:F

    mul-float/2addr p1, v3

    if-ne v2, p2, :cond_1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    :goto_0
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-float p1, p1

    goto :goto_1

    :cond_1
    float-to-double p1, p1

    goto :goto_0

    :goto_1
    const/high16 p2, 0x3f000000    # 0.5f

    sub-float p2, p1, p2

    new-instance v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$1;-><init>(Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;FF)V

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final l(Landroid/content/res/AssetManager;[BLcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;)V
    .locals 6

    const-string v0, "color_effect_table/"

    iput-object p3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->M:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->N:Z

    sget-object v2, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_NONE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    if-eq p3, v2, :cond_6

    sget-object v2, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_3D:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    const/16 v3, 0x100

    const/4 v4, 0x0

    if-ne p3, v2, :cond_0

    const/16 v2, 0x80

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_1D:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    if-ne p3, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v4

    move v3, v2

    :goto_0
    mul-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x3

    new-array v2, v3, [B

    sget-object v5, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_1D:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    if-ne p3, v5, :cond_2

    array-length p1, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_3

    goto :goto_1

    :catch_1
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->N:Z

    if-eqz p1, :cond_4

    move p1, v4

    :goto_3
    if-ge p1, v3, :cond_4

    aget-byte p2, v2, p1

    and-int/lit16 p3, p2, 0xf0

    shr-int/lit8 p3, p3, 0x4

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p2, p3

    int-to-byte p2, p2

    and-int/lit16 p3, p2, 0xcc

    shr-int/lit8 p3, p3, 0x2

    and-int/lit8 p2, p2, 0x33

    shl-int/lit8 p2, p2, 0x2

    or-int/2addr p2, p3

    int-to-byte p2, p2

    and-int/lit16 p3, p2, 0xaa

    shr-int/2addr p3, v1

    and-int/lit8 p2, p2, 0x55

    shl-int/2addr p2, v1

    or-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->Q:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->Q:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :goto_4
    if-eqz p2, :cond_5

    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_5
    throw p0

    :cond_6
    return-void
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->y:[I

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->y:[I

    :cond_1
    iget v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->A:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->M:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    sget-object v3, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_NONE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->O:[I

    if-eqz v0, :cond_2

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->O:[I

    :cond_2
    return-void
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->y:[I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->o:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->p:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1, v0, v1}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->j(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x1406

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    aget p2, p2, v0

    const/4 p3, -0x1

    const/16 v1, 0xde1

    if-eq p2, p3, :cond_2

    const p2, 0x84c3

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    aget p2, p2, v0

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e:I

    const/4 v2, 0x3

    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_2
    if-eq p1, p3, :cond_3

    const p2, 0x84c0

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->x:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_3
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->M:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    sget-object p2, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_NONE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    const/4 v2, 0x4

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->O:[I

    aget p1, p1, v0

    if-eq p1, p3, :cond_4

    const p1, 0x84c4

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->O:[I

    aget p1, p1, v0

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->P:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_4
    const/4 p1, 0x5

    invoke-static {p1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onInit()V
    .locals 14

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->A:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->B:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->A:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->C:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->A:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->D:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->A:I

    const-string v1, "sampling_offset_start"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->E:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->A:I

    const-string v2, "sampling_step"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->F:I

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->G:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->H:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "smooth_strength"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->I:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "color_strength"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->J:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "fade_strength"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->K:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "rootImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->x:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->M:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    sget-object v1, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_NONE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_3D:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    const/16 v2, 0x100

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x80

    move v9, v0

    move v8, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_1D:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    if-ne v0, v1, :cond_1

    move v8, v2

    move v9, v3

    goto :goto_0

    :cond_1
    move v8, v4

    move v9, v8

    :goto_0
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->O:[I

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->O:[I

    aget v0, v0, v4

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v12, 0x1401

    iget-object v13, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->Q:Ljava/nio/ByteBuffer;

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1907

    const/4 v10, 0x0

    const/16 v11, 0x1907

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "mapping_table_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->P:I

    :cond_2
    return-void
.end method

.method public onInitialized()V
    .locals 2

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInitialized()V

    iget v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->t:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->u:I

    invoke-virtual {p0, v0, v1}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->k(II)V

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 4

    iput p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->y:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->y:[I

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->y:[I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->k(II)V

    return-void
.end method

.method public final setShaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->s:Ljava/lang/String;

    invoke-super {p0, p3, p4}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setShaders(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
