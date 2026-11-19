.class public abstract Lcom/otaliastudios/cameraview/filter/BaseFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/otaliastudios/cameraview/filter/Filter;


# static fields
.field public static final d:Lcom/otaliastudios/cameraview/CameraLogger;


# instance fields
.field public a:Lcom/otaliastudios/opengl/program/GlTextureProgram;

.field public b:Lcom/otaliastudios/opengl/draw/GlRect;

.field public c:Lcom/otaliastudios/cameraview/size/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BaseFilter"

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->d:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->a:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->b:Lcom/otaliastudios/opengl/draw/GlRect;

    return-void
.end method


# virtual methods
.method public final a()Lcom/otaliastudios/cameraview/filter/BaseFilter;
    .locals 3

    const-string v0, "Filters should have a public no-arguments constructor."

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/filter/BaseFilter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->c:Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget v0, v0, Lcom/otaliastudios/cameraview/size/Size;->c:I

    invoke-virtual {v2, v1, v0}, Lcom/otaliastudios/cameraview/filter/BaseFilter;->h(II)V

    :cond_0
    instance-of v0, p0, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;

    if-eqz v0, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;

    move-object v1, p0

    check-cast v1, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;

    invoke-interface {v1}, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;->e()F

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/filter/OneParameterFilter;->j()V

    :cond_1
    instance-of v0, p0, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;

    if-eqz v0, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;

    check-cast p0, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;

    invoke-interface {p0}, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;->c()F

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/filter/TwoParameterFilter;->i()V

    :cond_2
    return-object v2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {v0, p0}, Lr81;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :goto_1
    invoke-static {v0, p0}, Lr81;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    return-object p0
.end method

