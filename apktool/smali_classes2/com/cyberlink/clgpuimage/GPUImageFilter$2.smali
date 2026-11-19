.class Lcom/cyberlink/clgpuimage/GPUImageFilter$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:F

.field private synthetic c:Lcom/cyberlink/clgpuimage/GPUImageFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageFilter;IF)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$2;->c:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$2;->a:I

    iput p3, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$2;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$2;->a:I

    iget p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$2;->b:F

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
