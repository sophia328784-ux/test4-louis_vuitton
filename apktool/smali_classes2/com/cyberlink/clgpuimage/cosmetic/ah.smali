.class final Lcom/cyberlink/clgpuimage/cosmetic/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/nio/Buffer;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

.field private synthetic e:Z

.field private synthetic f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;Ljava/nio/Buffer;IILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;Z)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->a:Ljava/nio/Buffer;

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->b:I

    iput p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->c:I

    iput-object p5, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->d:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    iput-boolean p6, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget-boolean v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->K:Z

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->a:Ljava/nio/Buffer;

    check-cast v2, Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->M:Z

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z:I

    const/4 v2, -0x1

    const/16 v3, 0xde1

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v4, v0, v2

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0x2800

    const v5, 0x46180400    # 9729.0f

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2801

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2802

    const v5, 0x47012f00    # 33071.0f

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2803

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    aget v0, v0, v2

    iput v0, v4, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z:I

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->a0:I

    iget v7, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->b:I

    if-ne v2, v7, :cond_2

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->Z:I

    move v8, v7

    iget v7, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->c:I

    if-eq v0, v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->a:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v11

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_0
    iget v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->c:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->a:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v11

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    move v7, v8

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_1
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->f:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->c:I

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->Z:I

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->b:I

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->a0:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->d:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->b0:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    iget-boolean p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ah;->e:Z

    iput-boolean p0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->Q:Z

    invoke-virtual {v0, v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k(ILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;)V

    return-void
.end method
