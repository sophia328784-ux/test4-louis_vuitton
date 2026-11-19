.class final Lcom/google/android/gms/internal/measurement/zzxw;
.super Lcom/google/android/gms/internal/measurement/zzyl;
.source "SourceFile"


# virtual methods
.method public final b(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzc;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzabe;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzabe;->a:Lcom/google/android/gms/internal/measurement/zzabc;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabc;->d:Ljava/util/Set;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzabb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaba;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzaba;-><init>(Lcom/google/android/gms/internal/measurement/zzabb;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaba;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaba;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzc;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Lcom/google/android/gms/internal/measurement/zzzc;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
