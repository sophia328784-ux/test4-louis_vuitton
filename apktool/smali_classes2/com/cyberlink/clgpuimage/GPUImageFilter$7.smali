.class Lcom/cyberlink/clgpuimage/GPUImageFilter$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/PointF;

.field private synthetic b:I

.field private synthetic c:Lcom/cyberlink/clgpuimage/GPUImageFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageFilter;Landroid/graphics/PointF;I)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$7;->c:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$7;->a:Landroid/graphics/PointF;

    iput p3, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$7;->a:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$7;->b:I

    invoke-static {p0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method
