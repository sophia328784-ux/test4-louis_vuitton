.class abstract Lcom/google/android/gms/internal/fido/zzce;
.super Lcom/google/android/gms/internal/fido/zzcf;
.source "SourceFile"


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p0, Lcom/google/android/gms/internal/fido/zzci;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzci;->e:Lcom/google/android/gms/internal/fido/zzcj;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fido/zzcj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/fido/zzci;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzci;->e:Lcom/google/android/gms/internal/fido/zzcj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcd;->c()Lcom/google/android/gms/internal/fido/zzcf;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzcy;->a(Lcom/google/android/gms/internal/fido/zzcf;)I

    move-result p0

    return p0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/fido/zzci;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzci;->e:Lcom/google/android/gms/internal/fido/zzcj;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcj;->e:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method
