.class final Lcom/google/android/gms/internal/measurement/zzbx;
.super Lcom/google/android/gms/internal/measurement/zzcd;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbx;->b:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzbx;->c:I

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzbx;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->c:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->d:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzcd;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcd;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbx;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->b()I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzbx;->c:I

    if-eqz v3, :cond_2

    if-ne v3, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd;->c()I

    move-result p1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->d:I

    if-eqz p0, :cond_1

    if-ne p1, v0, :cond_3

    :goto_0
    return v0

    :cond_1
    throw v2

    :cond_2
    throw v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzbx;->c:I

    if-eqz v3, :cond_1

    mul-int/2addr v0, v1

    xor-int/lit16 v0, v0, 0x4d5

    mul-int/2addr v0, v1

    xor-int/2addr v0, v3

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->d:I

    if-eqz p0, :cond_0

    const p0, -0x2aff6277

    mul-int/2addr v0, p0

    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_0
    throw v2

    :cond_1
    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "null"

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzbx;->c:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "NO_CHECKS"

    goto :goto_0

    :cond_1
    const-string v1, "SKIP_SECURITY_CHECK"

    goto :goto_0

    :cond_2
    const-string v1, "SKIP_COMPLIANCE_CHECK"

    goto :goto_0

    :cond_3
    const-string v1, "ALL_CHECKS"

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzbx;->d:I

    if-eq v3, v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "READ_AND_WRITE"

    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzbx;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x49

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x34

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v3, v2

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "FileComplianceOptions{fileOwner="

    const-string v3, ", hasDifferentDmaOwner=false, fileChecks="

    invoke-static {v4, v2, p0, v3, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ", multipleProductIdGroupsResolver=null, filePurpose="

    const-string v1, "}"

    invoke-static {v4, p0, v0, v1}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
