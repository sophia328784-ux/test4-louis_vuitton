.class final Lcom/google/android/gms/internal/gtm/zzai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzak;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzjh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzjh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzai;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzjh;->d:Lcom/google/android/gms/internal/gtm/zzjg;

    iget-object v5, v1, Lcom/google/android/gms/internal/gtm/zzjg;->d:Lcom/google/android/gms/internal/gtm/zzju;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    iget-object v6, v0, Lcom/google/android/gms/internal/gtm/zzjh;->e:Lcom/google/android/gms/internal/gtm/zzkd;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzak;->l:Lcom/google/android/gms/internal/gtm/zzbt;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzak;->e:Lcom/google/android/gms/internal/gtm/zzbu;

    iget-object v7, v2, Lcom/google/android/gms/internal/gtm/zzbu;->c:Lcom/google/android/gms/tagmanager/zzq;

    iget-object v8, v2, Lcom/google/android/gms/internal/gtm/zzbu;->d:Lcom/google/android/gms/tagmanager/zzh;

    move-object v3, v2

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzbt;

    move-object v4, v3

    iget-object v3, v4, Lcom/google/android/gms/internal/gtm/zzbu;->a:Landroid/content/Context;

    iget-object v4, v4, Lcom/google/android/gms/internal/gtm/zzbu;->b:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/gtm/zzbt;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzju;Lcom/google/android/gms/internal/gtm/zzkd;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/tagmanager/zzh;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzak;->l:Lcom/google/android/gms/internal/gtm/zzbt;

    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzak;->m:I

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzak;->n:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzar;

    iget-object v5, v4, Lcom/google/android/gms/internal/gtm/zzar;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Evaluating tags for pending event "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzak;->l:Lcom/google/android/gms/internal/gtm/zzbt;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/gtm/zzbt;->b(Lcom/google/android/gms/internal/gtm/zzar;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzak;->n:Ljava/util/ArrayList;

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzak;->l:Lcom/google/android/gms/internal/gtm/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/internal/gtm/zzbt;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzap;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzap;

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzce;->m:Lcom/google/android/gms/internal/gtm/zzce;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzce;

    invoke-direct {v3}, Lcom/google/android/gms/internal/gtm/zzce;-><init>()V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzce;->m:Lcom/google/android/gms/internal/gtm/zzce;

    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/gtm/zzce;->m:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzce;->a()V

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzak;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Runtime initialized successfully for container "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/gtm/zzjh;->d:Lcom/google/android/gms/internal/gtm/zzjg;

    iget-wide v2, v2, Lcom/google/android/gms/internal/gtm/zzjg;->b:J

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzak;->k:Lcom/google/android/gms/internal/gtm/zzam;

    const-wide/32 v5, 0x6ddd00

    const-wide/32 v7, 0xf731400

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/gtm/zzam;->a(JJ)J

    move-result-wide v4

    const-wide/32 v6, 0x2932e00

    add-long/2addr v4, v6

    add-long/2addr v4, v2

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzak;->p:Z

    if-eqz v1, :cond_4

    iget v0, v0, Lcom/google/android/gms/internal/gtm/zzjh;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->j:Lcom/google/android/gms/common/util/DefaultClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->k:Lcom/google/android/gms/internal/gtm/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzam;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "FORBIDDEN_COUNT"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const-wide/32 v1, 0x927c0

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/gtm/zzam;->a(JJ)J

    move-result-wide v0

    add-long/2addr v3, v0

    :goto_1
    invoke-static {p0, v3, v4}, Lcom/google/android/gms/internal/gtm/zzak;->a(Lcom/google/android/gms/internal/gtm/zzak;J)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->j:Lcom/google/android/gms/common/util/DefaultClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v4, v0

    const-wide/32 v0, 0xdbba0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzak;->a(Lcom/google/android/gms/internal/gtm/zzak;J)V

    return-void
.end method
