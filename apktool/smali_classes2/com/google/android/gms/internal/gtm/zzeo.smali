.class public final Lcom/google/android/gms/internal/gtm/zzeo;
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
    .locals 4

    array-length p0, p2

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v1

    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzks;

    aget-object p2, p2, v0

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzkr;

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzkn;

    if-eqz p1, :cond_2

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :cond_2
    instance-of p1, p2, Lcom/google/android/gms/internal/gtm/zzks;

    if-nez p1, :cond_3

    instance-of p1, p2, Lcom/google/android/gms/internal/gtm/zzkr;

    if-nez p1, :cond_3

    instance-of p1, p2, Lcom/google/android/gms/internal/gtm/zzkn;

    if-eqz p1, :cond_4

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    move-object p2, p1

    :cond_4
    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzkv;

    if-eqz p1, :cond_5

    instance-of p1, p2, Lcom/google/android/gms/internal/gtm/zzkv;

    if-nez p1, :cond_6

    :cond_5
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/gtm/zzdj;->f(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    :cond_7
    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkl;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p0
.end method
