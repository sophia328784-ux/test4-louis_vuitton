.class final Lcom/google/android/gms/measurement/internal/zzkh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzlj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;J)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzkh;->zza:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkh;->zzb:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkh;->zzb:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->h()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgu;->m:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v3, "Resetting analytics data (FE)"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzic;->h:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzoc;->f:Lcom/google/android/gms/measurement/internal/zzoa;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzoa;->c:Lcom/google/android/gms/measurement/internal/zznz;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaz;->c()V

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzoa;->d:Lcom/google/android/gms/measurement/internal/zzoc;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzic;->k:Lcom/google/android/gms/common/util/DefaultClock;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/measurement/internal/zzoa;->a:J

    iput-wide v4, v3, Lcom/google/android/gms/measurement/internal/zzoa;->b:J

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->r()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->l()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->f()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzic;->e:Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzic;->k(Lcom/google/android/gms/measurement/internal/zzje;)V

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzhh;->f:Lcom/google/android/gms/measurement/internal/zzhe;

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzkh;->zza:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzhe;->b(J)V

    iget-object p0, v4, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzic;->e:Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->k(Lcom/google/android/gms/measurement/internal/zzje;)V

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzhh;->v:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhg;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzhh;->v:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzhg;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzhh;->p:Lcom/google/android/gms/measurement/internal/zzhe;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhe;->b(J)V

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzhh;->q:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhe;->b(J)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzic;->d:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->u()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzhh;->o(Z)V

    :cond_1
    iget-object p0, v4, Lcom/google/android/gms/measurement/internal/zzhh;->w:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {p0, v6}, Lcom/google/android/gms/measurement/internal/zzhg;->b(Ljava/lang/String;)V

    iget-object p0, v4, Lcom/google/android/gms/measurement/internal/zzhh;->x:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {p0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhe;->b(J)V

    iget-object p0, v4, Lcom/google/android/gms/measurement/internal/zzhh;->y:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {p0, v6}, Lcom/google/android/gms/measurement/internal/zzhd;->b(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->p()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->h()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/gms/measurement/internal/zznl;->w(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznl;->s()V

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->o()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgl;->k()V

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzmh;

    invoke-direct {v5, p0, v4}, Lcom/google/android/gms/measurement/internal/zzmh;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, v5}, Lcom/google/android/gms/measurement/internal/zznl;->u(Ljava/lang/Runnable;)V

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/zzoc;->e:Lcom/google/android/gms/measurement/internal/zzob;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzob;->a()V

    iput-boolean v3, v0, Lcom/google/android/gms/measurement/internal/zzlj;->r:Z

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->p()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object p0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zznl;->k(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
