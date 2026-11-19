.class public final Lcom/google/android/gms/internal/gtm/zzgu;
.super Lcom/google/android/gms/internal/gtm/zzdk;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/gtm/zzgt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzgt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzdk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgu;->a:Lcom/google/android/gms/internal/gtm/zzgt;

    return-void
.end method


# virtual methods
.method public final varargs b(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 4

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v2, p2, v0

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzkv;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object v0, p2, v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzkv;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzkv;->b:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    if-lt p1, v3, :cond_1

    aget-object p1, p2, v1

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    if-eq p1, v3, :cond_1

    instance-of p1, p1, Lcom/google/android/gms/internal/gtm/zzks;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    aget-object p1, p2, v1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzks;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzkk;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/gtm/zzkt;

    xor-int/2addr v3, v1

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Z)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzkw;->f(Lcom/google/android/gms/internal/gtm/zzkk;)Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Z)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzkk;->c()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgu;->a:Lcom/google/android/gms/internal/gtm/zzgt;

    invoke-interface {p0, v0, v2}, Lcom/google/android/gms/internal/gtm/zzgt;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzkw;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzkk;

    move-result-object p0

    return-object p0
.end method
