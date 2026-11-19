.class final Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:F

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Ljava/nio/FloatBuffer;

.field public y:F

.field public z:F


# virtual methods
.method public final d()V
    .locals 8

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->w:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->p:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->o:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->x:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v7

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->o:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->q:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->y:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->r:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->z:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->s:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->A:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->t:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->B:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->u:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->C:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->v:I

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->D:F

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public final j(ILjava/nio/FloatBuffer;ILjava/nio/FloatBuffer;FFFFFFLjava/nio/FloatBuffer;)V
    .locals 0

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->w:I

    iput-object p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->x:Ljava/nio/FloatBuffer;

    iput p5, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->y:F

    iput p6, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->z:F

    iput p7, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->A:F

    iput p8, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->B:F

    iput p9, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->C:F

    iput p10, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->D:F

    invoke-super {p0, p1, p11, p2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->o:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public final onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final onInit()V
    .locals 2

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputHairTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->o:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputHairTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->p:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairCenterX"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->q:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairCenterY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->r:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairBackgroundImageWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->u:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairBackgroundImageHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->v:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->s:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->t:I

    return-void
.end method
