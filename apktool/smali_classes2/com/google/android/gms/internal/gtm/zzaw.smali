.class final Lcom/google/android/gms/internal/gtm/zzaw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzav;

.field final synthetic zzb:J

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Ljava/lang/String;

.field final synthetic zzf:Ljava/util/Map;

.field final synthetic zzg:Ljava/lang/String;

.field final synthetic zzh:Lcom/google/android/gms/internal/gtm/zzax;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzax;Lcom/google/android/gms/internal/gtm/zzav;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zza:Lcom/google/android/gms/internal/gtm/zzav;

    iput-wide p3, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzb:J

    iput-object p5, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzd:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zze:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzf:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzg:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzh:Lcom/google/android/gms/internal/gtm/zzax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzh:Lcom/google/android/gms/internal/gtm/zzax;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzax;->zze(Lcom/google/android/gms/internal/gtm/zzax;)Lcom/google/android/gms/internal/gtm/zzay;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zza:Lcom/google/android/gms/internal/gtm/zzav;

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzce;->m:Lcom/google/android/gms/internal/gtm/zzce;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzce;

    invoke-direct {v2}, Lcom/google/android/gms/internal/gtm/zzce;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzce;->m:Lcom/google/android/gms/internal/gtm/zzce;

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzce;->m:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzax;->zzc(Lcom/google/android/gms/internal/gtm/zzax;)Landroid/content/Context;

    move-result-object v3

    monitor-enter v2

    :try_start_0
    iget-object v4, v2, Lcom/google/android/gms/internal/gtm/zzce;->a:Landroid/content/Context;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/gtm/zzce;->a:Landroid/content/Context;

    iget-object v3, v2, Lcom/google/android/gms/internal/gtm/zzce;->c:Lcom/google/android/gms/internal/gtm/zzav;

    if-nez v3, :cond_2

    iput-object v1, v2, Lcom/google/android/gms/internal/gtm/zzce;->c:Lcom/google/android/gms/internal/gtm/zzav;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :goto_1
    monitor-enter v2

    :try_start_1
    iget-object v1, v2, Lcom/google/android/gms/internal/gtm/zzce;->b:Lcom/google/android/gms/internal/gtm/zzbk;

    if-nez v1, :cond_4

    iget-object v1, v2, Lcom/google/android/gms/internal/gtm/zzce;->a:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v3, v2, Lcom/google/android/gms/internal/gtm/zzce;->k:Lcom/google/android/gms/internal/gtm/zzby;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzbk;

    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/gtm/zzbk;-><init>(Lcom/google/android/gms/internal/gtm/zzby;Landroid/content/Context;)V

    iput-object v4, v2, Lcom/google/android/gms/internal/gtm/zzce;->b:Lcom/google/android/gms/internal/gtm/zzbk;

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cant get a store unless we have a context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    iget-object v1, v2, Lcom/google/android/gms/internal/gtm/zzce;->h:Lcom/google/android/gms/internal/gtm/zzca;

    if-nez v1, :cond_5

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzcc;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/gtm/zzcc;-><init>(Lcom/google/android/gms/internal/gtm/zzce;)V

    iput-object v1, v2, Lcom/google/android/gms/internal/gtm/zzce;->h:Lcom/google/android/gms/internal/gtm/zzca;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzcc;->a()V

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/google/android/gms/internal/gtm/zzce;->e:Z

    iget-boolean v1, v2, Lcom/google/android/gms/internal/gtm/zzce;->d:Z

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzce;->a()V

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/google/android/gms/internal/gtm/zzce;->d:Z

    :cond_6
    iget-object v1, v2, Lcom/google/android/gms/internal/gtm/zzce;->i:Lcom/google/android/gms/internal/gtm/zzbh;

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbh;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/gtm/zzbh;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    iput-object v1, v2, Lcom/google/android/gms/internal/gtm/zzce;->i:Lcom/google/android/gms/internal/gtm/zzbh;

    iget-object v3, v2, Lcom/google/android/gms/internal/gtm/zzce;->a:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-static {v3, v1, v4, v5}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-static {v3, v1, v4, v5}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_7
    iget-object v1, v2, Lcom/google/android/gms/internal/gtm/zzce;->b:Lcom/google/android/gms/internal/gtm/zzbk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzax;->zzf(Lcom/google/android/gms/internal/gtm/zzax;Lcom/google/android/gms/internal/gtm/zzay;)V

    goto :goto_5

    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_8
    :goto_5
    iget-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzb:J

    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzc:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzd:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zze:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzf:Ljava/util/Map;

    iget-object v10, p0, Lcom/google/android/gms/internal/gtm/zzaw;->zzg:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzax;->zze(Lcom/google/android/gms/internal/gtm/zzax;)Lcom/google/android/gms/internal/gtm/zzay;

    move-result-object v3

    invoke-interface/range {v3 .. v10}, Lcom/google/android/gms/internal/gtm/zzay;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
