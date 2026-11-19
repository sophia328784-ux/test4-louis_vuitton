.class final Lcom/cyberlink/clgpuimage/cosmetic/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:F

.field private synthetic b:Lcom/cyberlink/clgpuimage/cosmetic/a;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/a;F)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/d;->b:Lcom/cyberlink/clgpuimage/cosmetic/a;

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/d;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/d;->b:Lcom/cyberlink/clgpuimage/cosmetic/a;

    iget v1, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->K:I

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/d;->a:F

    invoke-virtual {v0, v1, p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    return-void
.end method
