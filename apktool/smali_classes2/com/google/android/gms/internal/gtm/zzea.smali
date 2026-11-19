.class public final Lcom/google/android/gms/internal/gtm/zzea;
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
    .locals 11

    array-length p0, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v1

    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v0

    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkn;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v1

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkr;

    aget-object p2, p2, v0

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkn;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    move v6, v5

    :goto_1
    if-nez v5, :cond_2

    if-ge v6, v4, :cond_2

    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/gtm/zzkr;->j(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v5, p2, Lcom/google/android/gms/internal/gtm/zzkn;->b:Lcom/google/android/gms/internal/gtm/zzdi;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/gtm/zzkk;

    int-to-double v8, v6

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    const/4 v8, 0x3

    new-array v8, v8, [Lcom/google/android/gms/internal/gtm/zzkk;

    aput-object v7, v8, v1

    aput-object v10, v8, v0

    aput-object p0, v8, v2

    invoke-interface {v5, p1, v8}, Lcom/google/android/gms/internal/gtm/zzdi;->a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzdj;->g(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v5

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkl;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>(Ljava/lang/Boolean;)V

    return-object p0
.end method
