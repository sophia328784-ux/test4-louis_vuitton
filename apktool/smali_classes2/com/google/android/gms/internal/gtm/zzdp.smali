.class public final Lcom/google/android/gms/internal/gtm/zzdp;
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

    const/4 p1, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_0

    if-gt p0, p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v2, p2, v1

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzkr;

    const/4 v3, 0x2

    if-ge p0, v3, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    goto :goto_1

    :cond_1
    aget-object v0, p2, v0

    :goto_1
    if-ge p0, p1, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    goto :goto_2

    :cond_2
    aget-object p0, p2, v3

    :goto_2
    iget-object p1, v2, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p0, v3, :cond_4

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->a(Lcom/google/android/gms/internal/gtm/zzkk;)D

    move-result-wide v3

    double-to-int p0, v3

    if-gez p0, :cond_3

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int p0, p2, p0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, p0

    :cond_4
    :goto_3
    if-ge v1, p2, :cond_6

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzkr;->j(I)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/gtm/zzdj;->h(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, -0x1

    :goto_4
    int-to-double p0, v1

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object p2
.end method
