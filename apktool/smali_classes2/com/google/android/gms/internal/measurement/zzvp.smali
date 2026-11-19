.class final Lcom/google/android/gms/internal/measurement/zzvp;
.super Lcom/google/android/gms/internal/measurement/zzww;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;

.field public final b:Lcom/google/common/collect/ImmutableList;

.field public final c:Ljava/util/UUID;

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Ljava/util/UUID;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvp;->a:Lcom/google/common/collect/ImmutableList;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzvp;->b:Lcom/google/common/collect/ImmutableList;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzvp;->c:Ljava/util/UUID;

    iput-wide p4, p0, Lcom/google/android/gms/internal/measurement/zzvp;->d:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzww;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzww;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvp;

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzvp;->a:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzvp;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvp;->b:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzvp;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvp;->c:Ljava/util/UUID;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzvp;->c:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzvp;->d:J

    iget-wide p0, p1, Lcom/google/android/gms/internal/measurement/zzvp;->d:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvp;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvp;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvp;->c:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    const/16 v2, 0x20

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzvp;->d:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    mul-int/2addr v0, v1

    long-to-int p0, v2

    xor-int/2addr p0, v0

    return p0
.end method
