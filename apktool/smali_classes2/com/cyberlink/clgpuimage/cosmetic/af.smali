.class final Lcom/cyberlink/clgpuimage/cosmetic/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/nio/ByteBuffer;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;Ljava/nio/ByteBuffer;II)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->d:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->a:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->b:I

    iput p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->d:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->a:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->b:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->c:I

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->x:I

    invoke-static {v1, v2, v3, v4}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->c(Ljava/nio/ByteBuffer;III)I

    move-result v1

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->x:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->d:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->c0:Lcom/cyberlink/clgpuimage/cosmetic/al;

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->x0:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->b:I

    if-eq v2, v3, :cond_0

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->y0:I

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->c:I

    if-eq v0, v2, :cond_0

    iput v3, v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;->b:I

    iput v2, v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;->c:I

    invoke-virtual {v1}, Lcom/cyberlink/clgpuimage/cosmetic/am;->b()V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->d:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->b:I

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->x0:I

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/af;->c:I

    iput p0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->y0:I

    :cond_0
    return-void
.end method
