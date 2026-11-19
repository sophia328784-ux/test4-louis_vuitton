.class final Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# static fields
.field public static final k:[F


# instance fields
.field public a:Landroid/opengl/EGLDisplay;

.field public b:Landroid/opengl/EGLContext;

.field public c:Landroid/opengl/EGLSurface;

.field public d:Landroid/view/Surface;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/nio/FloatBuffer;

.field public final j:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->k:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;Landroid/view/Surface;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->b:Landroid/opengl/EGLContext;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->c:Landroid/opengl/EGLSurface;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [I

    invoke-static {v1, v3, v0, v4, v0}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-array v6, v2, [Landroid/opengl/EGLConfig;

    const/16 v1, 0xd

    new-array v4, v1, [I

    fill-array-data v4, :array_0

    new-array v9, v2, [I

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x3098

    const/4 v2, 0x2

    const/16 v3, 0x3038

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    aget-object v4, v6, v0

    invoke-static {v2, v4, p1, v1, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->b:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    aget-object p1, v6, v0

    filled-new-array {v3}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v2, p1, p2, v1, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->c:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->d:Landroid/view/Surface;

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->b:Landroid/opengl/EGLContext;

    invoke-static {p2, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string p2, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-static {p1, p2}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->e:I

    if-nez p1, :cond_6

    :goto_0
    return-void

    :cond_6
    const-string p2, "position"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->f:I

    const-string p2, "inputTextureCoordinate"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->g:I

    const-string p2, "inputImageTexture"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->h:I

    const/16 p1, 0x20

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->i:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->k:[F

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->j:Ljava/nio/FloatBuffer;

    sget-object p0, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a:[F

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

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
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x168

    if-ne p1, v0, :cond_1

    :cond_0
    sget-object p1, Lcom/cyberlink/clgpuimage/Rotation;->NORMAL:Lcom/cyberlink/clgpuimage/Rotation;

    goto :goto_0

    :cond_1
    const-string p0, " is an unknown rotation. Needs to be either 0, 90, 180 or 270!"

    invoke-static {p1, p0}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object p1, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_270:Lcom/cyberlink/clgpuimage/Rotation;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_180:Lcom/cyberlink/clgpuimage/Rotation;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_90:Lcom/cyberlink/clgpuimage/Rotation;

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->b(Lcom/cyberlink/clgpuimage/Rotation;ZZ)[F

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->c:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->c:Landroid/opengl/EGLSurface;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->b:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v1, v2, :cond_1

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    :cond_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->d:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->d:Landroid/view/Surface;

    :cond_2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->a:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->b:Landroid/opengl/EGLContext;

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(I)V
    .locals 9

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->i:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->i:Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->f:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->j:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->g:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->g:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, -0x1

    const/16 v4, 0xde1

    if-eq p1, v3, :cond_0

    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->h:I

    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    const/4 p0, 0x5

    const/4 p1, 0x4

    invoke-static {p0, v1, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public final finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$m;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
