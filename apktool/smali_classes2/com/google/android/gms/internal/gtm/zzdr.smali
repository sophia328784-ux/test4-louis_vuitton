.class public final Lcom/google/android/gms/internal/gtm/zzdr;
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
    .locals 8

    array-length p0, p2

    const/4 p1, 0x1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lez p0, :cond_0

    if-gt p0, v0, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v1, p2, v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzkr;

    const/4 v2, 0x2

    if-ge p0, v2, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    goto :goto_1

    :cond_1
    aget-object p1, p2, p1

    :goto_1
    iget-object v3, v1, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    if-ne p0, v0, :cond_3

    aget-object p0, p2, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->a(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v6

    double-to-int p0, v6

    if-gez p0, :cond_2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int v5, v4, p0

    goto :goto_2

    :cond_2
    invoke-static {p0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_3
    :goto_2
    if-ltz v5, :cond_5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/gtm/zzkr;->j(I)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/gtm/zzdj;->h(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    const/4 v5, -0x1

    :goto_3
    int-to-double p0, v5

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p2
.end method
