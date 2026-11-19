.class final Lcom/cyberlink/clgpuimage/cosmetic/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/ak;->a:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ak;->a:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ak;->a:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    const/4 v1, -0x1

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z:I

    iput-boolean v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->M:Z

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/ak;->a:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->K:Z

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->Z:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->a0:I

    return-void
.end method
