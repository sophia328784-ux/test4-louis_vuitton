.class Lcom/cyberlink/clgpuimage/GPUImageRenderer$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$6;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$6;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->A:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    sget-object v2, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_CROP_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_INSIDE_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->FIT_XY_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$6;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget v2, v2, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    invoke-virtual {v1, v0, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    :cond_1
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$6;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$6;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    const/4 v1, 0x0

    invoke-static {v1, v1, v0, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->e()V

    return-void
.end method
