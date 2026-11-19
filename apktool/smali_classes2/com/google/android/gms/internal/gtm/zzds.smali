.class public final Lcom/google/android/gms/internal/gtm/zzds;
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
    .locals 12

    array-length p0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v0

    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v1

    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkn;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkr;

    aget-object p2, p2, v1

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkn;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v0

    :goto_1
    if-ge v6, v4, :cond_2

    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/gtm/zzkr;->j(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p2, Lcom/google/android/gms/internal/gtm/zzkn;->b:Lcom/google/android/gms/internal/gtm/zzdi;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/gtm/zzkk;

    int-to-double v9, v6

    new-instance v11, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-direct {v11, v9}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/google/android/gms/internal/gtm/zzkk;

    aput-object v8, v9, v0

    aput-object v11, v9, v1

    aput-object p0, v9, v2

    invoke-interface {v7, p1, v9}, Lcom/google/android/gms/internal/gtm/zzdi;->a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/gtm/zzkw;->f(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v8

    xor-int/2addr v8, v1

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->k(Z)V

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/gtm/zzkr;-><init>(Ljava/util/List;)V

    return-object p0
.end method
