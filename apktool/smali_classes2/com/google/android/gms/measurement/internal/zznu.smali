.class final Lcom/google/android/gms/measurement/internal/zznu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzoc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzoc;J)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zznu;->zza:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznu;->zzb:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznu;->zzb:Lcom/google/android/gms/measurement/internal/zzoc;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zznu;->zza:J

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzoc;->f:Lcom/google/android/gms/measurement/internal/zzoa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzoc;->k()V

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v5, "Activity resumed, time"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzic;->d:Lcom/google/android/gms/measurement/internal/zzal;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->S0:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzal;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzal;->v()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/google/android/gms/measurement/internal/zzoc;->d:Z

    if-eqz v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzoa;->d:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzoa;->c:Lcom/google/android/gms/measurement/internal/zznz;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaz;->c()V

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzoa;->a:J

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzoa;->b:J

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzal;->v()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzic;->e:Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzic;->k(Lcom/google/android/gms/measurement/internal/zzje;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzhh;->s:Lcom/google/android/gms/measurement/internal/zzhc;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhc;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzoa;->d:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzoa;->c:Lcom/google/android/gms/measurement/internal/zznz;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaz;->c()V

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzoa;->a:J

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzoa;->b:J

    :cond_3
    :goto_0
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzoc;->g:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzny;->b:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzny;->a:Lcom/google/android/gms/measurement/internal/zznx;

    if-eqz p0, :cond_4

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzoc;->c:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzic;->e:Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzic;->k(Lcom/google/android/gms/measurement/internal/zzje;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhh;->s:Lcom/google/android/gms/measurement/internal/zzhc;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->b(Z)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzoc;->d:Z

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzoc;->e:Lcom/google/android/gms/measurement/internal/zzob;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzob;->a:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->f()Z

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzic;->k:Lcom/google/android/gms/common/util/DefaultClock;

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->d:Lcom/google/android/gms/measurement/internal/zzal;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfy;->e1:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/measurement/internal/zzal;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_1

    :cond_6
    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/google/android/gms/measurement/internal/zzob;->b(JJ)V

    return-void
.end method
