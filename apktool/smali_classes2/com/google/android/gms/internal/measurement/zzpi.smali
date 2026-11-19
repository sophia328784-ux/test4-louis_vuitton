.class final Lcom/google/android/gms/internal/measurement/zzpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzph;


# instance fields
.field public volatile a:Lcom/google/android/gms/internal/measurement/zzon;

.field public b:Lcom/google/android/gms/internal/measurement/zzpg;


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/zzlk;)Lcom/google/android/gms/internal/measurement/zzpg;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpi;->a:Lcom/google/android/gms/internal/measurement/zzon;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzpg;->j:Lcom/google/android/gms/internal/measurement/zzon;

    if-eq v0, v1, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzpg;->i:Lcom/google/android/gms/internal/measurement/zzpe;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzpd;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/gms/internal/measurement/zzpd;->a:Z

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/zzpe;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p1, Lcom/google/android/gms/internal/measurement/zzlk;->b:Landroid/content/Context;

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzon;->d:Ljava/lang/String;

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzon;->a:Lcom/google/common/base/Function;

    invoke-interface {v6, v5}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/google/android/gms/internal/measurement/zzon;->d:Ljava/lang/String;

    :cond_0
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzpb;

    invoke-direct {v5, p1, v0, v3}, Lcom/google/android/gms/internal/measurement/zzpb;-><init>(Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzon;Lcom/google/android/gms/internal/measurement/zzpd;)V

    invoke-virtual {v4, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzoo;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/measurement/zzpd;->a:Z

    if-eqz v3, :cond_4

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzlk;->b:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzoz;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/measurement/zzoz;-><init>(Lcom/google/android/gms/internal/measurement/zzpe;)V

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzql;->a:Lcom/google/android/gms/internal/measurement/zzqk;

    if-nez v2, :cond_4

    const-class v2, Lcom/google/android/gms/internal/measurement/zzql;

    monitor-enter v2

    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzql;->a:Lcom/google/android/gms/internal/measurement/zzqk;

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.gms"

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v4, v5, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzql;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzql;-><init>()V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.google.android.gms.phenotype.UPDATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzql;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzql;-><init>()V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.google.android.gms.phenotype.UPDATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzql;->a:Lcom/google/android/gms/internal/measurement/zzqk;

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzql;->a:Lcom/google/android/gms/internal/measurement/zzqk;

    :cond_3
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/zzoo;->a:Lcom/google/android/gms/internal/measurement/zzpg;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpi;->b:Lcom/google/android/gms/internal/measurement/zzpg;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzpi;->a:Lcom/google/android/gms/internal/measurement/zzon;

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzpi;->b:Lcom/google/android/gms/internal/measurement/zzpg;

    return-object p0
.end method
