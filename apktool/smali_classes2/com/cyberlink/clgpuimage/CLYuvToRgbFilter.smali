.class public Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;
    }
.end annotation


# instance fields
.field public o:I

.field public p:I

.field public q:[I

.field public r:[I

.field public s:I

.field public final t:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;

.field public final u:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position; \nattribute vec2 inputTextureCoordinate; \n \nvarying vec2 texture_coordinate; \n \nvoid main() \n{ \n    gl_Position = position; \n    texture_coordinate = inputTextureCoordinate; \n} \n"

    const-string v1, "precision mediump float; \n \nvarying vec2 texture_coordinate; \n \nuniform sampler2D inputImageTexture; \nuniform sampler2D inputImageTexture2; \nuniform int isHD; \n \nconst mat3 yuv2rgb_forHD = mat3( \n        1,        1,         1, \n        0,       -0.343,     1.765, \n        1.400,   -0.711,     0 \n        ); \n \nconst mat3 yuv2rgb_forSD = mat3( \n        1,        1,         1, \n        0,       -0.344,     1.772, \n        1.402,   -0.714,     0 \n        ); \n \nvoid main() \n{ \n    vec3 yuv; \n    yuv.x = texture2D(inputImageTexture, texture_coordinate).r; \n    yuv.yz = texture2D(inputImageTexture2, texture_coordinate).ar; \n    vec3 rgb; \n    if (isHD == 1) \n        rgb = yuv2rgb_forHD * (yuv - vec3(0.0, 0.5, 0.5)); \n    else \n        rgb = yuv2rgb_forSD * (yuv - vec3(0.0, 0.5, 0.5)); \n    gl_FragColor = vec4(rgb, 1.0); \n} \n"

    invoke-direct {p0, v0, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->q:[I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->r:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->s:I

    sget-boolean v1, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->O:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;

    invoke-direct {v1}, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;->p:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;

    :goto_0
    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->t:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->u:[I

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->t:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->destroy()V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->r:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->r:[I

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->q:[I

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->q:[I

    :cond_1
    return-void
.end method

.method public final onInit()V
    .locals 2

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->o:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "isHD"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->p:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->q:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->r:[I

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->t:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;->onInit()V

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 12

    iput p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->q:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->r:[I

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->r:[I

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->q:[I

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->q:[I

    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->q:[I

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->r:[I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->t:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;

    invoke-virtual {v2, p1, p2}, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;->onOutputSizeChanged(II)V

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->q:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->r:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->r:[I

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v10, 0x1401

    const/4 v11, 0x0

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    move v6, p1

    move v7, p2

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p1, 0x2800

    const p2, 0x46180400    # 9729.0f

    invoke-static {v2, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2801

    invoke-static {v2, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const p2, 0x47012f00    # 33071.0f

    invoke-static {v2, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    invoke-static {v2, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->q:[I

    aget p1, p1, v1

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->r:[I

    aget p0, p0, v1

    const p1, 0x8ce0

    invoke-static {p2, p1, v2, p0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method
