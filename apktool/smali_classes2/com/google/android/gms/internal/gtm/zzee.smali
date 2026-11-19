.class public final Lcom/google/android/gms/internal/gtm/zzee;
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

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    if-ne p0, v0, :cond_1

    move p0, v0

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v3, p2, v1

    instance-of v3, v3, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v3, p2, v1

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzkr;

    if-ne p0, v0, :cond_2

    aget-object p0, p2, v2

    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkn;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v2

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkn;

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkn;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzec;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzkn;-><init>(Lcom/google/android/gms/internal/gtm/zzdi;)V

    :goto_1
    iget-object v0, v3, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzeb;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/gtm/zzeb;-><init>(Lcom/google/android/gms/internal/gtm/zzkn;Lcom/google/android/gms/internal/gtm/zzbv;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    aget-object p0, p2, v1

    return-object p0
.end method
