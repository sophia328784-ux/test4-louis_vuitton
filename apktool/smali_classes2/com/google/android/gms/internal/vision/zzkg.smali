.class final Lcom/google/android/gms/internal/vision/zzkg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzkh;


# virtual methods
.method public final I()Lcom/google/android/gms/internal/vision/zzke;
    .locals 1

    sget-object p0, Lcom/google/android/gms/internal/vision/zzke;->c:Lcom/google/android/gms/internal/vision/zzke;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/vision/zzke;

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzke;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/vision/zzke;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/google/android/gms/internal/vision/zzke;->b:Z

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzke;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/zzke;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/zzke;

    iget-boolean p0, p1, Lcom/google/android/gms/internal/vision/zzke;->b:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzke;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/zzke;

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzke;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/zzke;

    check-cast p2, Lcom/google/android/gms/internal/vision/zzke;

    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/google/android/gms/internal/vision/zzke;->b:Z

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/vision/zzke;

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzke;-><init>()V

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/vision/zzke;

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzke;->b:Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzke;->c()V

    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzke;->putAll(Ljava/util/Map;)V

    :cond_2
    return-object p1
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/google/android/gms/internal/vision/zzke;

    if-nez p2, :cond_2

    .line 50
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzke;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0

    .line 54
    :cond_2
    invoke-static {}, Lr81;->h()V

    return-void
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/vision/zzke;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzke;->b:Z

    return-object p1
.end method
