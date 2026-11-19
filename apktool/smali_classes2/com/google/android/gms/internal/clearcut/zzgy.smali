.class public final Lcom/google/android/gms/internal/clearcut/zzgy;
.super Lcom/google/android/gms/internal/clearcut/zzfu;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/zzfu<",
        "Lcom/google/android/gms/internal/clearcut/zzgy;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public c:[Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:[I

.field public f:[J

.field public g:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgb;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->d:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgb;->a:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->e:[I

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzgb;->b:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->f:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->g:[J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/zzfz;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/clearcut/zzfs;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->c:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->c(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->d:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->d:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->c(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->e:[I

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->e:[I

    array-length v3, v2

    if-ge v0, v3, :cond_5

    aget v2, v2, v0

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->h(II)V

    if-ltz v2, :cond_4

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/clearcut/zzfs;->f(I)V

    goto :goto_3

    :cond_4
    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfs;->j(J)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->f:[J

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->f:[J

    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-wide v2, v2, v0

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->h(II)V

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfs;->j(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->g:[J

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->g:[J

    array-length v3, v2

    if-ge v0, v3, :cond_7

    aget-wide v2, v2, v0

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/clearcut/zzfs;->h(II)V

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/clearcut/zzfs;->j(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public final c()I
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    move v2, v0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->c:[Ljava/lang/String;

    array-length v5, v4

    if-ge v0, v5, :cond_1

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->a(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->d:[Ljava/lang/String;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    move v3, v0

    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->d:[Ljava/lang/String;

    array-length v6, v5

    if-ge v0, v6, :cond_4

    aget-object v5, v5, v0

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->a(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v6

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v2, v3

    add-int/2addr v2, v4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->e:[I

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    move v3, v0

    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->e:[I

    array-length v5, v4

    if-ge v0, v5, :cond_7

    aget v4, v4, v0

    if-ltz v4, :cond_6

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->m(I)I

    move-result v4

    goto :goto_4

    :cond_6
    const/16 v4, 0xa

    :goto_4
    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    add-int/2addr v2, v3

    array-length v0, v4

    add-int/2addr v2, v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->f:[J

    if-eqz v0, :cond_a

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v1

    move v3, v0

    :goto_5
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->f:[J

    array-length v5, v4

    if-ge v0, v5, :cond_9

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/zzfs;->k(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    add-int/2addr v2, v3

    array-length v0, v4

    add-int/2addr v2, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->g:[J

    if-eqz v0, :cond_c

    array-length v0, v0

    if-lez v0, :cond_c

    move v0, v1

    :goto_6
    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->g:[J

    array-length v4, v3

    if-ge v1, v4, :cond_b

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/zzfs;->k(J)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    add-int/2addr v2, v0

    array-length p0, v3

    add-int/2addr v2, p0

    :cond_c
    return v2
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/clearcut/zzfu;->e()Lcom/google/android/gms/internal/clearcut/zzfu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzgy;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->c:[Ljava/lang/String;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzgy;->c:[Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzgy;->d:[Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->e:[I

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzgy;->e:[I

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->f:[J

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzgy;->f:[J

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->g:[J

    if-eqz p0, :cond_4

    array-length v1, p0

    if-lez v1, :cond_4

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    iput-object p0, v0, Lcom/google/android/gms/internal/clearcut/zzgy;->g:[J

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic d()Lcom/google/android/gms/internal/clearcut/zzfz;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzgy;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzgy;

    return-object p0
.end method

.method public final synthetic e()Lcom/google/android/gms/internal/clearcut/zzfu;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/zzgy;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzgy;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_a

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/zzgy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto/16 :goto_9

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->c:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->c:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzfy;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_9

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->d:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->d:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/zzfy;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->e:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->e:[I

    if-eqz v1, :cond_5

    array-length v4, v1

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_2

    :cond_5
    :goto_0
    if-eqz v3, :cond_7

    array-length v1, v3

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    :goto_1
    move v1, v0

    :goto_2
    if-nez v1, :cond_8

    goto :goto_9

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->f:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->f:[J

    if-eqz v1, :cond_a

    array-length v4, v1

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    goto :goto_5

    :cond_a
    :goto_3
    if-eqz v3, :cond_c

    array-length v1, v3

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    move v1, v2

    goto :goto_5

    :cond_c
    :goto_4
    move v1, v0

    :goto_5
    if-nez v1, :cond_d

    goto :goto_9

    :cond_d
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->g:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/zzgy;->g:[J

    if-eqz p0, :cond_f

    array-length v1, p0

    if-nez v1, :cond_e

    goto :goto_6

    :cond_e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    goto :goto_8

    :cond_f
    :goto_6
    if-eqz p1, :cond_11

    array-length p0, p1

    if-nez p0, :cond_10

    goto :goto_7

    :cond_10
    move p0, v2

    goto :goto_8

    :cond_11
    :goto_7
    move p0, v0

    :goto_8
    if-nez p0, :cond_12

    :goto_9
    return v2

    :cond_12
    :goto_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->c:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/zzfy;->b([Ljava/lang/Object;)I

    move-result v0

    const v1, 0x20fa968f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->d:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/zzfy;->b([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->e:[I

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->f:[J

    if-eqz v1, :cond_3

    array-length v3, v1

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzgy;->g:[J

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    return v2
.end method
