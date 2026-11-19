.class public final Lcom/google/android/gms/internal/gtm/zzcv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:Ljava/util/regex/Pattern;

.field public static volatile p:Lcom/google/android/gms/internal/gtm/zzcv;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/tagmanager/zzq;

.field public final c:Lcom/google/android/gms/internal/gtm/zzde;

.field public final d:Ljava/util/concurrent/ExecutorService;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Lcom/google/android/gms/internal/gtm/zzbn;

.field public final g:Lcom/google/android/gms/internal/gtm/zzcr;

.field public final h:Ljava/lang/Object;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public final l:Ljava/util/LinkedList;

.field public volatile m:Z

.field public volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(gtm-[a-z0-9]{1,10})\\.json"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzcv;->o:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/internal/gtm/zzde;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/gtm/zzbn;Lcom/google/android/gms/internal/gtm/zzcr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->k:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->l:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->m:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->n:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcv;->b:Lcom/google/android/gms/tagmanager/zzq;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzcv;->c:Lcom/google/android/gms/internal/gtm/zzde;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzcv;->d:Ljava/util/concurrent/ExecutorService;

    iput-object p5, p0, Lcom/google/android/gms/internal/gtm/zzcv;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/gtm/zzcv;->f:Lcom/google/android/gms/internal/gtm/zzbn;

    iput-object p7, p0, Lcom/google/android/gms/internal/gtm/zzcv;->g:Lcom/google/android/gms/internal/gtm/zzcr;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzq;)Lcom/google/android/gms/internal/gtm/zzcv;
    .locals 10

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzcv;->p:Lcom/google/android/gms/internal/gtm/zzcv;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/gtm/zzcv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzcv;->p:Lcom/google/android/gms/internal/gtm/zzcv;

    if-nez v0, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzcv;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzde;

    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    invoke-direct {v5, p0, v0}, Lcom/google/android/gms/internal/gtm/zzde;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/stats/ConnectionTracker;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzdb;->a(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/gtm/zzdd;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbn;->a()Lcom/google/android/gms/internal/gtm/zzbn;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzcr;

    invoke-direct {v9, p0}, Lcom/google/android/gms/internal/gtm/zzcr;-><init>(Landroid/content/Context;)V

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/gtm/zzcv;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/internal/gtm/zzde;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/gtm/zzbn;Lcom/google/android/gms/internal/gtm/zzcr;)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzcv;->p:Lcom/google/android/gms/internal/gtm/zzcv;

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 8

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->m:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcv;->a:Landroid/content/Context;

    const-string v3, "com.google.android.gms.tagmanager.TagManagerService"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x5

    :try_start_2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcv;->c()Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x4

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzcv;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzcl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v3, v2, v7}, Lcom/google/android/gms/internal/gtm/zzcl;-><init>(Lcom/google/android/gms/internal/gtm/zzcv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcv;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzcn;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/gtm/zzcn;-><init>(Lcom/google/android/gms/internal/gtm/zzcv;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1388

    invoke-interface {v2, v3, v6, v7, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/gtm/zzcv;->n:Z

    if-nez v2, :cond_2

    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->n:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcv;->b:Lcom/google/android/gms/tagmanager/zzq;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzci;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/gtm/zzci;-><init>(Lcom/google/android/gms/internal/gtm/zzcv;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/tagmanager/zzq;->K1(Lcom/google/android/gms/tagmanager/zzn;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzcv;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gtm/zzan;->b(Ljava/lang/Throwable;Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcv;->b:Lcom/google/android/gms/tagmanager/zzq;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzck;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/gtm/zzck;-><init>(Lcom/google/android/gms/internal/gtm/zzcv;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/tagmanager/zzq;->k2(Lcom/google/android/gms/tagmanager/zzk;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_7
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzcv;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gtm/zzan;->b(Ljava/lang/Throwable;Landroid/content/Context;)V

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcv;->a:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzcp;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/gtm/zzcp;-><init>(Lcom/google/android/gms/internal/gtm/zzcv;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    goto :goto_2

    :cond_1
    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2
    :goto_2
    :try_start_8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->m:Z

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    return-void

    :catch_2
    :cond_3
    :try_start_9
    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->m:Z

    monitor-exit v0

    return-void

    :goto_3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->m:Z

    throw v2

    :goto_4
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p0
.end method

.method public final c()Landroid/util/Pair;
    .locals 15

    const-string v0, "containers"

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->g:Lcom/google/android/gms/internal/gtm/zzcr;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzcv;->i:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzcv;->j:Ljava/lang/String;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/internal/gtm/zzcr;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    array-length v8, v4

    const-string v9, "Extra container asset found, will not be loaded: "

    const-string v10, "Asset found for container "

    sget-object v11, Lcom/google/android/gms/internal/gtm/zzcv;->o:Ljava/util/regex/Pattern;

    const/4 v12, 0x5

    const/4 v13, 0x1

    if-ge v6, v8, :cond_4

    aget-object v8, v4, v6

    invoke-virtual {v11, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_3

    if-nez v7, :cond_2

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/gtm/zzcv;->i:Ljava/lang/String;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    aget-object v8, v4, v6

    invoke-static {v0, v7, v8}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/gtm/zzcv;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzcv;->i:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :goto_2
    move v7, v13

    goto :goto_3

    :cond_2
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    goto :goto_2

    :cond_3
    aget-object v8, v4, v6

    invoke-virtual {v11}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-nez v7, :cond_7

    invoke-static {v12}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzcr;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v5

    :goto_4
    array-length v3, v0

    if-ge v5, v3, :cond_7

    aget-object v3, v0, v5

    invoke-virtual {v11, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v1, :cond_5

    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->i:Ljava/lang/String;

    aget-object v3, v0, v5

    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzcv;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    invoke-static {v12}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    move v1, v13

    goto :goto_5

    :cond_5
    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->b()V

    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->i:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->j:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->b()V

    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
