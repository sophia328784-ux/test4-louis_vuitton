.class final synthetic Lcom/google/android/gms/internal/measurement/zzoy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzpg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzpg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzoy;->zza:Lcom/google/android/gms/internal/measurement/zzpg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzoy;->zza:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzqs;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzlk;->d:Lcom/google/common/base/Supplier;

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzlk;->g:Lcom/google/android/gms/internal/measurement/zzrf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzrf;->b()Lcom/google/android/gms/internal/measurement/zzqn;

    move-result-object v4

    iget-boolean v5, v4, Lcom/google/android/gms/internal/measurement/zzqn;->i:Z

    iget-boolean v4, v4, Lcom/google/android/gms/internal/measurement/zzqn;->j:Z

    if-eqz v4, :cond_3

    invoke-static {v1}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v5, :cond_0

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzme;->B()Lcom/google/android/gms/internal/measurement/zzmb;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzqs;->e:Lcom/google/android/gms/internal/measurement/zzqr;

    iget v6, v0, Lcom/google/android/gms/internal/measurement/zzqr;->a:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmd;->A()Lcom/google/android/gms/internal/measurement/zzmc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/zzmd;->B(I)V

    iget v0, v0, Lcom/google/android/gms/internal/measurement/zzqr;->b:I

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v6, v7, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->C(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzme;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzme;->D(Lcom/google/android/gms/internal/measurement/zzmd;)V

    invoke-static {v1}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzme;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzme;->C(Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->c:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzme;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzme;->E(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzme;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmj;->d(Lcom/google/android/gms/internal/measurement/zzme;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    :cond_4
    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmj;->b(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzos;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzos;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object p0

    const-class v2, Lcom/google/android/gms/internal/measurement/zzmk;

    invoke-static {v0, v2, v1, p0}, Lcom/google/common/util/concurrent/Futures;->c(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
