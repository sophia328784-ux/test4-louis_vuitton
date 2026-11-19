.class public final Lcom/google/android/gms/internal/gtm/zzfy;
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

    array-length p0, p2

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-ne p0, p1, :cond_1

    move p0, p1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v2, p2, v0

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v2, p2, v0

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    if-ne p0, p1, :cond_2

    aget-object p0, p2, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->a(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide p0

    double-to-int v0, p0

    :cond_2
    if-ltz v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lt v0, p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4
    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkv;

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
