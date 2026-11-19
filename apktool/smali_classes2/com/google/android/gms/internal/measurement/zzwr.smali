.class abstract Lcom/google/android/gms/internal/measurement/zzwr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/internal/measurement/zzws;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->d0()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->e0()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->g0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzwr;->c(Lcom/google/android/gms/internal/measurement/zzws;)V

    return-void

    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->e0()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzwr;->a(Lcom/google/android/gms/internal/measurement/zzws;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzwr;->c(Lcom/google/android/gms/internal/measurement/zzws;)V

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/measurement/zzws;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->d0()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->e0()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->e0()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzwr;->b(Lcom/google/android/gms/internal/measurement/zzws;)V

    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/measurement/zzws;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzws;->h0()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method
