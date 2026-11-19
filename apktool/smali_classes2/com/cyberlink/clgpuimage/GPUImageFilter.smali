.class public Lcom/cyberlink/clgpuimage/GPUImageFilter;
.super Ljava/lang/Object;


# static fields
.field public static final NO_FILTER_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

.field public static final NO_FILTER_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public final m:[F

.field public mGLProgId:I

.field public final n:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-direct {p0, v0, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->j:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->k:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->l:I

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->c:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static loadShader(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/util/Scanner;

    invoke-direct {p1, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {p1, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Scanner;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public SetProcessRange(FFF)V
    .locals 4

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p3, v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    sub-float p3, v2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float p1, v2, p1

    goto/16 :goto_1

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    sub-float p3, v2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float p1, v2, p1

    move v3, v1

    move v1, p1

    move p1, v3

    move v3, v2

    move v2, p3

    :goto_0
    move p3, v3

    goto :goto_1

    :cond_1
    cmpl-float v0, p3, v1

    if-nez v0, :cond_2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v3, p3

    move p3, p1

    move p1, v3

    goto :goto_1

    :cond_2
    const/high16 v0, 0x43870000    # 270.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_3

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v3, v2

    move v2, p1

    move p1, v1

    move v1, p3

    goto :goto_0

    :cond_3
    move p1, v1

    move p3, v2

    :goto_1
    iget-object p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    const/4 v0, 0x0

    aput v1, p2, v0

    const/4 v1, 0x1

    aput p1, p2, v1

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    aput v2, p0, v0

    aput p3, p0, v1

    return-void
.end method

.method public c(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i:Z

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDestroy()V

    return-void
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g([FI)V
    .locals 1

    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImageFilter$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/cyberlink/clgpuimage/GPUImageFilter$3;-><init>(Lcom/cyberlink/clgpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAttribPosition()I
    .locals 0

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    return p0
.end method

.method public getAttribTextureCoordinate()I
    .locals 0

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    return p0
.end method

.method public getOutputHeight()I
    .locals 0

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    return p0
.end method

.method public getOutputWidth()I
    .locals 0

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    return p0
.end method

.method public getProgram()I
    .locals 0

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    return p0
.end method

.method public getUniformTexture()I
    .locals 0

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e:I

    return p0
.end method

.method public final h(II)V
    .locals 1

    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImageFilter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cyberlink/clgpuimage/GPUImageFilter$1;-><init>(Lcom/cyberlink/clgpuimage/GPUImageFilter;II)V

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(ILandroid/graphics/PointF;)V
    .locals 1

    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImageFilter$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/cyberlink/clgpuimage/GPUImageFilter$7;-><init>(Lcom/cyberlink/clgpuimage/GPUImageFilter;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final init()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->j:Z

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i:Z

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInitialized()V

    return-void
.end method

.method public final init(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->j:Z

    iput p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->k:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->l:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i:Z

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInitialized()V

    return-void
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i:Z

    return p0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f()V

    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x1406

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p2, -0x1

    const/16 p3, 0xde1

    if-eq p1, p2, :cond_1

    const p2, 0x84c0

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d()V

    const/4 p1, 0x5

    const/4 p2, 0x4

    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {p3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public onInit()V
    .locals 6

    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->k:I

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->l:I

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-array v3, v1, [I

    const/4 v4, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v0, 0x8b82

    invoke-static {v5, v0, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, v3, v4

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    iput v4, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    :goto_2
    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v2, "position"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v2, "inputImageTexture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v2, "inputTextureCoordinate"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->i:Z

    return-void
.end method

.method public onInitialized()V
    .locals 0

    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    return-void
.end method

.method public setFloat(IF)V
    .locals 1

    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImageFilter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/cyberlink/clgpuimage/GPUImageFilter$2;-><init>(Lcom/cyberlink/clgpuimage/GPUImageFilter;IF)V

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScaleType(Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;)V
    .locals 0

    return-void
.end method

.method public setShaders(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->c:Ljava/lang/String;

    return-void
.end method

.method public setWoringSize(II)V
    .locals 0

    return-void
.end method
