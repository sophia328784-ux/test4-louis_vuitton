.class Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:F

.field private synthetic b:F

.field private synthetic c:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;FF)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$1;->c:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;

    iput p2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$1;->a:F

    iput p3, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$1;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$1;->c:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;

    iget v1, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->G:I

    iget v2, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$1;->a:F

    iget v3, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->u:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v7, 0x1

    aput v2, v4, v7

    invoke-virtual {v0, v4, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g([FI)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$1;->c:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;

    iget v1, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->H:I

    iget p0, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$1;->b:F

    iget v2, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->u:I

    int-to-float v2, v2

    div-float/2addr p0, v2

    new-array v2, v3, [F

    aput v6, v2, v5

    aput p0, v2, v7

    invoke-virtual {v0, v2, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g([FI)V

    return-void
.end method
