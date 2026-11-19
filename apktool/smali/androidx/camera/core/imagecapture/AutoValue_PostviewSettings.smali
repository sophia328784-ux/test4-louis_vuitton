.class final Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;
.super Landroidx/camera/core/imagecapture/PostviewSettings;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/Size;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/util/Size;I)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/imagecapture/PostviewSettings;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->a:Landroid/util/Size;

    iput p2, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->b:I

    return-void

    :cond_0
    const-string p0, "Null resolution"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->b:I

    return p0
.end method

.method public final c()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->a:Landroid/util/Size;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/camera/core/imagecapture/PostviewSettings;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/camera/core/imagecapture/PostviewSettings;

    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->a:Landroid/util/Size;

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/PostviewSettings;->c()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->b:I

    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/PostviewSettings;->b()I

    move-result p1

    if-ne p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->a:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget p0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->b:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PostviewSettings{resolution="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->a:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/core/imagecapture/AutoValue_PostviewSettings;->b:I

    const-string v1, "}"

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
