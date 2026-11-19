.class public abstract Lcom/google/android/gms/internal/gtm/zzim;
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
    .locals 3

    array-length p1, p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    :try_start_0
    aget-object p1, p2, v1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v0

    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzdj;->b(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/android/gms/internal/gtm/zzim;->c(DD)Z

    move-result p0

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkl;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    :cond_2
    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkl;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    :catch_0
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkl;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public abstract c(DD)Z
.end method
