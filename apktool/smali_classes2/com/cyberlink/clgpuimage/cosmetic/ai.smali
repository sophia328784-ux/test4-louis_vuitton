.class final Lcom/cyberlink/clgpuimage/cosmetic/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Ljava/nio/ByteBuffer;

.field private synthetic d:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;IILjava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->d:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->a:I

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->b:I

    iput-object p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->c:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->d:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->B:I

    const/4 v1, -0x1

    const/16 v2, 0xde1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->d:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    aget v1, v1, v3

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->B:I

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->d:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->B:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->d:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->W:I

    iget v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->a:I

    if-ne v1, v6, :cond_2

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->V:I

    move v7, v6

    iget v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->b:I

    if-eq v1, v6, :cond_1

    goto :goto_0

    :cond_1
    const/16 v9, 0x1401

    iget-object v10, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->c:Ljava/nio/ByteBuffer;

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x1909

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void

    :cond_2
    move v7, v6

    :goto_0
    iput v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->W:I

    iget v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->b:I

    iput v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->V:I

    const/16 v9, 0x1401

    iget-object v10, p0, Lcom/cyberlink/clgpuimage/cosmetic/ai;->c:Ljava/nio/ByteBuffer;

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1909

    move v6, v7

    const/4 v7, 0x0

    const/16 v8, 0x1909

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method
