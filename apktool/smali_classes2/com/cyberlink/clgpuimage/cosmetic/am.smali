.class public Lcom/cyberlink/clgpuimage/cosmetic/am;
.super Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;


# instance fields
.field public final d:F

.field public final e:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/am;->d:F

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/am;->e:F

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v2

    const-string v3, "texelWidthOffset"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v4

    const-string v5, "texelHeightOffset"

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iget v6, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;->b:I

    int-to-float v6, v6

    iget v7, p0, Lcom/cyberlink/clgpuimage/cosmetic/am;->d:F

    div-float/2addr v7, v6

    invoke-virtual {v0, v2, v7}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v1

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v3

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget v1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;->c:I

    int-to-float v1, v1

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/am;->e:F

    div-float/2addr p0, v1

    invoke-virtual {v0, v3, p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    return-void
.end method
