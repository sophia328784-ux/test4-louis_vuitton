.class public final Lcom/cyberlink/clgpuimage/PixelBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserImpl;,
        Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooserBuilder;,
        Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;
    }
.end annotation


# instance fields
.field public a:Landroid/opengl/GLSurfaceView$Renderer;

.field public final b:I

.field public final c:I

.field public final d:Ljavax/microedition/khronos/egl/EGL10;

.field public final e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public final f:Ljavax/microedition/khronos/egl/EGLConfig;

.field public final g:Ljavax/microedition/khronos/egl/EGLContext;

.field public final h:Ljavax/microedition/khronos/egl/EGLSurface;

.field public final i:Ljavax/microedition/khronos/opengles/GL10;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjavax/microedition/khronos/egl/EGLContext;)V
    .locals 6

    .line 271
    sget-object v4, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;->a:Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/cyberlink/clgpuimage/PixelBuffer;-><init>(IILjavax/microedition/khronos/egl/EGLContext;Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;Z)V

    return-void
.end method

.method public constructor <init>(IILjavax/microedition/khronos/egl/EGLContext;Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput p1, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->b:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->c:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/16 v3, 0x3057

    const/16 v4, 0x3056

    const/16 v5, 0x3038

    filled-new-array {v3, p1, v4, p2, v5}, [I

    move-result-object p1

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p2

    check-cast p2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz p5, :cond_1

    :try_start_0
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->a()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->g()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "EGL_NO_DISPLAY"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p2, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-eqz p5, :cond_3

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->a()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->g()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "eglInitialize"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-interface {p4, p2, v3, p5}, Lcom/cyberlink/clgpuimage/PixelBuffer$EGLConfigChooser;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Z)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p4

    iput-object p4, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v2, 0x3098

    filled-new-array {v2, v1, v5}, [I

    move-result-object v1

    invoke-interface {p2, v3, p4, p3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p3

    iput-object p3, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->g:Ljavax/microedition/khronos/egl/EGLContext;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz p5, :cond_5

    if-eq p3, v1, :cond_4

    :try_start_1
    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->a()V

    goto :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_7

    :cond_4
    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->g()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "EGL_NO_CONTEXT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    invoke-interface {p2, v3, p4, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->h:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object p4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz p5, :cond_7

    if-eq p1, p4, :cond_6

    :try_start_2
    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->a()V

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_6

    :cond_6
    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->g()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "EGL_NO_SURFACE"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    invoke-interface {p2, v3, p1, p1, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p5, :cond_9

    if-eqz p1, :cond_8

    :try_start_3
    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->a()V

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->g()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "eglMakeCurrent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    iget-object p2, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p3, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {p2, p3, p4, p4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->g()Z

    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_9
    :goto_5
    invoke-virtual {p3}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/opengles/GL10;

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->i:Ljavax/microedition/khronos/opengles/GL10;

    const/16 p1, 0xba2

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p1

    const p2, 0x8ca6

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/IntBuffer;->get(I)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->j:Ljava/lang/String;

    return-void

    :goto_6
    :try_start_5
    iget-object p2, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p3, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p4, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->g()Z

    throw p1
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_7
    :try_start_6
    iget-object p2, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p3, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p4, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->g()Z

    throw p1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_8
    iget-object p2, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {p2, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    invoke-static {}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->g()Z

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->h:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/PixelBuffer;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void
.end method
