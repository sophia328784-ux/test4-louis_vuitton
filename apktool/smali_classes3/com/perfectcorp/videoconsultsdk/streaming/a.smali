.class public final Lcom/perfectcorp/videoconsultsdk/streaming/a;
.super Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;

# interfaces
.implements Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/videoconsultsdk/streaming/a$a;,
        Lcom/perfectcorp/videoconsultsdk/streaming/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;",
        "Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener<",
        "Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final z:[F


# instance fields
.field public final p:Ljava/util/concurrent/atomic/AtomicInteger;

.field public q:[I

.field public r:[I

.field public final s:Ljava/util/concurrent/atomic/AtomicLong;

.field public final t:Ljava/util/concurrent/atomic/AtomicLong;

.field public u:[Lcom/perfectcorp/videoconsultsdk/streaming/a$c;

.field public v:J

.field public final w:[I

.field public final x:[I

.field public final y:Lcom/perfectcorp/videoconsultsdk/streaming/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->z:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-direct {p0, v0, v1}, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->s:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->t:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->w:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->x:[I

    new-instance v1, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;

    invoke-direct {v1}, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->y:Lcom/perfectcorp/videoconsultsdk/streaming/a$a;

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;->SetEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;

    iget-object p0, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->t:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->d:J

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final j(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 14

    move-object/from16 v0, p3

    iget-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->w:[I

    const/4 v2, 0x2

    aget v3, v1, v2

    const/4 v4, 0x3

    aget v1, v1, v4

    iget v5, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iget v6, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    iget-object v7, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->y:Lcom/perfectcorp/videoconsultsdk/streaming/a$a;

    iget-object v8, v7, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->b:Ljava/nio/FloatBuffer;

    iget-object v9, v7, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->h:[F

    iget-object v10, v7, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->a:[F

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v12, v7, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->g:[F

    array-length v13, v12

    invoke-virtual {v0, v12, v11, v13}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, v7, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->c:I

    const/4 v13, 0x1

    if-ne v0, v3, :cond_1

    iget v0, v7, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->d:I

    if-ne v0, v1, :cond_1

    iget v0, v7, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->e:I

    if-ne v0, v5, :cond_1

    iget v0, v7, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->f:I

    if-ne v0, v6, :cond_1

    invoke-static {v12, v9}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v13

    :goto_1
    if-eqz v0, :cond_2

    iput v3, v7, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->c:I

    iput v1, v7, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->d:I

    iput v5, v7, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->e:I

    iput v6, v7, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->f:I

    array-length v7, v12

    invoke-static {v12, v11, v9, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-eqz v0, :cond_4

    int-to-float v0, v5

    int-to-float v5, v6

    div-float v6, v0, v5

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v7, v3, v1

    cmpl-float v6, v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v9, 0x0

    if-lez v6, :cond_3

    mul-float/2addr v5, v3

    div-float/2addr v5, v1

    sub-float v1, v0, v5

    div-float/2addr v1, v7

    div-float/2addr v1, v0

    move v0, v9

    move v9, v1

    goto :goto_2

    :cond_3
    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    sub-float v0, v5, v0

    div-float/2addr v0, v7

    div-float/2addr v0, v5

    :goto_2
    aget v1, v12, v11

    invoke-static {v1, v9}, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->a(FF)F

    move-result v1

    aput v1, v10, v11

    aget v1, v12, v13

    invoke-static {v1, v0}, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->a(FF)F

    move-result v1

    aput v1, v10, v13

    aget v1, v12, v2

    invoke-static {v1, v9}, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->a(FF)F

    move-result v1

    aput v1, v10, v2

    aget v1, v12, v4

    invoke-static {v1, v0}, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->a(FF)F

    move-result v1

    aput v1, v10, v4

    const/4 v1, 0x4

    aget v2, v12, v1

    invoke-static {v2, v9}, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->a(FF)F

    move-result v2

    aput v2, v10, v1

    const/4 v1, 0x5

    aget v2, v12, v1

    invoke-static {v2, v0}, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->a(FF)F

    move-result v2

    aput v2, v10, v1

    const/4 v1, 0x6

    aget v2, v12, v1

    invoke-static {v2, v9}, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->a(FF)F

    move-result v2

    aput v2, v10, v1

    const/4 v1, 0x7

    aget v2, v12, v1

    invoke-static {v2, v0}, Lcom/perfectcorp/videoconsultsdk/streaming/a$a;->a(FF)F

    move-result v0

    aput v0, v10, v1

    invoke-virtual {v8, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_4
    move-object/from16 v0, p2

    invoke-super {p0, p1, v0, v8}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public final k()V
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->u:[Lcom/perfectcorp/videoconsultsdk/streaming/a$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    monitor-enter v4

    :catch_0
    :goto_1
    :try_start_0
    iget-boolean v5, v4, Lcom/perfectcorp/videoconsultsdk/streaming/a$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    monitor-exit v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->r:[I

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    array-length v3, v0

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v2, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->r:[I

    :cond_2
    iget-object v0, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->q:[I

    if-eqz v0, :cond_3

    array-length v3, v0

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v2, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->q:[I

    :cond_3
    iput-object v2, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->u:[Lcom/perfectcorp/videoconsultsdk/streaming/a$c;

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/videoconsultsdk/streaming/a;->k()V

    return-void
.end method

.method public final onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 9

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f()V

    iget-object v0, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->w:[I

    const/16 v1, 0xba2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->s:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->s:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v3, v3, v7

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->s:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->u:[Lcom/perfectcorp/videoconsultsdk/streaming/a$c;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->u:[Lcom/perfectcorp/videoconsultsdk/streaming/a$c;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v3, v3, v1

    iget-boolean v4, v3, Lcom/perfectcorp/videoconsultsdk/streaming/a$c;->b:Z

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->v:J

    iget-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->x:[I

    const v4, 0x8ca6

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget v1, v3, Lcom/perfectcorp/videoconsultsdk/streaming/a$c;->a:I

    const v4, 0x8d40

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v1, 0x170

    const/16 v5, 0x280

    invoke-static {v2, v2, v1, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-super {p0, p1, p2, p3}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iget-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->x:[I

    aget v1, v1, v2

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->w:[I

    aget v2, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v6, v1, v6

    const/4 v7, 0x3

    aget v1, v1, v7

    invoke-static {v2, v5, v6, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/perfectcorp/videoconsultsdk/streaming/a;->j(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-boolean v4, v3, Lcom/perfectcorp/videoconsultsdk/streaming/a$c;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v3

    iget-object p0, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    :cond_3
    iget-wide v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->v:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->v:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    const-string v1, "VideoConsultationStreamingFilter"

    const-string v2, "Encoder stuck!"

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iput-wide v5, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->v:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :goto_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0

    :cond_4
    :goto_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/perfectcorp/videoconsultsdk/streaming/a;->j(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    :goto_5
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0
.end method

.method public final onInit()V
    .locals 15

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Lcom/perfectcorp/videoconsultsdk/streaming/a;->k()V

    const/4 v0, 0x5

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->q:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->r:[I

    new-array v1, v0, [Lcom/perfectcorp/videoconsultsdk/streaming/a$c;

    iput-object v1, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->u:[Lcom/perfectcorp/videoconsultsdk/streaming/a$c;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x8ca6

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v2, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->q:[I

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v2, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->r:[I

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->r:[I

    aget v4, v4, v2

    const/16 v5, 0xde1

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v13, 0x1401

    const/4 v14, 0x0

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x170

    const/16 v10, 0x280

    const/4 v11, 0x0

    const/16 v12, 0x1908

    invoke-static/range {v6 .. v14}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v4, 0x2800

    const v6, 0x46180400    # 9729.0f

    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2801

    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2802

    const v6, 0x47012f00    # 33071.0f

    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2803

    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v4, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->q:[I

    aget v4, v4, v2

    const v6, 0x8d40

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v4, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->r:[I

    aget v4, v4, v2

    const v7, 0x8ce0

    invoke-static {v6, v7, v5, v4, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget v4, v1, v3

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v4, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->u:[Lcom/perfectcorp/videoconsultsdk/streaming/a$c;

    new-instance v5, Lcom/perfectcorp/videoconsultsdk/streaming/a$c;

    iget-object v6, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->q:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/perfectcorp/videoconsultsdk/streaming/a;->r:[I

    aget v7, v7, v2

    invoke-direct {v5, v6, v7}, Lcom/perfectcorp/videoconsultsdk/streaming/a$c;-><init>(II)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
