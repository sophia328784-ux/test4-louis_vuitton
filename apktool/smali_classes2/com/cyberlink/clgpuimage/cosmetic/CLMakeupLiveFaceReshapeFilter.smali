.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$a;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$b;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;
    }
.end annotation


# static fields
.field public static final I:[F


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:Ljava/nio/ByteBuffer;

.field public final o:Ljava/lang/Object;

.field public final p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

.field public q:I

.field public r:I

.field public final s:Ljava/nio/FloatBuffer;

.field public final t:Z

.field public u:I

.field public v:I

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

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->I:[F

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

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$b;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$a;->a:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->o:Ljava/lang/Object;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->t:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->F:I

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->s:Ljava/nio/FloatBuffer;

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->t:Z

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->s:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->I:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iget v4, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->rotation:I

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->q:I

    add-int/lit16 v6, v5, 0x10e

    rem-int/lit16 v6, v6, 0x168

    const/16 v7, 0x8

    const/16 v8, 0x5a

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x7

    const/4 v9, 0x1

    if-ne v4, v6, :cond_0

    aget v4, v3, v12

    aget v5, v3, v11

    aget v6, v3, v15

    aget v17, v3, v9

    aget v18, v3, v10

    aget v19, v3, v16

    aget v20, v3, v14

    aget v3, v3, v13

    new-array v7, v7, [F

    aput v4, v7, v15

    aput v5, v7, v9

    aput v6, v7, v14

    aput v17, v7, v13

    aput v18, v7, v12

    aput v19, v7, v11

    aput v20, v7, v10

    aput v3, v7, v16

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    add-int/lit16 v6, v5, 0xb4

    rem-int/lit16 v6, v6, 0x168

    if-ne v4, v6, :cond_1

    aget v4, v3, v10

    aget v5, v3, v16

    aget v6, v3, v12

    aget v17, v3, v11

    aget v18, v3, v14

    aget v19, v3, v13

    aget v20, v3, v15

    aget v3, v3, v9

    new-array v7, v7, [F

    aput v4, v7, v15

    aput v5, v7, v9

    aput v6, v7, v14

    aput v17, v7, v13

    aput v18, v7, v12

    aput v19, v7, v11

    aput v20, v7, v10

    aput v3, v7, v16

    goto :goto_0

    :cond_1
    add-int/2addr v5, v8

    rem-int/lit16 v5, v5, 0x168

    if-ne v4, v5, :cond_2

    aget v4, v3, v14

    aget v5, v3, v13

    aget v6, v3, v10

    aget v17, v3, v16

    aget v18, v3, v15

    aget v19, v3, v9

    aget v20, v3, v12

    aget v3, v3, v11

    new-array v7, v7, [F

    aput v4, v7, v15

    aput v5, v7, v9

    aput v6, v7, v14

    aput v17, v7, v13

    aput v18, v7, v12

    aput v19, v7, v11

    aput v20, v7, v10

    aput v3, v7, v16

    goto :goto_0

    :cond_2
    aget v4, v3, v15

    aget v5, v3, v9

    aget v6, v3, v14

    aget v17, v3, v13

    aget v18, v3, v12

    aget v19, v3, v11

    aget v20, v3, v10

    aget v3, v3, v16

    new-array v7, v7, [F

    aput v4, v7, v15

    aput v5, v7, v9

    aput v6, v7, v14

    aput v17, v7, v13

    aput v18, v7, v12

    aput v19, v7, v11

    aput v20, v7, v10

    aput v3, v7, v16

    :goto_0
    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v15}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->r:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->s:Ljava/nio/FloatBuffer;

    const/16 v17, 0x2

    const/16 v18, 0x1406

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v16, v2

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->r:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->u:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iget-boolean v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->is_valid:Z

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iget-boolean v3, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->is_valid:Z

    if-nez v3, :cond_3

    goto/16 :goto_2

    :cond_3
    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->rotation:I

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->q:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_4

    add-int/lit16 v2, v2, 0x168

    :cond_4
    if-ne v2, v8, :cond_5

    move v13, v9

    goto :goto_1

    :cond_5
    const/16 v3, 0xb4

    if-ne v2, v3, :cond_6

    move v13, v14

    goto :goto_1

    :cond_6
    const/16 v3, 0x10e

    if-ne v2, v3, :cond_7

    goto :goto_1

    :cond_7
    move v13, v15

    :goto_1
    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->v:I

    invoke-static {v2, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->w:I

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->x:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iget v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->warp_value_factor:F

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->y:I

    iget-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->t:Z

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_width:I

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iget v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_height:I

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->z:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_width:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->A:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_height:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->B:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_start_x:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->C:I

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iget v4, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->view_frame_roi_start_y:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->D:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    invoke-static {v2, v9, v3, v15}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->E:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    invoke-static {v2, v9, v3, v15}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->F:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    const v2, 0x84c2

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->F:I

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->G:I

    invoke-static {v2, v14}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    iget v6, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_width:I

    iget v7, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_height:I

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->H:Ljava/nio/ByteBuffer;

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_8
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;)V
    .locals 4

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->p:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;

    invoke-virtual {v1, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->CopyScalar(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->warp_table:[B

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_width:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->table_height:I

    mul-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->H:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->H:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->H:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->H:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter$LiveFaceReshapeMetadata;->warp_table:[B

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->H:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDestroy()V
    .locals 5

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->F:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->F:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onInit()V
    .locals 3

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "input_view_texture_coordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->r:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "warp_table_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->G:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "valid_flag"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->u:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "rotation"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->v:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "vertical_flip"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->w:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "warp_value_factor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->x:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "correct_float"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->y:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "roi_width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->z:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "roi_height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->A:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "roi_start_x"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->B:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "roi_start_y"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->C:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_start"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->D:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_end"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->E:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceReshapeFilter;->F:I

    const/16 p0, 0xde1

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v1, 0x47012f00    # 33071.0f

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    return-void
.end method
