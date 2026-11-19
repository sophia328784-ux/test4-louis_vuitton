.class public final Lcom/google/android/gms/internal/gtm/zzdv;
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

    array-length p0, p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p0, v3, :cond_0

    if-ne p0, v0, :cond_1

    move p0, v0

    :cond_0
    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v4, p2, v1

    instance-of v4, v4, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v4, p2, v2

    instance-of v4, v4, Lcom/google/android/gms/internal/gtm/zzkn;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v4, p2, v1

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzkr;

    aget-object v5, p2, v2

    check-cast v5, Lcom/google/android/gms/internal/gtm/zzkn;

    iget-object v6, v4, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne p0, v0, :cond_2

    aget-object p0, p2, v3

    move v8, v1

    goto :goto_5

    :cond_2
    if-lez v7, :cond_3

    move p0, v2

    goto :goto_1

    :cond_3
    move p0, v1

    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Z)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/gtm/zzkr;->h(I)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    move p2, v1

    :goto_2
    if-ge p2, v7, :cond_5

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/gtm/zzkr;->j(I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/gtm/zzkr;->h(I)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    goto :goto_3

    :cond_4
    move p2, v8

    goto :goto_2

    :cond_5
    move v8, v2

    :goto_3
    if-ge p2, v7, :cond_6

    move p2, v2

    goto :goto_4

    :cond_6
    move p2, v1

    :goto_4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Z)V

    :goto_5
    if-ge v8, v7, :cond_8

    iget-object p2, v4, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v8, p2, :cond_8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/gtm/zzkr;->j(I)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, v5, Lcom/google/android/gms/internal/gtm/zzkn;->b:Lcom/google/android/gms/internal/gtm/zzdi;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzkk;

    int-to-double v10, v8

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v12, v10}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/google/android/gms/internal/gtm/zzkk;

    aput-object p0, v10, v1

    aput-object v9, v10, v2

    aput-object v12, v10, v3

    aput-object v4, v10, v0

    invoke-interface {p2, p1, v10}, Lcom/google/android/gms/internal/gtm/zzdi;->a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    return-object p0
.end method
