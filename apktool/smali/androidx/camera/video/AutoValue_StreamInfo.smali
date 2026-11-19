.class final Landroidx/camera/video/AutoValue_StreamInfo;
.super Landroidx/camera/video/StreamInfo;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:Landroidx/camera/video/StreamInfo$StreamState;

.field public final f:Landroidx/camera/core/SurfaceRequest$TransformationInfo;


# direct methods
.method public constructor <init>(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/video/AutoValue_StreamInfo;->d:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroidx/camera/video/AutoValue_StreamInfo;->e:Landroidx/camera/video/StreamInfo$StreamState;

    iput-object p3, p0, Landroidx/camera/video/AutoValue_StreamInfo;->f:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    return-void

    :cond_0
    const-string p0, "Null streamState"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/StreamInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Landroidx/camera/video/StreamInfo;

    check-cast p1, Landroidx/camera/video/AutoValue_StreamInfo;

    iget v1, p1, Landroidx/camera/video/AutoValue_StreamInfo;->d:I

    iget v3, p0, Landroidx/camera/video/AutoValue_StreamInfo;->d:I

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Landroidx/camera/video/AutoValue_StreamInfo;->e:Landroidx/camera/video/StreamInfo$StreamState;

    iget-object v3, p1, Landroidx/camera/video/AutoValue_StreamInfo;->e:Landroidx/camera/video/StreamInfo$StreamState;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroidx/camera/video/AutoValue_StreamInfo;->f:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    iget-object p0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->f:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    if-nez p0, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->d:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/video/AutoValue_StreamInfo;->e:Landroidx/camera/video/StreamInfo$StreamState;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->f:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamInfo{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/video/AutoValue_StreamInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/AutoValue_StreamInfo;->e:Landroidx/camera/video/StreamInfo$StreamState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inProgressTransformationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->f:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
