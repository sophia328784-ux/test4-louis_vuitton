.class final Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;
.super Landroidx/camera/core/imagecapture/DngImage2Disk$In;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/camera/core/ImageProxy;

.field public final b:I

.field public final c:Landroidx/camera/core/ImageCapture$OutputFileOptions;


# direct methods
.method public constructor <init>(Landroidx/camera/core/ImageProxy;ILandroidx/camera/core/ImageCapture$OutputFileOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-object p1, p0, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->a:Landroidx/camera/core/ImageProxy;

    iput p2, p0, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->b:I

    if-eqz p3, :cond_0

    iput-object p3, p0, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->c:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    return-void

    :cond_0
    const-string p0, "Null outputFileOptions"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "Null imageProxy"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/imagecapture/DngImage2Disk$In;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/camera/core/imagecapture/DngImage2Disk$In;

    check-cast p1, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;

    iget-object v1, p1, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->a:Landroidx/camera/core/ImageProxy;

    iget-object v3, p0, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->a:Landroidx/camera/core/ImageProxy;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->b:I

    iget v3, p1, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->b:I

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->c:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    iget-object p1, p1, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->c:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->a:Landroidx/camera/core/ImageProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->b:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->c:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In{imageProxy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->a:Landroidx/camera/core/ImageProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotationDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outputFileOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_DngImage2Disk_In;->c:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
