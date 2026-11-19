.class public Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pass1BufferData"
.end annotation


# instance fields
.field public depth_buffer:[I

.field public frame_buffer:[I

.field public frame_buffer_texture:[I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->depth_buffer:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    return-void
.end method


# virtual methods
.method public CreateData(II)Z
    .locals 1

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->CreateData(IIZ)Z

    move-result p0

    return p0
.end method

.method public CreateData(IIZ)Z
    .locals 12

    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v9, 0x1

    new-array v0, v9, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    new-array v1, v9, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    const/4 v10, 0x0

    invoke-static {v9, v0, v10}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    invoke-static {v9, v0, v10}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget v0, v0, v10

    const/16 v11, 0xde1

    invoke-static {v11, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v7, 0x1401

    const/4 v8, 0x0

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const/16 v1, 0x505

    if-eq v0, v1, :cond_5

    const/16 v2, 0x506

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v0, 0x2800

    const v5, 0x46180400    # 9729.0f

    invoke-static {v11, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    invoke-static {v11, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v5, 0x47012f00    # 33071.0f

    invoke-static {v11, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {v11, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v9}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-static {v9}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    const v6, 0x8ca6

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const v6, 0x8ca7

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    aget v6, v6, v10

    const v7, 0x8d40

    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget v6, v6, v10

    const v8, 0x8ce0

    invoke-static {v7, v8, v11, v6, v10}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const v6, 0x8d41

    if-eqz p3, :cond_4

    new-array v8, v9, [I

    iput-object v8, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->depth_buffer:[I

    invoke-static {v9, v8, v10}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    iget-object v8, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->depth_buffer:[I

    aget v8, v8, v10

    invoke-static {v6, v8}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v8, 0x81a5

    invoke-static {v6, v8, p1, p2}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v8

    if-eq v8, v1, :cond_3

    if-ne v8, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->depth_buffer:[I

    aget v1, v1, v10

    const v2, 0x8d00

    invoke-static {v7, v2, v6, v1}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    goto :goto_1

    :cond_3
    :goto_0
    return v10

    :cond_4
    :goto_1
    invoke-static {v11, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v0, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v5, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    return v9

    :cond_5
    :goto_2
    return v10
.end method

.method public DestroyData()V
    .locals 4

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    :cond_1
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->depth_buffer:[I

    if-eqz v0, :cond_2

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->depth_buffer:[I

    :cond_2
    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    return-void
.end method
