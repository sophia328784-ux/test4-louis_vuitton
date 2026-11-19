.class public final Lcom/google/android/gms/internal/gtm/zzgg;
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

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    move p0, v1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v1, p2, p1

    instance-of v1, v1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-ne p0, v0, :cond_2

    aget-object p0, p2, p1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    aget-object p0, p2, p1

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eq v0, v2, :cond_3

    const/4 v3, -0x1

    goto :goto_1

    :cond_3
    move v3, p1

    :goto_1
    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_4

    array-length p2, p0

    if-lez p2, :cond_4

    aget-object p2, p0, p1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    move p1, v0

    :cond_4
    :goto_2
    array-length p2, p0

    if-ge p1, p2, :cond_5

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzkv;

    aget-object v0, p0, p1

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzkr;-><init>(Ljava/util/List;)V

    return-object p0
.end method
