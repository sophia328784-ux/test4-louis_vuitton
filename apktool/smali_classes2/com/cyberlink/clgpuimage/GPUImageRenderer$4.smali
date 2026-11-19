.class Lcom/cyberlink/clgpuimage/GPUImageRenderer$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$4;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$4;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->m:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$4;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->m:I

    return-void
.end method
