.class Lcom/cyberlink/clgpuimage/GPUImageRenderer$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;

.field private synthetic b:Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;

.field private synthetic c:Lcom/cyberlink/clgpuimage/GPUImageRenderer;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$2;->c:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$2;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;

    iput-object p3, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$2;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$2;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$2;->b:Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;

    invoke-interface {v0, p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;->a(Ljava/lang/Object;)V

    return-void
.end method
