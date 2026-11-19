.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$a;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$b;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;
    }
.end annotation


# static fields
.field public static final V:[F


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

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public final o:Ljava/lang/Object;

.field public final p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

.field public q:I

.field public r:I

.field public final s:Ljava/nio/FloatBuffer;

.field public final t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->V:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 2

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$b;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$a;->a:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->o:Ljava/lang/Object;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->t:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->u:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->v:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->R:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->S:I

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->s:Ljava/nio/FloatBuffer;

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->t:Z

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->s:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->V:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    iget v4, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->rotation:I

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->q:I

    add-int/lit16 v6, v5, 0x10e

    rem-int/lit16 v6, v6, 0x168

    const/16 v7, 0x8

    const/16 v8, 0x5a

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x7

    const/4 v9, 0x0

    if-ne v4, v6, :cond_0

    aget v4, v3, v12

    aget v5, v3, v11

    aget v6, v3, v9

    aget v17, v3, v15

    aget v18, v3, v10

    aget v19, v3, v16

    aget v20, v3, v14

    aget v3, v3, v13

    move/from16 v21, v10

    new-array v10, v7, [F

    aput v4, v10, v9

    aput v5, v10, v15

    aput v6, v10, v14

    aput v17, v10, v13

    aput v18, v10, v12

    aput v19, v10, v11

    aput v20, v10, v21

    aput v3, v10, v16

    move/from16 v20, v11

    :goto_0
    move/from16 v19, v12

    :goto_1
    move/from16 v18, v13

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    move/from16 v21, v10

    add-int/lit16 v6, v5, 0xb4

    rem-int/lit16 v6, v6, 0x168

    if-ne v4, v6, :cond_1

    aget v4, v3, v21

    aget v5, v3, v16

    aget v6, v3, v12

    aget v10, v3, v11

    aget v17, v3, v14

    aget v18, v3, v13

    aget v19, v3, v9

    aget v3, v3, v15

    move/from16 v20, v11

    new-array v11, v7, [F

    aput v4, v11, v9

    aput v5, v11, v15

    aput v6, v11, v14

    aput v10, v11, v13

    aput v17, v11, v12

    aput v18, v11, v20

    aput v19, v11, v21

    aput v3, v11, v16

    move-object v10, v11

    goto :goto_0

    :cond_1
    move/from16 v20, v11

    add-int/2addr v5, v8

    rem-int/lit16 v5, v5, 0x168

    if-ne v4, v5, :cond_2

    aget v4, v3, v14

    aget v5, v3, v13

    aget v6, v3, v21

    aget v10, v3, v16

    aget v11, v3, v9

    aget v17, v3, v15

    aget v18, v3, v12

    aget v3, v3, v20

    move/from16 v19, v12

    new-array v12, v7, [F

    aput v4, v12, v9

    aput v5, v12, v15

    aput v6, v12, v14

    aput v10, v12, v13

    aput v11, v12, v19

    aput v17, v12, v20

    aput v18, v12, v21

    aput v3, v12, v16

    move-object v10, v12

    goto :goto_1

    :cond_2
    move/from16 v19, v12

    aget v4, v3, v9

    aget v5, v3, v15

    aget v6, v3, v14

    aget v10, v3, v13

    aget v11, v3, v19

    aget v12, v3, v20

    aget v17, v3, v21

    aget v3, v3, v16

    move/from16 v18, v13

    new-array v13, v7, [F

    aput v4, v13, v9

    aput v5, v13, v15

    aput v6, v13, v14

    aput v10, v13, v18

    aput v11, v13, v19

    aput v12, v13, v20

    aput v17, v13, v21

    aput v3, v13, v16

    move-object v10, v13

    :goto_2
    invoke-virtual {v2, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->r:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->s:Ljava/nio/FloatBuffer;

    const/16 v23, 0x2

    const/16 v24, 0x1406

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v22, v2

    move-object/from16 v27, v3

    invoke-static/range {v22 .. v27}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->r:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    iget-boolean v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->is_valid:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->u:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->v:Z

    if-eqz v2, :cond_3

    move v2, v15

    goto :goto_3

    :cond_3
    move v2, v9

    :goto_3
    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->w:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    if-nez v2, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->rotation:I

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->q:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    add-int/lit16 v2, v2, 0x168

    :cond_5
    if-ne v2, v8, :cond_6

    move v2, v15

    goto :goto_4

    :cond_6
    const/16 v3, 0xb4

    if-ne v2, v3, :cond_7

    move v2, v14

    goto :goto_4

    :cond_7
    const/16 v3, 0x10e

    if-ne v2, v3, :cond_8

    move/from16 v2, v18

    goto :goto_4

    :cond_8
    move v2, v9

    :goto_4
    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->x:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->y:I

    invoke-static {v2, v15}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->z:I

    iget-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->t:Z

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->A:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    iget v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->warp_value_factor:F

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->B:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    iget-object v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->gpu_float_factors:[F

    aget v4, v3, v9

    aget v5, v3, v15

    aget v6, v3, v14

    aget v3, v3, v18

    invoke-static {v2, v4, v5, v6, v3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->transform_factors:[F

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->C:I

    aget v4, v2, v9

    aget v5, v2, v15

    aget v6, v2, v14

    aget v8, v2, v18

    invoke-static {v3, v4, v5, v6, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->D:I

    aget v4, v2, v19

    aget v5, v2, v20

    aget v6, v2, v21

    aget v8, v2, v16

    invoke-static {v3, v4, v5, v6, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->E:I

    aget v4, v2, v7

    const/16 v5, 0x9

    aget v5, v2, v5

    const/16 v6, 0xa

    aget v6, v2, v6

    const/16 v7, 0xb

    aget v7, v2, v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->F:I

    const/16 v4, 0xc

    aget v4, v2, v4

    const/16 v5, 0xd

    aget v5, v2, v5

    const/16 v6, 0xe

    aget v6, v2, v6

    const/16 v7, 0xf

    aget v7, v2, v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->G:I

    const/16 v4, 0x10

    aget v4, v2, v4

    const/16 v5, 0x11

    aget v5, v2, v5

    const/16 v6, 0x12

    aget v6, v2, v6

    const/16 v7, 0x13

    aget v7, v2, v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->H:I

    const/16 v4, 0x14

    aget v4, v2, v4

    const/16 v5, 0x15

    aget v5, v2, v5

    const/16 v6, 0x16

    aget v6, v2, v6

    const/16 v7, 0x17

    aget v7, v2, v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->I:I

    const/16 v4, 0x18

    aget v4, v2, v4

    const/16 v5, 0x19

    aget v5, v2, v5

    const/16 v6, 0x1a

    aget v6, v2, v6

    const/16 v7, 0x1b

    aget v7, v2, v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->J:I

    const/16 v4, 0x1c

    aget v4, v2, v4

    const/16 v5, 0x1d

    aget v2, v2, v5

    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->K:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    iget-object v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->hori_trans_factors:[F

    aget v4, v3, v9

    aget v5, v3, v15

    aget v3, v3, v14

    invoke-static {v2, v4, v5, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->L:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    iget-object v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->hori_offsets:[F

    aget v4, v3, v9

    aget v5, v3, v15

    aget v3, v3, v14

    invoke-static {v2, v4, v5, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->M:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    iget-object v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->hori_offsets:[F

    aget v4, v3, v18

    aget v5, v3, v19

    aget v3, v3, v20

    invoke-static {v2, v4, v5, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->N:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    iget-object v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->boundary_factors:[F

    aget v4, v3, v9

    aget v5, v3, v15

    aget v3, v3, v14

    invoke-static {v2, v4, v5, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->O:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    iget-object v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->boundary_factors:[F

    aget v4, v3, v18

    aget v5, v3, v19

    aget v3, v3, v20

    invoke-static {v2, v4, v5, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->P:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    invoke-static {v2, v15, v3, v9}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->Q:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    invoke-static {v2, v15, v3, v9}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    :goto_5
    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->R:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->S:I

    if-eq v2, v3, :cond_9

    const v2, 0x84c2

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->R:I

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->T:I

    invoke-static {v2, v14}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v2, 0x84c3

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->S:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->U:I

    move/from16 v2, v18

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_9
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;)V
    .locals 1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;

    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->u:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onInit()V
    .locals 2

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "input_view_texture_coordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->r:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "dx_table_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->T:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "dy_table_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->U:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "valid_flag"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->w:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "rotation"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->x:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "vertical_flip"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->y:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "correct_float"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->z:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "warp_value_factor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->A:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "gpu_float_factors"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->B:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "trans_factors_x00x01x02y00"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->C:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "trans_factors_y01y02x10x11"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->D:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "trans_factors_x12y10y11y12"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->E:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "trans_factors_x20x21x22y20"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->F:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "trans_factors_y21y22x30x31"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->G:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "trans_factors_x32y30y31y32"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->H:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "trans_factors_x40x41x42y40"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->I:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "trans_factors_y41y42"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->J:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hori_trans_factors"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->K:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hori_offset012"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->L:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hori_offset345"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->M:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "boundary_factors_x"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->N:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "boundary_factors_y"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->O:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_start"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->P:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_end"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;->Q:I

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    return-void
.end method
