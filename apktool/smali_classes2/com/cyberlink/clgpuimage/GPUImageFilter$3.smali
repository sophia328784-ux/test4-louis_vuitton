.class Lcom/cyberlink/clgpuimage/GPUImageFilter$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:[F

.field private synthetic c:Lcom/cyberlink/clgpuimage/GPUImageFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageFilter;I[F)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$3;->c:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$3;->a:I

    iput-object p3, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$3;->b:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$3;->a:I

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter$3;->b:[F

    invoke-static {p0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/opengl/GLES20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method
