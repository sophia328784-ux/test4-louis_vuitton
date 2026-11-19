.class public final Lcom/google/android/gms/internal/gtm/zzfk;
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

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p0, v3, :cond_0

    if-ne p0, v1, :cond_1

    move p0, v1

    :cond_0
    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v4, p2, v2

    instance-of v4, v4, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    if-ne p0, v1, :cond_2

    aget-object v1, p2, v3

    instance-of v1, v1, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzdj;->g(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object p0, p2, v2

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    if-le p0, v3, :cond_4

    aget-object p0, p2, v3

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    :cond_4
    :goto_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/gtm/zzkw;->e(Lcom/google/android/gms/internal/gtm/zzbv;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/gtm/zzko;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzkw;->f(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0
.end method
