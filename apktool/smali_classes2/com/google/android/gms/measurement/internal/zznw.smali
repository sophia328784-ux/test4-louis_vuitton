.class final synthetic Lcom/google/android/gms/measurement/internal/zznw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zznx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zznx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznw;->zza:Lcom/google/android/gms/measurement/internal/zznx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zznw;->zza:Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzny;->b:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzic;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzgu;->m:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v5, "Application going to the background"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzic;->e:Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzic;->k(Lcom/google/android/gms/measurement/internal/zzje;)V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzhh;->s:Lcom/google/android/gms/measurement/internal/zzhc;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->b(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    iput-boolean v5, v0, Lcom/google/android/gms/measurement/internal/zzoc;->d:Z

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzic;->d:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzal;->v()Z

    move-result v6

    if-nez v6, :cond_0

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zznx;->zzb:J

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoc;->f:Lcom/google/android/gms/measurement/internal/zzoa;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoa;->a(ZZJ)Z

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoa;->c:Lcom/google/android/gms/measurement/internal/zznz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->c()V

    :cond_0
    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zznx;->zza:J

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/zzgu;->l:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v0, "Application backgrounded at: timestamp_millis"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v6, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/zzic;->m:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->h()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->p()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznl;->n()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzic;->i:Lcom/google/android/gms/measurement/internal/zzpp;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzic;->k(Lcom/google/android/gms/measurement/internal/zzje;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpp;->R()I

    move-result p0

    const v6, 0x3b3a8

    if-lt p0, v6, :cond_2

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->p()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->h()V

    invoke-virtual {p0, v5}, Lcom/google/android/gms/measurement/internal/zznl;->w(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzml;

    invoke-direct {v5, p0, v0}, Lcom/google/android/gms/measurement/internal/zzml;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, v5}, Lcom/google/android/gms/measurement/internal/zznl;->u(Ljava/lang/Runnable;)V

    :cond_2
    const/4 p0, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->N0:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4, p0, v0}, Lcom/google/android/gms/measurement/internal/zzal;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/zzic;->i:Lcom/google/android/gms/measurement/internal/zzpp;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzic;->k(Lcom/google/android/gms/measurement/internal/zzje;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzal;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/measurement/internal/zzpp;->L(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/16 v3, 0x3e8

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->E:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4, p0, v0}, Lcom/google/android/gms/measurement/internal/zzal;->o(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)J

    move-result-wide v3

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v0, "[sgtm] Scheduling batch upload with minimum latency in millis"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/zzic;->u:Lcom/google/android/gms/measurement/internal/zzlq;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzic;->j(Lcom/google/android/gms/measurement/internal/zzf;)V

    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/zzic;->u:Lcom/google/android/gms/measurement/internal/zzlq;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzlq;->k(J)V

    :cond_4
    return-void
.end method
