.class final Lcom/google/android/gms/internal/measurement/zzzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzzp;


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzc;)V
    .locals 1

    iget-boolean p0, p1, Lcom/google/android/gms/internal/measurement/zzyl;->d:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzabt;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzabt;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzabt;->b:I

    const/16 v0, 0x14

    if-le p0, v0, :cond_0

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzyl;->a:Ljava/lang/String;

    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/measurement/zzyk;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyl;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzc;)V

    return-void
.end method
