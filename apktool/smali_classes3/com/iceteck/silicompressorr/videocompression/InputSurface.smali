.class public Lcom/iceteck/silicompressorr/videocompression/InputSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/opengl/EGLDisplay;

.field public b:Landroid/opengl/EGLContext;

.field public c:Landroid/opengl/EGLSurface;

.field public d:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->d:Landroid/view/Surface;

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    new-array v3, v1, [I

    const/4 v4, 0x1

    invoke-static {v0, v3, p1, v3, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    const/4 v10, 0x1

    new-array v8, v10, [Landroid/opengl/EGLConfig;

    new-array v11, v4, [I

    iget-object v5, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a:Landroid/opengl/EGLDisplay;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x3098

    const/16 v3, 0x3038

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a:Landroid/opengl/EGLDisplay;

    aget-object v5, v8, p1

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v5, v6, v0, p1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->b:Landroid/opengl/EGLContext;

    move v0, p1

    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    const/16 v5, 0x3000

    if-eq v1, v5, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    const-string v1, "EGL error encountered (see log)"

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->b:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_4

    filled-new-array {v3}, [I

    move-result-object v0

    iget-object v3, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a:Landroid/opengl/EGLDisplay;

    aget-object v6, v8, p1

    iget-object v7, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->d:Landroid/view/Surface;

    invoke-static {v3, v6, v7, v0, p1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->c:Landroid/opengl/EGLSurface;

    :goto_1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    if-eq v0, v5, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->c:Landroid/opengl/EGLSurface;

    if-eqz p0, :cond_2

    return-void

    :cond_2
    const-string p0, "surface was null"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v1}, Lv7;->h(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p0, "null context"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v1}, Lv7;->h(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p0, "unable to find RGB888+recordable ES2 EGL config"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v2

    :cond_7
    iput-object v2, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a:Landroid/opengl/EGLDisplay;

    const-string p0, "unable to initialize EGL14"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string p0, "unable to get EGL14 display"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    throw v2

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->b:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    :cond_0
    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    iget-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->a:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->b:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->c:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/iceteck/silicompressorr/videocompression/InputSurface;->d:Landroid/view/Surface;

    return-void
.end method
