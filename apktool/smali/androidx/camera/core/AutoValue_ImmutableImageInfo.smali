.class final Landroidx/camera/core/AutoValue_ImmutableImageInfo;
.super Landroidx/camera/core/ImmutableImageInfo;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/camera/core/impl/TagBundle;

.field public final b:J

.field public final c:I

.field public final d:Landroid/graphics/Matrix;

.field public final e:I


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/TagBundle;JILandroid/graphics/Matrix;I)V
    .locals 1

    invoke-direct {p0}, Landroidx/camera/core/ImmutableImageInfo;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-object p1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->a:Landroidx/camera/core/impl/TagBundle;

    iput-wide p2, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->b:J

    iput p4, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->c:I

    if-eqz p5, :cond_0

    iput-object p5, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->d:Landroid/graphics/Matrix;

    iput p6, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->e:I

    return-void

    :cond_0
    const-string p0, "Null sensorToBufferTransformMatrix"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "Null tagBundle"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->e:I

    return p0
.end method

.method public final c()Landroidx/camera/core/impl/TagBundle;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->a:Landroidx/camera/core/impl/TagBundle;

    return-object p0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->b:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/camera/core/ImmutableImageInfo;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/camera/core/ImmutableImageInfo;

    move-object v0, p1

    check-cast v0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;

    iget-object v1, v0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->a:Landroidx/camera/core/impl/TagBundle;

    iget-object v2, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->a:Landroidx/camera/core/impl/TagBundle;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->b:J

    iget-wide v3, v0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->b:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->c:I

    invoke-virtual {p1}, Landroidx/camera/core/ImmutableImageInfo;->f()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->d:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroidx/camera/core/ImmutableImageInfo;->g()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->e:I

    invoke-virtual {p1}, Landroidx/camera/core/ImmutableImageInfo;->a()I

    move-result p1

    if-ne p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->c:I

    return p0
.end method

.method public final g()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->d:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->a:Landroidx/camera/core/impl/TagBundle;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    const/16 v2, 0x20

    iget-wide v3, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->b:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->c:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->e:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImmutableImageInfo{tagBundle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->a:Landroidx/camera/core/impl/TagBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rotationDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sensorToBufferTransformMatrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flashState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->e:I

    const-string v1, "}"

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
