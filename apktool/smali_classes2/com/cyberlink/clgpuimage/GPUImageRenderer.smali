.class public final Lcom/cyberlink/clgpuimage/GPUImageRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;,
        Lcom/cyberlink/clgpuimage/GPUImageRenderer$Buffer;,
        Lcom/cyberlink/clgpuimage/GPUImageRenderer$RenderFrameRateListener;,
        Lcom/cyberlink/clgpuimage/GPUImageRenderer$FilterListener;,
        Lcom/cyberlink/clgpuimage/GPUImageRenderer$RenderListener;,
        Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;,
        Lcom/cyberlink/clgpuimage/GPUImageRenderer$Factory;
    }
.end annotation


# static fields
.field public static final M:[F

.field public static final N:Lcom/cyberlink/clgpuimage/GPUImageRenderer$Factory;

.field public static volatile O:Z


# instance fields
.field public A:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

.field public B:Ljava/lang/Runnable;

.field public C:I

.field public D:I

.field public E:Ljava/nio/ByteBuffer;

.field public F:Ljava/nio/ByteBuffer;

.field public final G:[F

.field public volatile H:Z

.field public I:F

.field public J:I

.field public K:J

.field public L:Z

.field public final b:[I

.field public final c:[I

.field public final d:Z

.field public final e:[I

.field public volatile f:Lcom/cyberlink/clgpuimage/GlInvalidator;

.field public g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

.field public final h:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;

.field public volatile l:Z

.field public m:I

.field public final n:Ljava/nio/FloatBuffer;

.field public final o:Ljava/nio/FloatBuffer;

.field public final p:Ljava/nio/FloatBuffer;

.field public final q:Ljava/nio/FloatBuffer;

.field public volatile r:I

.field public volatile s:I

.field public t:I

.field public u:I

.field public final v:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final w:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public x:Lcom/cyberlink/clgpuimage/Rotation;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->M:[F

    sget-object v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$Factory;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer$Factory;

    sput-object v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->N:Lcom/cyberlink/clgpuimage/GPUImageRenderer$Factory;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageFilter;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->c:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->e:[I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->i:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->j:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->k:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->m:I

    sget-object v2, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_CROP_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->A:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    iput v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->C:I

    iput v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->D:I

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->G:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->J:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->K:J

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setScaleType(Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;)V

    :cond_0
    iput-boolean p2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->d:Z

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->v:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->w:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/16 p1, 0x20

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->n:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->M:[F

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->o:Ljava/nio/FloatBuffer;

    sget-object p2, Lcom/cyberlink/clgpuimage/Rotation;->NORMAL:Lcom/cyberlink/clgpuimage/Rotation;

    invoke-virtual {p0, p2, v0, v0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->i(Lcom/cyberlink/clgpuimage/Rotation;ZZ)V

    new-instance p2, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;

    invoke-direct {p2}, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;-><init>()V

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->h:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->p:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->q:Ljava/nio/FloatBuffer;

    sget-object p0, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a:[F

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static b(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->H:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->v:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->d:Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->G:[F

    aget v6, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    aget v1, v1, v2

    invoke-static {v6, v7, v8, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_0
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->v:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->A:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    sget-object v6, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_CROP_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    const/4 v7, 0x5

    const/4 v8, -0x1

    if-eq v1, v6, :cond_3

    sget-object v6, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_INSIDE_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-eq v1, v6, :cond_3

    sget-object v6, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->FIT_XY_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-ne v1, v6, :cond_1

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->m:I

    if-eq v1, v8, :cond_2

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->n:Ljava/nio/FloatBuffer;

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1, v3, v6}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    :cond_2
    :goto_0
    move/from16 v24, v4

    goto/16 :goto_6

    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v6, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->E:Ljava/nio/ByteBuffer;

    if-nez v6, :cond_4

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_4
    iget v9, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->t:I

    iget v10, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->u:I

    iget v11, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->C:I

    invoke-static {v6, v9, v10, v11}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->c(Ljava/nio/ByteBuffer;III)I

    move-result v6

    iput v6, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->C:I

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->F:Ljava/nio/ByteBuffer;

    iget v9, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->t:I

    iget v10, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->u:I

    iget v11, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->D:I

    invoke-static {v6, v9, v10, v11}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->b(Ljava/nio/ByteBuffer;III)I

    move-result v6

    iput v6, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->D:I

    iget-object v9, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->B:Ljava/lang/Runnable;

    const/4 v10, 0x0

    iput-object v10, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->B:Ljava/lang/Runnable;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->C:I

    if-eq v1, v8, :cond_2

    if-eq v6, v8, :cond_2

    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    :cond_5
    iget-boolean v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->d:Z

    if-eqz v1, :cond_6

    const/16 v1, 0xba2

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->e:[I

    invoke-static {v1, v6, v5}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    :cond_6
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->c:[I

    aget v6, v1, v5

    aget v9, v1, v4

    aget v10, v1, v3

    aget v1, v1, v2

    invoke-static {v6, v9, v10, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->h:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;

    iget v6, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->C:I

    iget v9, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->D:I

    iget-object v15, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->n:Ljava/nio/FloatBuffer;

    iget-object v10, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->o:Ljava/nio/FloatBuffer;

    iget-object v11, v1, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->u:[I

    invoke-virtual {v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->isInitialized()Z

    move-result v12

    const v13, 0x8d40

    if-eqz v12, :cond_8

    iget-object v12, v1, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->q:[I

    if-eqz v12, :cond_8

    iget-object v12, v1, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->r:[I

    if-nez v12, :cond_7

    goto :goto_2

    :cond_7
    const v12, 0x8ca6

    invoke-static {v12, v11, v5}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v12, v1, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->q:[I

    aget v12, v12, v5

    invoke-static {v13, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v12, 0x0

    invoke-static {v12, v12, v12, v12}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget v12, v1, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v12}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f()V

    invoke-virtual {v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->isInitialized()Z

    move-result v12

    if-nez v12, :cond_9

    :cond_8
    :goto_2
    move/from16 v22, v3

    move/from16 v24, v4

    move v4, v13

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v15, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v21, v10

    iget v10, v1, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    move v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x2

    move/from16 v17, v12

    const/16 v12, 0x1406

    move/from16 v22, v3

    move/from16 v24, v4

    move-object/from16 v23, v16

    move/from16 v4, v17

    move-object/from16 v3, v21

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v10, v1, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v10, v1, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x1406

    move/from16 v16, v10

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v3, v1, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v3, 0xde1

    if-eq v6, v8, :cond_a

    const v10, 0x84c0

    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v6, v1, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e:I

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_a
    if-eq v9, v8, :cond_b

    const v6, 0x84c3

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v3, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v6, v1, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->o:I

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_b
    iget v6, v1, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->p:I

    iget v8, v1, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->s:I

    invoke-static {v6, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v6, 0x4

    invoke-static {v7, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v6, v1, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v6, v1, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget v3, v23, v5

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->r:[I

    aget v8, v1, v5

    :goto_3
    iput v8, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->m:I

    iget-boolean v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->d:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->e:[I

    aget v3, v1, v5

    aget v4, v1, v24

    aget v6, v1, v22

    aget v1, v1, v2

    :goto_4
    invoke-static {v3, v4, v6, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_5

    :cond_c
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b:[I

    aget v3, v1, v5

    aget v4, v1, v24

    aget v6, v1, v22

    aget v1, v1, v2

    goto :goto_4

    :goto_5
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->m:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->p:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v3, v4}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->h:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->t:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;

    invoke-virtual {v1}, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;->j()V

    :goto_6
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->w:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    iget-boolean v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->L:Z

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->J:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->J:I

    if-ne v1, v7, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->K:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    iput v4, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->I:F

    iput-wide v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->K:J

    iput v5, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->J:I

    :cond_d
    return-void

    :goto_7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->A:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    sget-object v1, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_CROP_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_INSIDE_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->FIT_XY_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/cyberlink/clgpuimage/Rotation;->NORMAL:Lcom/cyberlink/clgpuimage/Rotation;

    iget-boolean v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->y:Z

    iget-boolean v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->z:Z

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->b(Lcom/cyberlink/clgpuimage/Rotation;ZZ)[F

    move-result-object v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->x:Lcom/cyberlink/clgpuimage/Rotation;

    iget-boolean v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->y:Z

    iget-boolean v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->z:Z

    xor-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->e()V

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->n:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    sget-object v2, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->M:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final e()V
    .locals 10

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->x:Lcom/cyberlink/clgpuimage/Rotation;

    sget-object v1, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_270:Lcom/cyberlink/clgpuimage/Rotation;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_90:Lcom/cyberlink/clgpuimage/Rotation;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->t:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->u:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->u:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->t:I

    :goto_1
    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    :cond_2
    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->h:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;

    invoke-virtual {v2, v0, v1}, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->onOutputSizeChanged(II)V

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->c:[I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v5, 0x2

    aput v0, v2, v5

    const/4 v6, 0x3

    aput v1, v2, v6

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->A:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    sget-object v7, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_CROP_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-ne v2, v7, :cond_4

    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    int-to-float v2, v2

    iget v7, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    int-to-float v7, v7

    div-float/2addr v2, v7

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v1, v0, v2

    if-lez v1, :cond_3

    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    int-to-float v2, v1

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    int-to-float v2, v1

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_2
    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b:[I

    iget v7, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    sub-int/2addr v7, v0

    div-int/2addr v7, v5

    aput v7, v2, v3

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b:[I

    iget v3, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    sub-int/2addr v3, v1

    div-int/2addr v3, v5

    aput v3, v2, v4

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b:[I

    aput v0, p0, v5

    aput v1, p0, v6

    return-void

    :cond_4
    sget-object v7, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->FIT_XY_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-ne v2, v7, :cond_5

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b:[I

    aput v3, v0, v3

    aput v3, v0, v4

    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    aput v1, v0, v5

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b:[I

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    aput p0, v0, v6

    return-void

    :cond_5
    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    int-to-float v2, v2

    iget v7, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    int-to-float v7, v7

    div-float/2addr v2, v7

    int-to-float v0, v0

    int-to-float v1, v1

    div-float v7, v0, v1

    cmpl-float v2, v2, v7

    iget-object v8, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b:[I

    if-lez v2, :cond_6

    aput v3, v8, v4

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    aput v0, v8, v6

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    div-int/2addr v0, v5

    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    div-int/2addr v1, v5

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b:[I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    sub-int/2addr v1, v0

    aput v1, v2, v3

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    int-to-float p0, p0

    mul-float/2addr p0, v7

    float-to-int p0, p0

    aput p0, v2, v5

    return-void

    :cond_6
    aput v3, v8, v3

    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    aput v2, v8, v5

    div-float/2addr v1, v0

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    div-int/2addr v0, v5

    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    div-int/2addr v2, v5

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b:[I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sub-int/2addr v0, v2

    aput v0, v3, v4

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    aput p0, v3, v6

    return-void
.end method

.method public final f()V
    .locals 1

    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$4;

    invoke-direct {v0, p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$4;-><init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;)V

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->H:Z

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->v:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->w:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->b(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->j:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->E:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->F:Ljava/nio/ByteBuffer;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->h:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;

    invoke-virtual {v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->destroy()V

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-virtual {v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->destroy()V

    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->C:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->C:I

    :cond_0
    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->D:I

    if-eq v1, v3, :cond_1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->D:I

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final h(Lcom/cyberlink/clgpuimage/GPUImageFilter;)V
    .locals 1

    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;

    invoke-direct {v0, p0, p1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;-><init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;Lcom/cyberlink/clgpuimage/GPUImageFilter;)V

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Lcom/cyberlink/clgpuimage/Rotation;ZZ)V
    .locals 0

    iput-boolean p2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->y:Z

    iput-boolean p3, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->z:Z

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->x:Lcom/cyberlink/clgpuimage/Rotation;

    new-instance p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$7;

    invoke-direct {p1, p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$7;-><init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;)V

    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;)V
    .locals 1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->A:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setScaleType(Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;)V

    :cond_0
    new-instance p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$6;

    invoke-direct {p1, p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$6;-><init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;)V

    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;)V
    .locals 6

    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->H:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->E:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->t:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->b:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->u:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->c:I

    if-eq v1, v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget v1, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->b:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->c:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->E:Ljava/nio/ByteBuffer;

    iget v1, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->b:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->c:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->F:Ljava/nio/ByteBuffer;

    iget v1, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->b:I

    iput v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->t:I

    iget v1, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->c:I

    iput v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->u:I

    new-instance v1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$1;

    invoke-direct {v1, p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$1;-><init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;)V

    invoke-virtual {p0, v1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->a(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->E:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->E:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->a:[B

    iget v3, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->b:I

    iget v4, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->c:I

    mul-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->E:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->F:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->F:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->a:[B

    iget v3, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->b:I

    iget v5, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->c:I

    mul-int/2addr v3, v5

    div-int/lit8 v5, v3, 0x2

    invoke-virtual {v1, v2, v3, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->F:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz p2, :cond_3

    new-instance v1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$2;-><init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->B:Ljava/lang/Runnable;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->B:Ljava/lang/Runnable;

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->f:Lcom/cyberlink/clgpuimage/GlInvalidator;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->f:Lcom/cyberlink/clgpuimage/GlInvalidator;

    invoke-interface {p0}, Lcom/cyberlink/clgpuimage/GlInvalidator;->invalidate()V

    :cond_4
    :goto_2
    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    iget-boolean p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->H:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->l:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->c()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->c()V

    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    iget-boolean p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->H:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    iput p3, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-virtual {p1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->d()V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->i:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    iget-boolean p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->H:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->m:I

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 p1, 0xb71

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-virtual {p1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->init()V

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->h:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->init()V

    return-void
.end method
