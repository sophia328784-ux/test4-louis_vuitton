.class public final Lcom/google/android/gms/internal/gtm/zzga;
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
    .locals 5

    array-length p0, p2

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-ne p0, v1, :cond_0

    move v3, v0

    move p0, v1

    goto :goto_0

    :cond_0
    move v3, p1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v3, p2, p1

    instance-of v3, v3, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p1, p2, p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    if-ge p0, v1, :cond_2

    move-wide v1, v3

    goto :goto_1

    :cond_2
    aget-object p0, p2, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->a(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v1

    :goto_1
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v3, p0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int p0, v1

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p2
.end method
