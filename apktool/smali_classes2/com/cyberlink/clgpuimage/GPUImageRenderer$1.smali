.class Lcom/cyberlink/clgpuimage/GPUImageRenderer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$1;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$1;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->C:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$1;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iput v3, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->C:I

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$1;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->D:I

    if-eq v0, v3, :cond_1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$1;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iput v3, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->D:I

    :cond_1
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$1;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->h:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->t:I

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->u:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x240

    if-lt v4, v5, :cond_2

    if-lt v0, v5, :cond_2

    iput v2, v3, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->s:I

    goto :goto_0

    :cond_2
    iput v1, v3, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;->s:I

    :goto_0
    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$1;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->d()V

    return-void
.end method
