.class Lcom/cyberlink/clgpuimage/GPUImageRenderer$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$7;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$7;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    sget-object v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->M:[F

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->d()V

    return-void
.end method