.method public final f([F)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->a:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const-string v0, "Filter.draw() called after destroying the filter. This can happen rarely because of threading."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/filter/BaseFilter;->d:Lcom/otaliastudios/cameraview/CameraLogger;

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, p1

    iput-object v3, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->f:[F

    iget-object v1, v0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->a:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    iget-object v3, v0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->b:Lcom/otaliastudios/opengl/draw/GlRect;

    iget-object v4, v3, Lcom/otaliastudios/opengl/draw/GlDrawable;->a:[F

    iget-object v5, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->l:Landroid/graphics/RectF;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->k:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    iget v6, v6, Lcom/otaliastudios/opengl/program/GlProgramLocation;->a:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v4, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v4, "glUniformMatrix4fv"

    invoke-static {v4}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->g:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget v6, v6, Lcom/otaliastudios/opengl/program/GlProgramLocation;->a:I

    iget-object v9, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->f:[F

    invoke-static {v6, v7, v8, v9, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v4}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v4, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->j:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    iget v6, v4, Lcom/otaliastudios/opengl/program/GlProgramLocation;->b:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v6, "glEnableVertexAttribArray"

    invoke-static {v6}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    iget v9, v4, Lcom/otaliastudios/opengl/program/GlProgramLocation;->b:I

    sget v11, Lcom/otaliastudios/opengl/internal/GlKt;->b:I

    invoke-virtual {v3}, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;->b()I

    move-result v4

    mul-int/lit8 v13, v4, 0x4

    iget-object v14, v3, Lcom/otaliastudios/opengl/draw/GlRect;->c:Ljava/nio/FloatBuffer;

    const/4 v10, 0x2

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v4, "glVertexAttribPointer"

    invoke-static {v4}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->i:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    if-nez v9, :cond_2

    goto/16 :goto_9

    :cond_2
    iget-object v10, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->n:Lcom/otaliastudios/opengl/draw/GlRect;

    if-eq v3, v10, :cond_3

    goto :goto_1

    :cond_3
    iget v10, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->m:I

    if-eqz v10, :cond_c

    :goto_1
    iput-object v3, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->n:Lcom/otaliastudios/opengl/draw/GlRect;

    iput v8, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->m:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, -0x800001

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    move v14, v8

    move v12, v11

    move v13, v12

    move v11, v10

    :goto_2
    invoke-virtual {v3}, Lcom/otaliastudios/opengl/draw/GlDrawable;->a()Ljava/nio/FloatBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v3}, Lcom/otaliastudios/opengl/draw/GlDrawable;->a()Ljava/nio/FloatBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/FloatBuffer;->get()F

    move-result v15

    rem-int/lit8 v16, v14, 0x2

    if-nez v16, :cond_4

    invoke-static {v12, v15}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v11

    goto :goto_3

    :cond_4
    invoke-static {v10, v15}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v13

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/otaliastudios/opengl/draw/GlDrawable;->a()Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v5, v12, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v3}, Lcom/otaliastudios/opengl/draw/GlRect;->a()Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v10

    invoke-virtual {v3}, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;->b()I

    move-result v11

    div-int/2addr v10, v11

    mul-int/2addr v10, v2

    iget-object v2, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v10, :cond_7

    iget-object v2, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, v2, Lcom/otaliastudios/opengl/types/Disposable;

    if-eqz v11, :cond_6

    check-cast v2, Lcom/otaliastudios/opengl/types/Disposable;

    invoke-interface {v2}, Lcom/otaliastudios/opengl/types/Disposable;->dispose()V

    :cond_6
    invoke-static {v10}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->h:Ljava/nio/FloatBuffer;

    :cond_7
    iget-object v2, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v10}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    if-lez v10, :cond_c

    move v2, v8

    :goto_4
    add-int/lit8 v11, v2, 0x1

    rem-int/lit8 v12, v2, 0x2

    if-nez v12, :cond_8

    move v12, v7

    goto :goto_5

    :cond_8
    move v12, v8

    :goto_5
    iget-object v13, v3, Lcom/otaliastudios/opengl/draw/GlRect;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v13, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    if-eqz v12, :cond_9

    iget v13, v5, Landroid/graphics/RectF;->left:F

    goto :goto_6

    :cond_9
    iget v13, v5, Landroid/graphics/RectF;->bottom:F

    :goto_6
    if-eqz v12, :cond_a

    iget v12, v5, Landroid/graphics/RectF;->right:F

    goto :goto_7

    :cond_a
    iget v12, v5, Landroid/graphics/RectF;->top:F

    :goto_7
    sub-float/2addr v2, v13

    sub-float/2addr v12, v13

    div-float/2addr v2, v12

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v2, v12

    const/4 v12, 0x0

    add-float/2addr v2, v12

    iget-object v12, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v12, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    if-lt v11, v10, :cond_b

    goto :goto_8

    :cond_b
    move v2, v11

    goto :goto_4

    :cond_c
    :goto_8
    iget-object v2, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget v2, v9, Lcom/otaliastudios/opengl/program/GlProgramLocation;->b:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v6}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    iget v10, v9, Lcom/otaliastudios/opengl/program/GlProgramLocation;->b:I

    sget v12, Lcom/otaliastudios/opengl/internal/GlKt;->b:I

    invoke-virtual {v3}, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;->b()I

    move-result v2

    mul-int/lit8 v14, v2, 0x4

    iget-object v15, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->h:Ljava/nio/FloatBuffer;

    const/4 v11, 0x2

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v4}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    :goto_9
    iget-object v1, v0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->a:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    iget-object v2, v0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->b:Lcom/otaliastudios/opengl/draw/GlRect;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "glDrawArrays start"

    invoke-static {v1}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    sget v1, Lcom/otaliastudios/opengl/internal/GlKt;->d:I

    invoke-virtual {v2}, Lcom/otaliastudios/opengl/draw/GlRect;->a()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-virtual {v2}, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;->b()I

    move-result v2

    div-int/2addr v3, v2

    invoke-static {v1, v8, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v1, "glDrawArrays end"

    invoke-static {v1}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->a:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->b:Lcom/otaliastudios/opengl/draw/GlRect;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->j:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    iget v0, v0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, v1, Lcom/otaliastudios/opengl/program/GlTextureProgram;->i:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    if-nez v0, :cond_d

    goto :goto_a

    :cond_d
    iget v0, v0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :goto_a
    const-string v0, "onPostDraw end"

    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final g(I)V
    .locals 6

    new-instance v0, Lcom/otaliastudios/opengl/program/GlTextureProgram;

    const-string v4, "aTextureCoord"

    const-string v5, "uTexMatrix"

    const-string v2, "aPosition"

    const-string v3, "uMVPMatrix"

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->a:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    new-instance p1, Lcom/otaliastudios/opengl/draw/GlRect;

    invoke-direct {p1}, Lcom/otaliastudios/opengl/draw/GlRect;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->b:Lcom/otaliastudios/opengl/draw/GlRect;

    return-void
.end method

.method public final h(II)V
    .locals 1

    new-instance v0, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v0, p1, p2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->c:Lcom/otaliastudios/cameraview/size/Size;

    return-void
.end method

.method public final onDestroy()V
    .locals 6

    iget-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->a:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    iget-boolean v1, v0, Lcom/otaliastudios/opengl/program/GlProgram;->d:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/otaliastudios/opengl/program/GlProgram;->b:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/otaliastudios/opengl/program/GlProgram;->a:I

    sget-object v2, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    iget-object v1, v0, Lcom/otaliastudios/opengl/program/GlProgram;->c:[Lcom/otaliastudios/opengl/program/GlShader;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v4, v4, Lcom/otaliastudios/opengl/program/GlShader;->a:I

    sget-object v5, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/otaliastudios/opengl/program/GlProgram;->d:Z

    :cond_2
    iget-object v0, v0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/otaliastudios/opengl/types/Disposable;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/otaliastudios/opengl/types/Disposable;

    invoke-interface {v0}, Lcom/otaliastudios/opengl/types/Disposable;->dispose()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->a:Lcom/otaliastudios/opengl/program/GlTextureProgram;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/filter/BaseFilter;->b:Lcom/otaliastudios/opengl/draw/GlRect;

    return-void
.end method
