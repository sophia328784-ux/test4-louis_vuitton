.class final Lcom/google/android/gms/internal/measurement/zzagb;
.super Lcom/google/android/gms/internal/measurement/zzafz;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaga;->f:Lcom/google/android/gms/internal/measurement/zzaga;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->a()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    :cond_0
    return-object p0
.end method
