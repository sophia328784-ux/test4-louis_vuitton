.class public final Lcom/google/android/gms/internal/gtm/zzfo;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 6

    array-length p0, p2

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v0

    aget-object p1, p2, v1

    const/4 v2, 0x2

    aget-object p2, p2, v2

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p0, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p0, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzkw;->f(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzkw;->f(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzkw;->f(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzkw;->g(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v2

    instance-of v3, p0, Lcom/google/android/gms/internal/gtm/zzks;

    if-eqz v3, :cond_5

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzks;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzks;->b:Z

    if-nez p1, :cond_4

    invoke-virtual {p0, p2, v2}, Lcom/google/android/gms/internal/gtm/zzkk;->f(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-object p2

    :cond_5
    instance-of v3, p0, Lcom/google/android/gms/internal/gtm/zzkr;

    if-eqz v3, :cond_a

    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzkr;

    const-string v4, "length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v2, p0, v4

    if-nez v2, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    double-to-int p0, p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/gtm/zzkr;->i(I)V

    return-object p2

    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_a

    const-wide/16 v4, 0x0

    cmpl-double p1, v0, v4

    if-ltz p1, :cond_a

    double-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-ltz p1, :cond_9

    iget-object p0, v3, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_8

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/gtm/zzkr;->i(I)V

    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_9
    invoke-static {}, Lzy0;->b()V

    const/4 p0, 0x0

    return-object p0

    :cond_a
    invoke-virtual {p0, p2, v2}, Lcom/google/android/gms/internal/gtm/zzkk;->f(Lcom/google/android/gms/internal/gtm/zzkk;Ljava/lang/String;)V

    return-object p2
.end method
