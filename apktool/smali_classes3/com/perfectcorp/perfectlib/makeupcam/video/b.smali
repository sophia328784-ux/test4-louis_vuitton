.class final Lcom/perfectcorp/perfectlib/makeupcam/video/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Lcom/perfectcorp/perfectlib/makeupcam/video/a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/video/a;II)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/b;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/b;->a:I

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/b;->a:I

    if-lez v1, :cond_0

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/b;->b:I

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/b;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget v2, v1, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iget v1, v1, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    :goto_0
    rem-int/lit8 v3, v1, 0x10

    sub-int/2addr v1, v3

    rem-int/lit8 v3, v2, 0x10

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/b;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v4

    new-instance v5, Ljava/util/concurrent/FutureTask;

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/video/c;

    invoke-direct {v6, v3, v4, v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/video/c;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;Landroid/opengl/EGLContext;II)V

    const/4 v1, 0x0

    invoke-direct {v5, v6, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v1, v3, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v5}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/b;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->p:Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/b;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->k()V

    const/4 v1, 0x2

    new-array v3, v1, [I

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->t:[I

    new-array v3, v1, [I

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->u:[I

    new-array v3, v1, [Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->B:[Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x8ca6

    invoke-static {v4, v3, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->t:[I

    invoke-static {v1, v4, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->u:[I

    invoke-static {v1, v4, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_2

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->u:[I

    aget v5, v5, v4

    const/16 v6, 0xde1

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->C:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    iget v10, v5, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->f:I

    iget v11, v5, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->g:I

    const/16 v14, 0x1401

    const/4 v15, 0x0

    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/4 v12, 0x0

    const/16 v13, 0x1908

    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v5, 0x2800

    const v7, 0x46180400    # 9729.0f

    invoke-static {v6, v5, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2801

    invoke-static {v6, v5, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2802

    const v7, 0x47012f00    # 33071.0f

    invoke-static {v6, v5, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2803

    invoke-static {v6, v5, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->t:[I

    aget v5, v5, v4

    const v7, 0x8d40

    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->u:[I

    aget v5, v5, v4

    const v8, 0x8ce0

    invoke-static {v7, v8, v6, v5, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget v5, v3, v2

    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->B:[Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->t:[I

    aget v7, v7, v4

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->u:[I

    aget v8, v8, v4

    invoke-direct {v6, v7, v8}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$l;-><init>(II)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
