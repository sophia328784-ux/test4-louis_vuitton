.class public final Lcom/google/android/gms/internal/gtm/zzgf;
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
    .locals 10

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

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v2, p2, v1

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    if-ge p0, v3, :cond_1

    move-wide v6, v4

    goto :goto_1

    :cond_1
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->a(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v6

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v8, p1

    if-ne p0, v0, :cond_2

    aget-object p0, p2, v3

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p0, p1, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->a(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v8

    :cond_2
    cmpg-double p0, v6, v4

    if-gez p0, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    add-double/2addr p0, v6

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    :goto_2
    double-to-int p0, p0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    goto :goto_2

    :goto_3
    cmpg-double p1, v8, v4

    if-gez p1, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double p1, p1

    add-double/2addr p1, v8

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    :goto_4
    double-to-int p1, p1

    goto :goto_5

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double p1, p1

    invoke-static {v8, v9, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto :goto_4

    :goto_5
    sub-int/2addr p1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p0

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-virtual {v2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
