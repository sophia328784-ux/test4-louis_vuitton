.class public final Lcom/google/android/gms/internal/clearcut/zzgz;
.super Lcom/google/android/gms/internal/clearcut/zzfu;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/zzfu<",
        "Lcom/google/android/gms/internal/clearcut/zzgz;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public final c:[B

.field public final d:Ljava/lang/String;

.field public e:[[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgb;->e:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->c:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgb;->d:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->e:[[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzfz;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/clearcut/zzfs;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgb;->e:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->c:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->d(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->e:[[B

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->e:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->d(I[B)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->d:Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/clearcut/zzfs;->c(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final c()I
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgb;->e:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->c:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/zzfs;->l(I)I

    move-result v0

    array-length v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v3

    array-length v1, v1

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->e:[[B

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v2

    move v1, v0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->e:[[B

    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    array-length v5, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v5

    array-length v4, v4

    add-int/2addr v5, v4

    add-int/2addr v5, v0

    move v0, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v3, v0

    add-int/2addr v3, v1

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->d:Ljava/lang/String;

    if-eqz p0, :cond_4

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzfs;->g(ILjava/lang/String;)I

    move-result p0

    add-int/2addr p0, v3

    return p0

    :cond_4
    return v3
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;->e()Lcom/google/android/gms/internal/clearcut/zzfu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzgz;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->e:[[B

    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    invoke-virtual {p0}, [[B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    iput-object p0, v0, Lcom/google/android/gms/internal/clearcut/zzgz;->e:[[B

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic d()Lcom/google/android/gms/internal/clearcut/zzfz;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzgz;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzgz;

    return-object p0
.end method

.method public final synthetic e()Lcom/google/android/gms/internal/clearcut/zzfu;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzgz;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzgz;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/zzgz;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzgz;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->c:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzgz;->c:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzgz;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    if-eqz v1, :cond_4

    return v2

    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->e:[[B

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/zzgz;->e:[[B

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzfy;->a:Ljava/lang/Object;

    if-nez p0, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    array-length v1, p0

    :goto_0
    if-nez p1, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    array-length v3, p1

    :goto_1
    move v4, v2

    move v5, v4

    :goto_2
    if-ge v4, v1, :cond_7

    aget-object v6, p0, v4

    if-nez v6, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-ge v5, v3, :cond_8

    aget-object v6, p1, v5

    if-nez v6, :cond_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    if-lt v4, v1, :cond_9

    move v6, v0

    goto :goto_4

    :cond_9
    move v6, v2

    :goto_4
    if-lt v5, v3, :cond_a

    move v7, v0

    goto :goto_5

    :cond_a
    move v7, v2

    :goto_5
    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    return v0

    :cond_b
    if-eq v6, v7, :cond_c

    goto :goto_6

    :cond_c
    aget-object v6, p0, v4

    aget-object v7, p1, v5

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_d

    :goto_6
    return v2

    :cond_d
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->c:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const v1, 0x20fa96ae

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzgz;->e:[[B

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzfy;->a:Ljava/lang/Object;

    if-nez p0, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    array-length v2, p0

    :goto_1
    move v3, v1

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v4, p0, v1

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v4, v3

    move v3, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit16 v0, v0, 0x4d5

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method
