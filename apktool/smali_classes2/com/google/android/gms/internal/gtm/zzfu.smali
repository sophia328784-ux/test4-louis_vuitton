.class public final Lcom/google/android/gms/internal/gtm/zzfu;
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
    .locals 13

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    array-length v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v2, p2, v4

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v2

    aget-object p2, p2, v5

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_e

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_3
    :goto_1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p2

    int-to-double v8, p2

    cmpg-double p2, v8, v0

    if-gez p2, :cond_4

    move p2, v5

    goto :goto_2

    :cond_4
    move p2, v4

    :goto_2
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v0

    if-gez v8, :cond_5

    move v4, v5

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    xor-int/2addr p2, v4

    const-wide/high16 v9, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v8, :cond_7

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_7

    if-eq v5, p2, :cond_6

    move-wide v9, v11

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p0

    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p0

    :cond_9
    :goto_3
    cmpl-double v4, v2, v0

    if-nez v4, :cond_b

    cmpl-double p2, v6, v0

    if-nez p2, :cond_a

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_a
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p0

    :cond_b
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_d

    if-eqz v4, :cond_d

    cmpl-double p0, v6, v0

    if-nez p0, :cond_d

    if-eq v5, p2, :cond_c

    move-wide v9, v11

    :cond_c
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p0

    :cond_d
    div-double/2addr v2, v6

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p0

    :cond_e
    :goto_4
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p1
.end method
