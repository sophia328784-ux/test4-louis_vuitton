.class public Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;

# interfaces
.implements Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeveloperModeLabelFilter"
.end annotation


# static fields
.field public static final p:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;


# instance fields
.field public final o:Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter$1;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;-><init>()V

    sput-object v0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;->p:Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;->o:Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;

    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;->o:Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->b(Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$Renderer;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;->o:Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;->a()V

    return-void
.end method

.method public onInit()V
    .locals 0

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;->o:Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;->c()V

    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 6

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/CLYuvToRgbFilter$DeveloperModeLabelFilter;->o:Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->b:Ljava/nio/FloatBuffer;

    iput p1, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;->e:I

    iput p2, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;->f:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget p1, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;->e:I

    iget p0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;->f:I

    const/high16 p2, 0x40000000    # 2.0f

    const/high16 v1, 0x40e00000    # 7.0f

    const v2, 0x3f2147ae    # 0.63f

    if-ge p1, p0, :cond_0

    int-to-float p1, p1

    mul-float/2addr p1, v2

    div-float/2addr p1, v1

    mul-float/2addr p1, p2

    int-to-float p0, p0

    div-float/2addr p1, p0

    const p0, 0x3ebd70a4    # 0.37f

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    mul-float/2addr v2, p0

    div-float v1, v2, v1

    mul-float/2addr v1, p2

    div-float p0, v1, p0

    int-to-float p1, p1

    sub-float p2, p1, v2

    div-float p1, p2, p1

    move v5, p1

    move p1, p0

    move p0, v5

    :goto_0
    const p2, 0x3fd9999a    # 1.7f

    sub-float/2addr p2, p1

    const/high16 p1, -0x40800000    # -1.0f

    add-float v1, p0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    add-float/2addr p2, p1

    const/16 p0, 0x8

    new-array p0, p0, [F

    const/4 p1, 0x0

    aput v1, p0, p1

    const/4 v3, 0x1

    const v4, 0x3f333333    # 0.7f

    aput v4, p0, v3

    const/4 v3, 0x2

    aput v2, p0, v3

    const/4 v3, 0x3

    aput v4, p0, v3

    const/4 v3, 0x4

    aput v1, p0, v3

    const/4 v1, 0x5

    aput p2, p0, v1

    const/4 v1, 0x6

    aput v2, p0, v1

    const/4 v1, 0x7

    aput p2, p0, v1

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    return-void
.end method
