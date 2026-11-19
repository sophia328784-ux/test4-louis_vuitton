.class public final Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/FramebufferRenderer;


# instance fields
.field public final a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

.field public final b:[I

.field public volatile c:Ljava/lang/Thread;

.field public volatile d:Z

.field public volatile e:Z

.field public f:I

.field public g:Landroid/opengl/EGLContext;

.field public final h:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public volatile i:Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>()V

    new-instance v1, Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;-><init>(Lcom/cyberlink/clgpuimage/GPUImageFilter;Z)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->b:[I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object v0, Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;->NOP:Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->i:Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;

    sget-object p0, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->FIT_XY_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    invoke-virtual {v1, p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->j(Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;)V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 2

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->b:[I

    invoke-interface {v0, v1, p1, p2, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "[eglGetConfigAttrib] true"

    invoke-static {p1}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    aget p0, p0, v0

    return p0

    :cond_0
    const-string p0, "[eglGetConfigAttrib] false"

    invoke-static {p0}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    const-string p0, "Can not get EGL config attribute "

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public final onDraw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 8

    const/4 v0, 0x3

    const-string v1, "FramebufferRendererImpl"

    const-string v2, "[onDraw] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->c(Ljava/lang/String;)Z

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->e:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->d:Z

    if-eqz v2, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->c:Ljava/lang/Thread;

    if-ne v2, v3, :cond_8

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v2

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const-string v4, "[eglGetCurrentContext]"

    if-eq v2, v3, :cond_7

    invoke-static {v4}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/opengl/EGLObjectHandle;->getNativeHandle()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->g:Landroid/opengl/EGLContext;

    invoke-virtual {v4}, Landroid/opengl/EGLObjectHandle;->getNativeHandle()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    const v2, 0x8ca6

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->b:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const-string v2, "[glGetIntegerv] GL_FRAMEBUFFER_BINDING"

    invoke-static {v2}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->b:[I

    aget v2, v2, v4

    const v3, 0x8d40

    invoke-static {v3, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v5, "[glBindFramebuffer]"

    invoke-static {v5}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const p2, 0x8cd0

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->b:[I

    const v6, 0x8ce0

    invoke-static {v3, v6, p2, v5, v4}, Landroid/opengl/GLES20;->glGetFramebufferAttachmentParameteriv(III[II)V

    const-string p2, "[glGetFramebufferAttachmentParameteriv] OBJECT_TYPE"

    invoke-static {p2}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->b:[I

    aget v5, p2, v4

    const/16 v7, 0x1702

    if-ne v5, v7, :cond_3

    iget v5, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->f:I

    if-ne v5, v0, :cond_4

    const v5, 0x8212

    invoke-static {v3, v6, v5, p2, v4}, Landroid/opengl/GLES20;->glGetFramebufferAttachmentParameteriv(III[II)V

    const-string p2, "[glGetFramebufferAttachmentParameteriv] RED_SIZE"

    invoke-static {p2}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->b:[I

    aget v5, p2, v4

    const/16 v7, 0x8

    if-ne v5, v7, :cond_2

    const v5, 0x8213

    invoke-static {v3, v6, v5, p2, v4}, Landroid/opengl/GLES20;->glGetFramebufferAttachmentParameteriv(III[II)V

    const-string p2, "[glGetFramebufferAttachmentParameteriv] GREEN_SIZE"

    invoke-static {p2}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->b:[I

    aget v5, p2, v4

    if-ne v5, v7, :cond_1

    const v5, 0x8214

    invoke-static {v3, v6, v5, p2, v4}, Landroid/opengl/GLES20;->glGetFramebufferAttachmentParameteriv(III[II)V

    const-string p2, "[glGetFramebufferAttachmentParameteriv] BLUE_SIZE"

    invoke-static {p2}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->b:[I

    aget p2, p2, v4

    if-ne p2, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Framebuffer\'s blue size is not 8."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Framebuffer\'s green size is not 8."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "Framebuffer\'s red size is not 8."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "Framebuffer isn\'t bound with a texture"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string p0, "[onDraw] end"

    invoke-static {p0}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->c(Ljava/lang/String;)Z

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string p0, "EGL context changed without calling #onEGLContextCreated()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-static {v4}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->c(Ljava/lang/String;)Z

    const-string p0, "EGL_NO_CONTEXT"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string p0, "Calling thread is different from the one that called #onEGLContextCreated()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p0, "Doesn\'t ever call #onEGLContextCreated()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_a
    const-string p0, "Renderer had been released."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final onEGLContextCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7

    const/4 v0, 0x3

    const-string v1, "FramebufferRendererImpl"

    const-string v2, "[onEGLContextCreated] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->c(Ljava/lang/String;)Z

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->e:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->d:Z

    if-eqz v2, :cond_0

    const-string v2, "EGL context lost?"

    const/4 v3, 0x5

    invoke-static {v3, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->c:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->c:Ljava/lang/Thread;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "Calling thread is different from the last call"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v2

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    const-string v4, "[eglGetCurrentDisplay]"

    if-eq v2, v3, :cond_b

    invoke-static {v4}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v3

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const-string v5, "[eglGetCurrentContext]"

    if-eq v3, v4, :cond_a

    invoke-static {v5}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    const/16 v4, 0x3098

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->b:[I

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "[eglQueryContext] true"

    invoke-static {v2}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->b:[I

    aget v2, v2, v6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    if-ne v2, v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "Unsupported EGL context client version "

    invoke-static {v2, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const/16 v3, 0x3024

    invoke-virtual {p0, p2, v3}, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_8

    const/16 v3, 0x3023

    invoke-virtual {p0, p2, v3}, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    if-ne v3, v4, :cond_7

    const/16 v3, 0x3022

    invoke-virtual {p0, p2, v3}, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    if-ne v3, v4, :cond_6

    const/16 v3, 0x3040

    invoke-virtual {p0, p2, v3}, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->a(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    and-int/lit8 v4, v3, 0x44

    if-eqz v4, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->c:Ljava/lang/Thread;

    iput v2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->f:I

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->g:Landroid/opengl/EGLContext;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-virtual {v2, p1, p2}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    const-string p1, "[onEGLContextCreated] end"

    invoke-static {p1}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->c(Ljava/lang/String;)Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->d:Z

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string p0, "Unsupported EGL renderable type "

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p0, "Unsupported EGL blue size "

    invoke-static {v3, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string p0, "Unsupported EGL green size "

    invoke-static {v3, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string p0, "Unsupported EGL red size "

    invoke-static {v3, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p0, "[eglQueryContext] false"

    invoke-static {p0}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->a(Ljava/lang/String;)V

    const-string p0, "Can not get EGL context client version."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {v5}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->c(Ljava/lang/String;)Z

    const-string p0, "EGL_NO_CONTEXT"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-static {v4}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->c(Ljava/lang/String;)Z

    const-string p0, "EGL_NO_DISPLAY"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_c
    const-string p0, "Renderer had been released."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final release(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    iget-boolean p1, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->e:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->e:Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g()V

    return-void
.end method

.method public final setOnDirtyListener(Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/internal/FramebufferRendererImpl;->i:Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;

    return-void
.end method
