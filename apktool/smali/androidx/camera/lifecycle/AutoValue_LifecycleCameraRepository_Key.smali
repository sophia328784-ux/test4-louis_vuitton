.class final Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;
.super Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroidx/camera/core/CameraIdentifier;


# direct methods
.method public constructor <init>(ILandroidx/camera/core/CameraIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;->a:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;->b:Landroidx/camera/core/CameraIdentifier;

    return-void

    :cond_0
    const-string p0, "Null cameraIdentifier"

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
    instance-of v1, p1, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/camera/lifecycle/LifecycleCameraRepository$Key;

    check-cast p1, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;

    iget v1, p1, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;->a:I

    iget v3, p0, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;->a:I

    if-ne v3, v1, :cond_1

    iget-object p0, p0, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;->b:Landroidx/camera/core/CameraIdentifier;

    iget-object p1, p1, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;->b:Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {p0, p1}, Landroidx/camera/core/CameraIdentifier;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;->b:Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {p0}, Landroidx/camera/core/CameraIdentifier;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key{lifecycleOwnerHash="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;->b:Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
