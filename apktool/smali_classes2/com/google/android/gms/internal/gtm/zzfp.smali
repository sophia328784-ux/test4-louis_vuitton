.class public final Lcom/google/android/gms/internal/gtm/zzfp;
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
    .locals 6

    array-length p0, p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p0, p2, v2

    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    const/4 p0, 0x2

    aget-object v0, p2, p0

    instance-of v0, v0, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v0, p2, v1

    aget-object v3, p2, v2

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object v3, v3, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    aget-object p0, p2, p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v2

    if-gt p2, v4, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    move p2, v1

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    if-nez p2, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/gtm/zzkw;->c(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/gtm/zzdj;->h(Lcom/google/android/gms/internal/gtm/zzkk;Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/gtm/zzkw;->c(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/gtm/zzko;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/google/android/gms/internal/gtm/zzko;->f:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq v4, v5, :cond_4

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/gtm/zzko;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/gtm/zzko;->c:Z

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    sget-object v5, Lcom/google/android/gms/internal/gtm/zzko;->e:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq v4, v5, :cond_9

    goto :goto_4

    :cond_4
    :goto_3
    return-object v4

    :cond_5
    move p2, v2

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_9

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/gtm/zzkw;->c(Lcom/google/android/gms/internal/gtm/zzbv;Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/gtm/zzko;

    if-eqz p1, :cond_9

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzko;->f:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p0, p1, :cond_8

    move-object p1, p0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzko;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/gtm/zzko;->c:Z

    if-eqz p1, :cond_9

    :cond_8
    return-object p0

    :cond_9
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0
.end method
