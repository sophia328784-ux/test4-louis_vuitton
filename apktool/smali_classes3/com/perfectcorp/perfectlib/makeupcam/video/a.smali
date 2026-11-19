.class public final Lcom/perfectcorp/perfectlib/makeupcam/video/a;
.super Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;

# interfaces
.implements Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;
.implements Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/video/a$c;,
        Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;,
        Lcom/perfectcorp/perfectlib/makeupcam/video/a$g;,
        Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;,
        Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;,
        Lcom/perfectcorp/perfectlib/makeupcam/video/a$k;,
        Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;,
        Lcom/perfectcorp/perfectlib/makeupcam/video/a$b;,
        Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;,
        Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;,
        Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;,
        Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;",
        "Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener<",
        "Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;",
        ">;",
        "Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$Renderer;"
    }
.end annotation


# instance fields
.field public final A:Ljava/util/concurrent/atomic/AtomicInteger;

.field public B:[Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;

.field public C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

.field public D:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

.field public E:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

.field public volatile F:Z

.field public final G:Ljava/lang/Iterable;

.field public final H:[I

.field public final I:[I

.field public p:Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;

.field public q:Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;

.field public r:Ljava/lang/Thread;

.field public s:Landroid/os/HandlerThread;

.field public t:[I

.field public u:[I

.field public final v:Ljava/util/concurrent/atomic/AtomicLong;

.field public final w:Ljava/util/concurrent/atomic/AtomicLong;

.field public final x:Ljava/util/concurrent/atomic/AtomicLong;

.field public final y:Ljava/util/concurrent/atomic/AtomicLong;

.field public final z:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 5

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-direct {p0, v0, v1}, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->v:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->w:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->x:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->y:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->z:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->H:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->I:[I

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;->SetEnabled(Z)V

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->G:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->w:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;->d:J

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final c(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public final j()V
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->y:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->z:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->y:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->x:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

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
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->B:[Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;

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
    iget-boolean v5, v4, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;->d:Z
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
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->u:[I

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    array-length v3, v0

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->u:[I

    :cond_2
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->t:[I

    if-eqz v0, :cond_3

    array-length v3, v0

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->t:[I

    :cond_3
    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->B:[Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->k()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->G:Ljava/lang/Iterable;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 9

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->w:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->v:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->v:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v3, v3, v7

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->v:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->w:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

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
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->B:[Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->B:[Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v3, v3, v1

    iget-boolean v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;->d:Z

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->H:[I

    const/16 v4, 0xba2

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->I:[I

    const v4, 0x8ca6

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget v1, v3, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;->a:I

    const v4, 0x8d40

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    iget v5, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->f:I

    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->g:I

    invoke-static {v2, v2, v5, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-super {p0, p1, p2, p3}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->I:[I

    aget v1, v1, v2

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->H:[I

    aget v2, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v6, v1, v6

    const/4 v7, 0x3

    aget v1, v1, v7

    invoke-static {v2, v5, v6, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-super {p0, p1, p2, p3}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-boolean v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;->d:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v3

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->w:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->v:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    sub-long/2addr p1, v1

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    sub-long/2addr p1, v1

    iput-wide p1, v3, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;->c:J

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;

    invoke-virtual {p0, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->G:Ljava/lang/Iterable;

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;

    invoke-virtual {p2, p0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->b(Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$Renderer;)V

    goto :goto_4

    :goto_5
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0
.end method

.method public final onInit()V
    .locals 1

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->G:Ljava/lang/Iterable;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 3

    const-string v0, "onOutputSizeChanged width "

    const-string v1, " height "

    invoke-static {p1, p2, v0, v1}, Lo60;->h(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "LiveRecordingFilter"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    return-void
.end method
