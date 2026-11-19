.class Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/cyberlink/clgpuimage/GPUImageFilter;

.field private synthetic b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;Lcom/cyberlink/clgpuimage/GPUImageFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;->a:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;->a:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->init()V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->A:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    invoke-virtual {v1, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setScaleType(Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->A:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    sget-object v2, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_CROP_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->CENTER_INSIDE_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;->FIT_XY_CAMERA_YUV_BUFFER:Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->r:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget v2, v2, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->s:I

    invoke-virtual {v1, v0, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->x:Lcom/cyberlink/clgpuimage/Rotation;

    sget-object v2, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_270:Lcom/cyberlink/clgpuimage/Rotation;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/cyberlink/clgpuimage/Rotation;->ROTATION_90:Lcom/cyberlink/clgpuimage/Rotation;

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->t:I

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->u:I

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->g:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->u:I

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->t:I

    goto :goto_1

    :goto_3
    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$3;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
