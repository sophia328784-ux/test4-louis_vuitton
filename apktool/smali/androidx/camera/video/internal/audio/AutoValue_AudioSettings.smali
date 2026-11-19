.class final Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;
.super Landroidx/camera/video/internal/audio/AudioSettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->b:I

    iput p2, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->c:I

    iput p3, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->d:I

    iput p4, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->e:I

    iput p5, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->f:I

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->c:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->e:I

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->d:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/internal/audio/AudioSettings;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/camera/video/internal/audio/AudioSettings;

    check-cast p1, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;

    iget v1, p1, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->b:I

    iget v3, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->b:I

    if-ne v3, v1, :cond_1

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->c:I

    iget v3, p1, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->c:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->d:I

    iget v3, p1, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->d:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->e:I

    iget v3, p1, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->e:I

    if-ne v1, v3, :cond_1

    iget p0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->f:I

    iget p1, p1, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->f:I

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->b:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->c:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->d:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->e:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->f:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioSettings{audioSource="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", captureSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encodeSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->f:I

    const-string v1, "}"

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
