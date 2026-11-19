.class public Lcom/iceteck/silicompressorr/videocompression/OutputSurface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public b:Ljavax/microedition/khronos/egl/EGL10;

.field public c:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public d:Ljavax/microedition/khronos/egl/EGLContext;

.field public e:Ljavax/microedition/khronos/egl/EGLSurface;

.field public f:Landroid/graphics/SurfaceTexture;

.field public g:Landroid/view/Surface;

.field public final h:Ljava/lang/Object;

.field public i:Z

.field public j:Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;

.field public final k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 222
    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->d:Ljavax/microedition/khronos/egl/EGLContext;

    .line 223
    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->k:I

    .line 226
    invoke-virtual {p0}, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->e()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->d:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->k:I

    if-lez p1, :cond_7

    if-lez p2, :cond_7

    iput p3, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->k:I

    mul-int p3, p1, p2

    mul-int/lit8 p3, p3, 0x4

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p3

    check-cast p3, Ljavax/microedition/khronos/egl/EGL10;

    iput-object p3, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {p3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object p3

    iput-object p3, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq p3, v2, :cond_6

    iget-object v2, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result p3

    if-eqz p3, :cond_5

    const/16 p3, 0xd

    new-array v4, p3, [I

    fill-array-data v4, :array_0

    const/4 v6, 0x1

    new-array v5, v6, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 p3, 0x1

    new-array v7, p3, [I

    iget-object v2, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p3

    if-eqz p3, :cond_4

    const/16 p3, 0x3098

    const/4 v2, 0x2

    const/16 v3, 0x3038

    filled-new-array {p3, v2, v3}, [I

    move-result-object p3

    iget-object v2, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v6, v5, v1

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v4, v6, v7, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p3

    iput-object p3, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p0}, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b()V

    iget-object p3, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->d:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz p3, :cond_3

    const/16 p3, 0x3057

    const/16 v2, 0x3056

    filled-new-array {p3, p1, v2, p2, v3}, [I

    move-result-object p1

    iget-object p2, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p3, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v1, v5, v1

    invoke-interface {p2, p3, v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {p0}, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b()V

    iget-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b()V

    iget-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, p3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->e()V

    return-void

    :cond_0
    const-string p0, "eglMakeCurrent failed"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "not configured for makeCurrent"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "surface was null"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "null context"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p0, "unable to find RGB888+pbuffer EGL config"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    const-string p0, "unable to initialize EGL10"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p0, "unable to get EGL10 display"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {}, Lct0;->c()V

    throw v0

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3033
        0x1
        0x3040
        0x4
        0x3038
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->h:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->h:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    iget-boolean v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Surface frame wait timed out"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->i:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->j:Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    const-string p0, "EGL error encountered (see log)"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 10

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->j:Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;

    iget-object p0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->f:Landroid/graphics/SurfaceTexture;

    iget-object v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a:Ljava/nio/FloatBuffer;

    const-string v2, "onDrawFrame start"

    invoke-static {v2}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->c:[F

    invoke-virtual {p0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget p0, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->d:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p0, "glUseProgram"

    invoke-static {p0}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    const p0, 0x84c0

    invoke-static {p0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p0, 0x8d65

    iget v3, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->e:I

    invoke-static {p0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->h:I

    const/16 v7, 0x14

    iget-object v8, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v3, "glVertexAttribPointer maPosition"

    invoke-static {v3}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    iget v3, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->h:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v3, "glEnableVertexAttribArray maPositionHandle"

    invoke-static {v3}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->i:I

    const/16 v8, 0x14

    iget-object v9, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v1, "glVertexAttribPointer maTextureHandle"

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    iget v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->i:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v1, "glEnableVertexAttribArray maTextureHandle"

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    iget v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->g:I

    const/4 v3, 0x1

    invoke-static {v1, v3, p0, v2, p0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->f:I

    iget-object v0, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->b:[F

    invoke-static {v1, v3, p0, v0, p0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p0, "glDrawArrays"

    invoke-static {p0}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_0
    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_1
    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->g:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->d:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->b:Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->j:Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->g:Landroid/view/Surface;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->f:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public final e()V
    .locals 8

    new-instance v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;

    iget v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->k:I

    invoke-direct {v0, v1}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;-><init>(I)V

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->j:Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;

    const v1, 0x8b31

    const-string v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v1, v2}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->b(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    :goto_0
    move v5, v3

    goto :goto_1

    :cond_0
    const v4, 0x8b30

    const-string v5, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v4, v5}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->b(ILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    const-string v6, "glCreateProgram"

    invoke-static {v6}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v1, "glAttachShader"

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v1, v2, [I

    const v4, 0x8b82

    invoke-static {v5, v4, v1, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v1, v3

    if-eq v1, v2, :cond_3

    invoke-static {v5}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    :goto_1
    iput v5, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->d:I

    if-eqz v5, :cond_9

    const-string v1, "aPosition"

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->h:I

    const-string v1, "glGetAttribLocation aPosition"

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    iget v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->h:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_8

    iget v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->d:I

    const-string v5, "aTextureCoord"

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->i:I

    const-string v1, "glGetAttribLocation aTextureCoord"

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    iget v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->i:I

    if-eq v1, v4, :cond_7

    iget v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->d:I

    const-string v5, "uMVPMatrix"

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->f:I

    const-string v1, "glGetUniformLocation uMVPMatrix"

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    iget v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->f:I

    if-eq v1, v4, :cond_6

    iget v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->d:I

    const-string v5, "uSTMatrix"

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->g:I

    const-string v1, "glGetUniformLocation uSTMatrix"

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    iget v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->g:I

    if-eq v1, v4, :cond_5

    new-array v1, v2, [I

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v1, v3

    iput v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->e:I

    const v2, 0x8d65

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v1, "glBindTexture mTextureID"

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    const/16 v1, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v4, 0x812f

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v1, "glTexParameter"

    invoke-static {v1}, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->b:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v1, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->j:I

    if-eqz v1, :cond_4

    int-to-float v4, v1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v2, v0, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->b:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_4
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->j:Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;

    iget v1, v1, Lcom/iceteck/silicompressorr/videocompression/TextureRenderer;->e:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->f:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->g:Landroid/view/Surface;

    return-void

    :cond_5
    const-string p0, "Could not get attrib location for uSTMatrix"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p0, "Could not get attrib location for uMVPMatrix"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string p0, "Could not get attrib location for aTextureCoord"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string p0, "Could not get attrib location for aPosition"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p0, "failed creating program"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->i:Z

    iget-object p0, p0, Lcom/iceteck/silicompressorr/videocompression/OutputSurface;->h:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
