.class abstract Lcom/google/android/gms/internal/measurement/zzafz;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;
.end method

.method public final b(ILcom/google/android/gms/internal/measurement/zzacw;Ljava/lang/Object;)Z
    .locals 8

    iget v0, p2, Lcom/google/android/gms/internal/measurement/zzacw;->b:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_9

    const/4 v4, 0x0

    const-string v5, "Protocol message end-group tag did not match expected tag."

    if-eq v0, v3, :cond_3

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzacw;->E()I

    move-result p1

    shl-int/lit8 p2, v1, 0x3

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzaga;

    or-int/2addr p0, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lcom/google/android/gms/internal/measurement/zzaga;->d(ILjava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {}, Lr81;->k()V

    return v4

    :cond_1
    if-eqz p1, :cond_2

    return v4

    :cond_2
    invoke-static {v5}, Ln91;->c(Ljava/lang/String;)V

    return v4

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->a()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0

    shl-int/2addr v1, v3

    add-int/2addr p1, v2

    const/16 v6, 0x64

    if-ge p1, v6, :cond_8

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzacw;->x()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_5

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzafz;->b(ILcom/google/android/gms/internal/measurement/zzacw;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_5
    or-int/lit8 p0, v1, 0x4

    iget p1, p2, Lcom/google/android/gms/internal/measurement/zzacw;->b:I

    if-ne p0, p1, :cond_7

    iget-boolean p0, v0, Lcom/google/android/gms/internal/measurement/zzaga;->e:Z

    if-eqz p0, :cond_6

    iput-boolean v4, v0, Lcom/google/android/gms/internal/measurement/zzaga;->e:Z

    :cond_6
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzaga;

    or-int/lit8 p0, v1, 0x3

    invoke-virtual {p3, p0, v0}, Lcom/google/android/gms/internal/measurement/zzaga;->d(ILjava/lang/Object;)V

    return v2

    :cond_7
    invoke-static {v5}, Ln91;->c(Ljava/lang/String;)V

    return v4

    :cond_8
    const-string p0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-static {p0}, Ln91;->c(Ljava/lang/String;)V

    return v4

    :cond_9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzacw;->K()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object p0

    shl-int/lit8 p1, v1, 0x3

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzaga;

    or-int/2addr p1, v4

    invoke-virtual {p3, p1, p0}, Lcom/google/android/gms/internal/measurement/zzaga;->d(ILjava/lang/Object;)V

    return v2

    :cond_a
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzacw;->D()J

    move-result-wide p0

    shl-int/lit8 p2, v1, 0x3

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzaga;

    or-int/2addr p2, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/google/android/gms/internal/measurement/zzaga;->d(ILjava/lang/Object;)V

    return v2

    :cond_b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzacw;->B()J

    move-result-wide p0

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzaga;

    shl-int/lit8 p2, v1, 0x3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/google/android/gms/internal/measurement/zzaga;->d(ILjava/lang/Object;)V

    return v2
.end method
