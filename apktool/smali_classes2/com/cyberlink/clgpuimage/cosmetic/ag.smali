.class final Lcom/cyberlink/clgpuimage/cosmetic/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/nio/Buffer;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Z

.field private synthetic e:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

.field private synthetic f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;Ljava/nio/Buffer;IIZLcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->a:Ljava/nio/Buffer;

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->b:I

    iput p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->c:I

    iput-boolean p5, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->d:Z

    iput-object p6, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->e:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget-boolean v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->K:Z

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->a:Ljava/nio/Buffer;

    check-cast v2, Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->L:Z

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->y:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0xde1

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v0, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2801

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    aget v0, v0, v3

    iput v0, v1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->y:I

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->y:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->Y:I

    iget v8, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->b:I

    if-ne v1, v8, :cond_2

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->X:I

    move v9, v8

    iget v8, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->c:I

    if-eq v0, v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->a:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v12

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_1

    :cond_2
    move v9, v8

    :goto_0
    iget v7, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->c:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->a:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v12

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    move v8, v9

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_1
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->c:I

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->X:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->b:I

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->Y:I

    iget-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->d:Z

    iput-boolean v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->P:Z

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ag;->e:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    invoke-virtual {v0, v3, p0}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k(ILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;)V

    return-void
.end method
