.class final Lcom/google/android/gms/internal/measurement/zzaex;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaew;
    .locals 1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaew;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzaew;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaew;->c()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaew;->e()V

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaew;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method
