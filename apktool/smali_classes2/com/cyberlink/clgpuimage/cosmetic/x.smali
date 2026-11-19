.class public final Lcom/cyberlink/clgpuimage/cosmetic/x;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/x$a;,
        Lcom/cyberlink/clgpuimage/cosmetic/x$b;
    }
.end annotation


# instance fields
.field public A:I

.field public o:Ljava/util/ArrayList;

.field public p:I

.field public q:I

.field public final r:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

.field public final s:Lcom/cyberlink/clgpuimage/cosmetic/x$b;

.field public final t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

.field public u:[I

.field public v:[I

.field public final w:Ljava/nio/FloatBuffer;

.field public final x:Ljava/nio/FloatBuffer;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>()V

    const/16 v0, 0x5a

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->p:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->q:I

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->r:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/x$b;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/x$b;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->s:Lcom/cyberlink/clgpuimage/cosmetic/x$b;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->u:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->v:[I

    sget-object v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->M:[F

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->w:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sget-object v3, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a:[F

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->x:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->o:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 0

    return-void
.end method

.method public final j()Lcom/cyberlink/clgpuimage/cosmetic/x$a;
    .locals 9

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/x$a;-><init>()V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->y:I

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->a:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->z:I

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->b:I

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->o:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->d:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->r:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-virtual {v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->e:Lcom/cyberlink/clgpuimage/cosmetic/x$b;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->s:Lcom/cyberlink/clgpuimage/cosmetic/x$b;

    invoke-virtual {v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/x$b;->a(Lcom/cyberlink/clgpuimage/cosmetic/x$b;)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->f:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    invoke-virtual {v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->y:I

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->z:I

    mul-int v3, v1, v2

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->c:[I

    mul-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const v2, 0x8d40

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->A:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->y:I

    iget v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->z:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->c:[I

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    :goto_0
    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->y:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->z:I

    mul-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/x$a;->c:[I

    aget v3, v2, v1

    const v4, -0xff0100

    and-int/2addr v4, v3

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->v:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->v:[I

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->u:[I

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/x;->u:[I

    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/x;->k()V

    return-void
.end method

.method public final onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v7, p2

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f()V

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    const v9, 0x8ca6

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v3

    const/16 v11, 0xba2

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/cosmetic/x;->k()V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->p:I

    const/16 v12, 0x10e

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_2

    if-ne v4, v12, :cond_1

    goto :goto_1

    :cond_1
    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->y:I

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    :goto_0
    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->z:I

    goto :goto_2

    :cond_2
    :goto_1
    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->y:I

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    goto :goto_0

    :goto_2
    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->y:I

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->z:I

    new-array v6, v8, [I

    iput-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->u:[I

    new-array v13, v8, [I

    iput-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->v:[I

    const/4 v13, 0x0

    invoke-static {v8, v6, v13}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->v:[I

    invoke-static {v8, v6, v13}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->v:[I

    aget v6, v6, v13

    const/16 v14, 0xde1

    invoke-static {v14, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v20, 0x1401

    const/16 v21, 0x0

    move v6, v13

    const/16 v13, 0xde1

    move v15, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/16 v15, 0x1908

    const/16 v18, 0x0

    const/16 v19, 0x1908

    move/from16 v17, v16

    move/from16 v16, v4

    move/from16 v4, v17

    move/from16 v17, v5

    move v5, v6

    invoke-static/range {v13 .. v21}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v6, 0x2800

    const v13, 0x46180400    # 9729.0f

    invoke-static {v4, v6, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2801

    invoke-static {v4, v6, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2802

    const v13, 0x47012f00    # 33071.0f

    invoke-static {v4, v6, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2803

    invoke-static {v4, v6, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->u:[I

    aget v6, v6, v5

    const v13, 0x8d40

    invoke-static {v13, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->v:[I

    aget v6, v6, v5

    const v14, 0x8ce0

    invoke-static {v13, v14, v4, v6, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v13, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->u:[I

    aget v6, v6, v5

    iput v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->A:I

    invoke-virtual {v2, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-static {v13, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v3, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-virtual {v3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    const/4 v14, 0x2

    invoke-virtual {v3, v14}, Ljava/nio/IntBuffer;->get(I)I

    move-result v15

    move/from16 v16, v14

    const/4 v14, 0x3

    invoke-virtual {v3, v14}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v2, v6, v15, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v7, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    move v6, v5

    const/4 v5, 0x0

    move v3, v6

    const/4 v6, 0x0

    move v15, v3

    const/4 v3, 0x2

    move/from16 v17, v4

    const/16 v4, 0x1406

    move/from16 v29, v17

    move/from16 v17, v14

    move v14, v15

    move/from16 v15, v29

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v2, p3

    invoke-virtual {v2, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x1406

    move-object/from16 v23, v2

    move/from16 v18, v3

    invoke-static/range {v18 .. v23}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e:I

    invoke-static {v1, v14}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_3
    const/4 v1, 0x5

    invoke-static {v1, v14, v10}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-virtual {v7, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    const/16 v22, 0x0

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->w:Ljava/nio/FloatBuffer;

    const/16 v19, 0x2

    const/16 v20, 0x1406

    const/16 v21, 0x0

    move/from16 v18, v2

    move-object/from16 v23, v3

    invoke-static/range {v18 .. v23}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->x:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->p:I

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->q:I

    add-int/lit8 v5, v4, 0x5a

    rem-int/lit16 v5, v5, 0x168

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/16 v18, 0x6

    sget-object v19, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a:[F

    if-ne v3, v5, :cond_4

    new-array v3, v6, [F

    aget v4, v19, v10

    aput v4, v3, v14

    aget v4, v19, v1

    aput v4, v3, v8

    aget v4, v19, v14

    aput v4, v3, v16

    aget v4, v19, v8

    aput v4, v3, v17

    aget v4, v19, v18

    aput v4, v3, v10

    aget v4, v19, v7

    aput v4, v3, v1

    aget v4, v19, v16

    aput v4, v3, v18

    aget v4, v19, v17

    aput v4, v3, v7

    goto :goto_3

    :cond_4
    add-int/lit16 v5, v4, 0xb4

    rem-int/lit16 v5, v5, 0x168

    if-ne v3, v5, :cond_5

    new-array v3, v6, [F

    aget v4, v19, v18

    aput v4, v3, v14

    aget v4, v19, v7

    aput v4, v3, v8

    aget v4, v19, v10

    aput v4, v3, v16

    aget v4, v19, v1

    aput v4, v3, v17

    aget v4, v19, v16

    aput v4, v3, v10

    aget v4, v19, v17

    aput v4, v3, v1

    aget v4, v19, v14

    aput v4, v3, v18

    aget v4, v19, v8

    aput v4, v3, v7

    goto :goto_3

    :cond_5
    add-int/2addr v4, v12

    rem-int/lit16 v4, v4, 0x168

    if-ne v3, v4, :cond_6

    new-array v3, v6, [F

    aget v4, v19, v16

    aput v4, v3, v14

    aget v4, v19, v17

    aput v4, v3, v8

    aget v4, v19, v18

    aput v4, v3, v16

    aget v4, v19, v7

    aput v4, v3, v17

    aget v4, v19, v14

    aput v4, v3, v10

    aget v4, v19, v8

    aput v4, v3, v1

    aget v4, v19, v10

    aput v4, v3, v18

    aget v4, v19, v1

    aput v4, v3, v7

    goto :goto_3

    :cond_6
    new-array v3, v6, [F

    aget v4, v19, v14

    aput v4, v3, v14

    aget v4, v19, v8

    aput v4, v3, v8

    aget v4, v19, v16

    aput v4, v3, v16

    aget v4, v19, v17

    aput v4, v3, v17

    aget v4, v19, v10

    aput v4, v3, v10

    aget v4, v19, v1

    aput v4, v3, v1

    aget v4, v19, v18

    aput v4, v3, v18

    aget v4, v19, v7

    aput v4, v3, v7

    :goto_3
    aget v4, v3, v10

    aget v5, v3, v1

    aget v12, v3, v18

    aget v19, v3, v7

    aget v20, v3, v14

    aget v21, v3, v8

    aget v22, v3, v16

    aget v3, v3, v17

    new-array v6, v6, [F

    aput v4, v6, v14

    aput v5, v6, v8

    aput v12, v6, v16

    aput v19, v6, v17

    aput v20, v6, v10

    aput v21, v6, v1

    aput v22, v6, v18

    aput v3, v6, v7

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    const/16 v27, 0x0

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->x:Ljava/nio/FloatBuffer;

    const/16 v24, 0x2

    const/16 v25, 0x1406

    const/16 v26, 0x0

    move/from16 v23, v2

    move-object/from16 v28, v3

    invoke-static/range {v23 .. v28}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v8}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-static {v10}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->A:I

    invoke-static {v13, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v4, 0x0

    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->y:I

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->z:I

    invoke-static {v14, v14, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {v1, v14, v10}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-virtual {v2, v14}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v3, v14}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    move/from16 v2, v16

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    move/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {v15, v14}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    return-void
.end method
