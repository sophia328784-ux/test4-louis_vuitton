.class public final Lcom/google/android/gms/internal/gtm/zzgd;
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
    .locals 10

    array-length p0, p2

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p0, :cond_0

    if-gt p0, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v3, p2, v2

    instance-of v3, v3, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v3, p2, v2

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object v3, v3, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    if-ne p0, v1, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    aget-object v4, p2, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    if-ge p0, v0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    goto :goto_1

    :cond_2
    aget-object p0, p2, v5

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v6, -0x1

    if-ne p2, v6, :cond_3

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    instance-of v6, p0, Lcom/google/android/gms/internal/gtm/zzkn;

    if-eqz v6, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkn;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkn;->b:Lcom/google/android/gms/internal/gtm/zzdi;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    int-to-double v7, p2

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    new-array v0, v0, [Lcom/google/android/gms/internal/gtm/zzkk;

    aput-object v6, v0, v2

    aput-object v9, v0, v1

    aput-object v7, v0, v5

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzdi;->a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdj;->d(Lcom/google/android/gms/internal/gtm/zzkk;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-virtual {v3, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p2}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkv;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
