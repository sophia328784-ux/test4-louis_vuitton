.class public final Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;
.super Landroidx/camera/core/processing/OpenGlRenderer;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:I

.field public final p:Landroidx/camera/core/CompositionSettings;

.field public final q:Landroidx/camera/core/CompositionSettings;


# direct methods
.method public constructor <init>(Landroidx/camera/core/CompositionSettings;Landroidx/camera/core/CompositionSettings;)V
    .locals 1

    invoke-direct {p0}, Landroidx/camera/core/processing/OpenGlRenderer;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->n:I

    iput v0, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->o:I

    iput-object p1, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->p:Landroidx/camera/core/CompositionSettings;

    iput-object p2, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->q:Landroidx/camera/core/CompositionSettings;

    return-void
.end method


# virtual methods
.method public final e(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/processing/util/GraphicDeviceInfo;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-super {p0, p1}, Landroidx/camera/core/processing/OpenGlRenderer;->e(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/processing/util/GraphicDeviceInfo;

    move-result-object p1

    invoke-static {}, Landroidx/camera/core/processing/util/GLUtils;->g()I

    move-result v0

    iput v0, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->n:I

    invoke-static {}, Landroidx/camera/core/processing/util/GLUtils;->g()I

    move-result v0

    iput v0, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->o:I

    return-object p1
.end method

.method public final l(JLandroid/view/Surface;Landroidx/camera/core/SurfaceOutput;Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture;)V
    .locals 9

    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/camera/core/processing/util/GLUtils;->d(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->c:Ljava/lang/Thread;

    invoke-static {v0}, Landroidx/camera/core/processing/util/GLUtils;->c(Ljava/lang/Thread;)V

    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "The surface is not registered."

    invoke-static {v2, v1}, Landroidx/core/util/Preconditions;->f(Ljava/lang/String;Z)V

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/processing/util/OutputSurface;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroidx/camera/core/processing/util/GLUtils;->j:Landroidx/camera/core/processing/util/OutputSurface;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p3}, Landroidx/camera/core/processing/OpenGlRenderer;->b(Landroid/view/Surface;)Landroidx/camera/core/processing/util/OutputSurface;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v3, v1

    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->i:Landroid/view/Surface;

    if-eq p3, v0, :cond_2

    invoke-virtual {v3}, Landroidx/camera/core/processing/util/OutputSurface;->a()Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/processing/OpenGlRenderer;->f(Landroid/opengl/EGLSurface;)V

    iput-object p3, p0, Landroidx/camera/core/processing/OpenGlRenderer;->i:Landroid/view/Surface;

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget v7, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->n:I

    const/4 v8, 0x1

    iget-object v6, p0, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->p:Landroidx/camera/core/CompositionSettings;

    move-object v2, p0

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v2 .. v8}, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->m(Landroidx/camera/core/processing/util/OutputSurface;Landroidx/camera/core/SurfaceOutput;Landroid/graphics/SurfaceTexture;Landroidx/camera/core/CompositionSettings;IZ)V

    iget v7, v2, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->o:I

    const/4 v8, 0x0

    iget-object v6, v2, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->q:Landroidx/camera/core/CompositionSettings;

    move-object v5, p6

    invoke-virtual/range {v2 .. v8}, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->m(Landroidx/camera/core/processing/util/OutputSurface;Landroidx/camera/core/SurfaceOutput;Landroid/graphics/SurfaceTexture;Landroidx/camera/core/CompositionSettings;IZ)V

    iget-object p0, v2, Landroidx/camera/core/processing/OpenGlRenderer;->d:Landroid/opengl/EGLDisplay;

    invoke-virtual {v3}, Landroidx/camera/core/processing/util/OutputSurface;->a()Landroid/opengl/EGLSurface;

    move-result-object p4

    invoke-static {p0, p4, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    iget-object p0, v2, Landroidx/camera/core/processing/OpenGlRenderer;->d:Landroid/opengl/EGLDisplay;

    invoke-virtual {v3}, Landroidx/camera/core/processing/util/OutputSurface;->a()Landroid/opengl/EGLSurface;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    const/4 p0, 0x5

    const-string p1, "DualOpenGlRenderer"

    invoke-static {p0, p1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    const/4 p0, 0x0

    invoke-virtual {v2, p3, p0}, Landroidx/camera/core/processing/OpenGlRenderer;->i(Landroid/view/Surface;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final m(Landroidx/camera/core/processing/util/OutputSurface;Landroidx/camera/core/SurfaceOutput;Landroid/graphics/SurfaceTexture;Landroidx/camera/core/CompositionSettings;IZ)V
    .locals 13

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {p0, v2}, Landroidx/camera/core/processing/OpenGlRenderer;->k(I)V

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->c()I

    move-result v2

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->c()I

    move-result v2

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->b()I

    move-result v3

    invoke-static {v4, v4, v2, v3}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/16 v2, 0x10

    new-array v3, v2, [F

    move-object/from16 v5, p3

    invoke-virtual {v5, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    new-array v5, v2, [F

    move/from16 v7, p6

    invoke-interface {p2, v5, v3, v7}, Landroidx/camera/core/SurfaceOutput;->v([F[FZ)V

    iget-object v0, p0, Landroidx/camera/core/processing/OpenGlRenderer;->k:Landroidx/camera/core/processing/util/GLUtils$Program2D;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v0, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;

    const-string v6, "glUniformMatrix4fv"

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;

    iget v3, v3, Landroidx/camera/core/processing/util/GLUtils$SamplerShaderProgram;->f:I

    invoke-static {v3, v7, v4, v5, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v6}, Landroidx/camera/core/processing/util/GLUtils;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v3, Landroid/util/Size;

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->c()I

    move-result v5

    int-to-float v5, v5

    iget-object v8, v1, Landroidx/camera/core/CompositionSettings;->b:Landroidx/core/util/Pair;

    iget-object v9, v8, Landroidx/core/util/Pair;->a:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v9, v5

    float-to-int v5, v9

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->b()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v8, Landroidx/core/util/Pair;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    mul-float/2addr v10, v9

    float-to-int v9, v10

    invoke-direct {v3, v5, v9}, Landroid/util/Size;-><init>(II)V

    new-instance v5, Landroid/util/Size;

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->c()I

    move-result v9

    invoke-virtual {p1}, Landroidx/camera/core/processing/util/OutputSurface;->b()I

    move-result v10

    invoke-direct {v5, v9, v10}, Landroid/util/Size;-><init>(II)V

    new-array v9, v2, [F

    invoke-static {v9, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-array v10, v2, [F

    invoke-static {v10, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-array v2, v2, [F

    invoke-static {v2, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v9, v4, v11, v3, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v1, v1, Landroidx/camera/core/CompositionSettings;->a:Landroidx/core/util/Pair;

    iget-object v3, v8, Landroidx/core/util/Pair;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v11, 0x0

    cmpl-float v3, v3, v11

    if-nez v3, :cond_1

    iget-object v3, v8, Landroidx/core/util/Pair;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v11

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, v1, Landroidx/core/util/Pair;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v12, v8, Landroidx/core/util/Pair;->a:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float/2addr v3, v12

    iget-object v1, v1, Landroidx/core/util/Pair;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v8, v8, Landroidx/core/util/Pair;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v1, v8

    invoke-static {v10, v4, v3, v1, v11}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    move/from16 p3, v1

    move-object p0, v2

    move/from16 p5, v3

    move p1, v8

    move-object p2, v9

    move-object/from16 p4, v10

    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object v1, p0

    iget v2, v0, Landroidx/camera/core/processing/util/GLUtils$Program2D;->b:I

    invoke-static {v2, v7, v4, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v6}, Landroidx/camera/core/processing/util/GLUtils;->b(Ljava/lang/String;)V

    iget v0, v0, Landroidx/camera/core/processing/util/GLUtils$Program2D;->c:I

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v0, "glUniform1f"

    invoke-static {v0}, Landroidx/camera/core/processing/util/GLUtils;->b(Ljava/lang/String;)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2, v7, v2}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v4, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v1, "glDrawArrays"

    invoke-static {v1}, Landroidx/camera/core/processing/util/GLUtils;->b(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method
