.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;
.super Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$d;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$c;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$e;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$b;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$a;
    }
.end annotation


# static fields
.field public static final p6:[F


# instance fields
.field public C5:I

.field public D5:I

.field public E5:I

.field public F5:I

.field public G5:I

.field public H5:I

.field public I5:I

.field public J5:I

.field public K5:I

.field public L5:I

.field public M5:F

.field public N5:F

.field public O5:F

.field public P5:F

.field public final Q5:[F

.field public final R5:[F

.field public final S5:[F

.field public T5:I

.field public final U5:I

.field public V5:F

.field public W5:F

.field public X5:F

.field public Y5:F

.field public Z5:I

.field public a6:I

.field public b6:Z

.field public c6:Ljava/nio/ByteBuffer;

.field public d6:I

.field public e6:I

.field public f6:Z

.field public g6:Ljava/nio/ByteBuffer;

.field public h6:I

.field public i6:I

.field public j6:Z

.field public k6:Ljava/nio/ByteBuffer;

.field public l6:I

.field public final m6:Ljava/nio/FloatBuffer;

.field public final n6:[F

.field public final o6:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->p6:[F

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

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$b;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$b;->b:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$e;->a:[C

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$c;->a:[C

    invoke-static {v3}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$d;->a:[C

    invoke-static {v4}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->Q5:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->R5:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->S5:[F

    const/4 v1, 0x0

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->T5:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->U5:I

    const v2, 0x3dcccccd    # 0.1f

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->V5:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->W5:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->X5:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->Y5:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->Z5:I

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->b6:Z

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->d6:I

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->f6:Z

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->h6:I

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->j6:Z

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->n6:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->o6:[F

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->m6:Ljava/nio/FloatBuffer;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final R()V
    .locals 13

    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x84d5

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->h6:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->i6:I

    const/16 v2, 0x15

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->j6:Z

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->m6:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-boolean v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->k0:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->A5:[F

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->p6:[F

    :goto_0
    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->o0:I

    const/16 v4, 0x5a

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x4

    if-ne v3, v4, :cond_2

    new-array v3, v5, [F

    aget v4, v2, v12

    aput v4, v3, v1

    aget v4, v2, v10

    aput v4, v3, v11

    aget v4, v2, v1

    aput v4, v3, v9

    aget v4, v2, v11

    aput v4, v3, v8

    aget v4, v2, v7

    aput v4, v3, v12

    aget v4, v2, v6

    aput v4, v3, v10

    aget v4, v2, v9

    aput v4, v3, v7

    aget v2, v2, v8

    aput v2, v3, v6

    goto :goto_1

    :cond_2
    const/16 v4, 0xb4

    if-ne v3, v4, :cond_3

    new-array v3, v5, [F

    aget v4, v2, v7

    aput v4, v3, v1

    aget v4, v2, v6

    aput v4, v3, v11

    aget v4, v2, v12

    aput v4, v3, v9

    aget v4, v2, v10

    aput v4, v3, v8

    aget v4, v2, v9

    aput v4, v3, v12

    aget v4, v2, v8

    aput v4, v3, v10

    aget v4, v2, v1

    aput v4, v3, v7

    aget v2, v2, v11

    aput v2, v3, v6

    goto :goto_1

    :cond_3
    const/16 v4, 0x10e

    if-ne v3, v4, :cond_4

    new-array v3, v5, [F

    aget v4, v2, v9

    aput v4, v3, v1

    aget v4, v2, v8

    aput v4, v3, v11

    aget v4, v2, v7

    aput v4, v3, v9

    aget v4, v2, v6

    aput v4, v3, v8

    aget v4, v2, v1

    aput v4, v3, v12

    aget v4, v2, v11

    aput v4, v3, v10

    aget v4, v2, v12

    aput v4, v3, v7

    aget v2, v2, v10

    aput v2, v3, v6

    goto :goto_1

    :cond_4
    new-array v3, v5, [F

    aget v4, v2, v1

    aput v4, v3, v1

    aget v4, v2, v11

    aput v4, v3, v11

    aget v4, v2, v9

    aput v4, v3, v9

    aget v4, v2, v8

    aput v4, v3, v8

    aget v4, v2, v12

    aput v4, v3, v12

    aget v4, v2, v10

    aput v4, v3, v10

    aget v4, v2, v7

    aput v4, v3, v7

    aget v2, v2, v6

    aput v2, v3, v6

    :goto_1
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->l6:I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->m6:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->l6:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->d0()V

    return-void
.end method

.method public final T(Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;)V
    .locals 6

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

    move-object v0, p1

    check-cast v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$a;

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v4, "roi_start_x"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$a;->a:I

    int-to-float v4, v4

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v4, "roi_start_y"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$a;->b:I

    int-to-float v4, v4

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v4, "texture_height"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$a;->d:I

    int-to-float v4, v4

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v4, "texture_width"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$a;->e:I

    int-to-float v4, v4

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$a;->c:I

    const/4 v4, -0x1

    const/16 v5, 0xde1

    if-eq v1, v4, :cond_0

    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$a;->c:I

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "blush3DTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->b6:Z

    if-eqz v0, :cond_1

    const v0, 0x84d3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->Z5:I

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->a6:I

    const/16 v1, 0x13

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->b6:Z

    :cond_1
    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->f6:Z

    if-eqz v0, :cond_2

    const v0, 0x84d4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->d6:I

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->e6:I

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->f6:Z

    :cond_2
    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->b0(Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;)V

    return-void
.end method

.method public final d0()V
    .locals 9

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->d0()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v5, 0x2

    aput v3, v1, v5

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->R5:[F

    aget v6, v6, v3

    iget-object v7, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->n6:[F

    aget v7, v7, v3

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->o6:[F

    aget v7, v7, v3

    add-float/2addr v6, v7

    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->E5:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->M5:F

    iget v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->O5:F

    iget v7, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->N5:F

    iget v8, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->P5:F

    invoke-static {v0, v3, v6, v7, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->G5:I

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->S5:[F

    aget v6, v3, v2

    aget v7, v3, v4

    aget v3, v3, v5

    invoke-static {v0, v6, v7, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->C5:I

    aget v3, v1, v2

    aget v6, v1, v4

    aget v1, v1, v5

    invoke-static {v0, v3, v6, v1}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->H5:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->Q5:[F

    aget v3, v1, v2

    aget v6, v1, v4

    aget v1, v1, v5

    invoke-static {v0, v3, v6, v1}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->I5:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->W5:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->J5:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->X5:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->D5:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->T5:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->F5:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->U5:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->R0:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->V5:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->X0:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->Y5:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v1, "frame_buffer_width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v1, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v1, "frame_buffer_height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v1, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->K5:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    invoke-static {v0, v4, v1, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->L5:I

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    invoke-static {v0, v4, p0, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method

.method public final k0(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_left:F

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->M5:F

    iget v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_right:F

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->N5:F

    iget v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_top:F

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->O5:F

    iget v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_bottom:F

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->P5:F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->Q5:[F

    iget v5, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average:F

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    const/4 v7, 0x0

    aput v5, v4, v7

    iget v5, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_cb_average:F

    div-float/2addr v5, v6

    const/4 v8, 0x1

    aput v5, v4, v8

    iget v5, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_cr_average:F

    div-float/2addr v5, v6

    const/4 v6, 0x2

    aput v5, v4, v6

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->h0:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_valid:Z

    iput-boolean v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->i0:Z

    if-nez v5, :cond_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    iget v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->rotation:I

    iput v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->j0:I

    iget-boolean v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_flip:Z

    iput-boolean v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->k0:Z

    iget-object v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->pnp_matrix:[F

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->l0:[F

    const/16 v9, 0xc

    invoke-static {v5, v7, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->camera_matrix:[F

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->m0:[F

    const/16 v9, 0x9

    invoke-static {v5, v7, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_pnp_matrix:[F

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->n0:[F

    const/16 v9, 0x10

    invoke-static {v5, v7, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    if-eqz v5, :cond_1

    array-length v6, v5

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    if-lez v6, :cond_3

    aget-object v5, v5, v7

    if-eqz v5, :cond_3

    iget-boolean v6, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_texcoord_changed:Z

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->texcoords:[F

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->face_3d_xyz:[F

    iget-object v10, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_vectors:[F

    invoke-virtual {v5, v9, v10, v6}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->UpdateCoordinates([F[F[F)V

    :cond_3
    move v5, v7

    :goto_2
    const/4 v6, 0x3

    if-ge v5, v6, :cond_4

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->n6:[F

    iget-object v9, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_rgb:[F

    aget v9, v9, v5

    iget-object v10, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_rgb:[F

    aget v11, v10, v5

    sub-float/2addr v9, v11

    aput v9, v6, v5

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->o6:[F

    aget v9, v10, v5

    aput v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget v5, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_luma:F

    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_luma:F

    sub-float/2addr v5, v2

    iput v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->Y5:F

    iput-boolean v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->C0:Z

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->B0:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->Q()V

    :cond_5
    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_satin_texture_buffer:[B

    const/16 v5, 0xde1

    if-eqz v2, :cond_6

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->Z5:I

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_satin_texture_buffer:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->c6:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v12, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_width:I

    iget v13, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_height:I

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->c6:Ljava/nio/ByteBuffer;

    const/16 v9, 0xde1

    const/4 v10, 0x0

    const/16 v11, 0x1909

    const/4 v14, 0x0

    const/16 v15, 0x1909

    const/16 v16, 0x1401

    move-object/from16 v17, v2

    invoke-static/range {v9 .. v17}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iput-boolean v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->b6:Z

    :cond_6
    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_shimmer_texture_buffer:[B

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->d6:I

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_shimmer_texture_buffer:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->g6:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v12, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_width:I

    iget v13, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_height:I

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->g6:Ljava/nio/ByteBuffer;

    const/16 v9, 0xde1

    const/4 v10, 0x0

    const/16 v11, 0x1909

    const/4 v14, 0x0

    const/16 v15, 0x1909

    const/16 v16, 0x1401

    move-object/from16 v17, v1

    invoke-static/range {v9 .. v17}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iput-boolean v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->f6:Z

    :cond_7
    iget-object v1, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_probability_mask:[B

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->h6:I

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_probability_mask:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->k6:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v8}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    const/16 v2, 0xcf5

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iget v12, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v13, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->k6:Ljava/nio/ByteBuffer;

    const/16 v9, 0xde1

    const/4 v10, 0x0

    const/16 v11, 0x1909

    const/4 v14, 0x0

    const/16 v15, 0x1909

    const/16 v16, 0x1401

    move-object/from16 v17, v3

    invoke-static/range {v9 .. v17}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-virtual {v1, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iput-boolean v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->j6:Z

    :cond_8
    monitor-exit v4

    return-void

    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l0(I)V
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->R5:[F

    const/4 v2, 0x0

    aput v0, p0, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/4 v2, 0x1

    aput v0, p0, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    const/4 v0, 0x2

    aput p1, p0, v0

    return-void
.end method

.method public final m0(I)V
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->S5:[F

    const/4 v2, 0x0

    aput v0, p0, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/4 v2, 0x1

    aput v0, p0, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    const/4 v0, 0x2

    aput p1, p0, v0

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->onDestroy()V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->Z5:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->Z5:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->d6:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->d6:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->h6:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->h6:I

    return-void
.end method

.method public final onInit()V
    .locals 10

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->onInit()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "shimmer_color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->G5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "blush_color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->C5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "blush_type"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->D5:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "satinTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->a6:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "shimmerTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->e6:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_mask_roi"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->E5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "enable_blush"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->F5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_y_cb_cr_average"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->H5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "glow_intensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->I5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "shimmer_adjusted_intensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->J5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "dynamic_range_compress"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->X0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skinMapTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->i6:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputSkinToneMaskCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->l6:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_start"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->K5:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_end"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->L5:I

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2801

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v6, 0x2802

    const v7, 0x47012f00    # 33071.0f

    invoke-static {v3, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v8, 0x2803

    invoke-static {v3, v8, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v2, v1, v2

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->Z5:I

    const/4 v2, 0x1

    aget v9, v1, v2

    invoke-static {v3, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3, v8, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v2, v1, v2

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->d6:I

    const/4 v2, 0x2

    aget v9, v1, v2

    invoke-static {v3, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3, v6, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3, v8, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v0, v1, v2

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;->h6:I

    return-void
.end method
