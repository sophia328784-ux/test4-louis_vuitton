.class abstract Lcom/google/android/gms/internal/measurement/zznp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzom;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/measurement/zzph;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zznp;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zznp;->c:Lcom/google/android/gms/internal/measurement/zzph;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract c(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final get()Ljava/lang/Object;
    .locals 10

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzls;->c:Lcom/google/android/gms/internal/measurement/zzlr;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlk;->j:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlr;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzls;->c:Lcom/google/android/gms/internal/measurement/zzlr;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlk;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzlk;->l:Lcom/google/android/gms/internal/measurement/zzlk;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-class v4, Lcom/google/android/gms/internal/measurement/zzlk$zza;

    const-string v5, "Given application context does not implement GeneratedComponentManager: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lcom/google/android/gms/internal/measurement/zzagp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v7, :cond_3

    :try_start_1
    check-cast v6, Lcom/google/android/gms/internal/measurement/zzagp;

    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/zzagp;->d0()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzlk$zza;

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzlk$zza;->d0()Lcom/google/common/base/Optional;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v4}, Lcom/google/common/base/Optional;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzlk;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v4

    goto/16 :goto_2

    :catch_0
    :cond_2
    move v4, v3

    goto :goto_0

    :catch_1
    move-exception v4

    :try_start_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Failed to get an entry point. Did you mark your interface with @SingletonEntryPoint?"

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x48

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move v4, v2

    :goto_0
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzlk;->j:Ljava/lang/Object;

    monitor-enter v5

    :try_start_5
    sget-object v6, Lcom/google/android/gms/internal/measurement/zzlk;->l:Lcom/google/android/gms/internal/measurement/zzlk;

    if-eqz v6, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlk;->l:Lcom/google/android/gms/internal/measurement/zzlk;

    monitor-exit v5

    :goto_1
    move-object v2, v0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_4
    invoke-static {}, Lcom/google/common/base/Optional;->a()Lcom/google/common/base/Optional;

    move-result-object v6

    instance-of v7, v0, Lcom/google/android/gms/internal/measurement/zzlk$zza;

    if-eqz v7, :cond_5

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzlk$zza;

    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/zzlk$zza;->d0()Lcom/google/common/base/Optional;

    move-result-object v6

    :cond_5
    new-instance v8, Lcom/google/android/gms/internal/measurement/zzll;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/measurement/zzll;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Lcom/google/common/base/Optional;->e(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlk;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlk;->l:Lcom/google/android/gms/internal/measurement/zzlk;

    if-nez v4, :cond_6

    if-nez v7, :cond_6

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v6

    const-string v7, "Application doesn\'t implement PhenotypeApplication interface, falling back to globally set context. See go/phenotype-flag#process-stable-init for more info."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v6, v1, v7, v2}, Lcom/google/android/gms/internal/measurement/zzlz;->a(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :goto_2
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzof;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzof;->d:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzof;->e:Lcom/google/android/gms/internal/measurement/zzps;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzps;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ge v0, v5, :cond_14

    :cond_7
    monitor-enter p0

    :try_start_6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzof;->d:I

    if-ne v0, v4, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->b()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zznp;->c:Lcom/google/android/gms/internal/measurement/zzph;

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/measurement/zzph;->a(Lcom/google/android/gms/internal/measurement/zzlk;)Lcom/google/android/gms/internal/measurement/zzpg;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzpg;->g:Lcom/google/android/gms/internal/measurement/zzps;

    iput-object v5, p0, Lcom/google/android/gms/internal/measurement/zzof;->e:Lcom/google/android/gms/internal/measurement/zzps;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    :cond_8
    move-object v4, v1

    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzof;->e:Lcom/google/android/gms/internal/measurement/zzps;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzps;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ge v0, v5, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->b()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/zzlk;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlf;->a(Landroid/content/Context;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->c()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzle;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlg;->a()Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/zznp;->b:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzle;->a:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/collection/SimpleArrayMap;

    goto :goto_4

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v1

    :goto_4
    if-nez v6, :cond_a

    move-object v6, v1

    goto :goto_5

    :cond_a
    invoke-virtual {v6, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_5
    if-nez v6, :cond_c

    :cond_b
    :goto_6
    move-object v6, v1

    goto :goto_7

    :cond_c
    const-string v7, "Invalid Phenotype flag value for flag "
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/zznp;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    :catch_3
    :try_start_8
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zznp;->b:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    :goto_7
    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zznp;->c:Lcom/google/android/gms/internal/measurement/zzph;

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/measurement/zzph;->a(Lcom/google/android/gms/internal/measurement/zzlk;)Lcom/google/android/gms/internal/measurement/zzpg;

    move-result-object v4

    :cond_d
    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzpg;->c:Ljava/lang/String;

    iget-object v8, v2, Lcom/google/android/gms/internal/measurement/zzlk;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.vending"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "com.google.android.gms.measurement#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-direct {v9, v2, v7}, Lcom/google/android/gms/internal/measurement/zzpn;-><init>(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzpw;

    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/measurement/zzpw;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_e
    const-string v2, "Invalid Phenotype flag value for flag "

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zznp;->b:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzqs;->d:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4, v7}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v4, :cond_f

    goto :goto_8

    :cond_f
    :try_start_9
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/zznp;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_8

    :catch_4
    :try_start_a
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zznp;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :goto_8
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->c()Z

    move-result v0

    if-ne v3, v0, :cond_10

    goto :goto_9

    :cond_10
    move-object v6, v1

    :goto_9
    if-nez v6, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zznp;->a()Ljava/lang/Object;

    move-result-object v6

    :cond_11
    if-eqz v6, :cond_12

    invoke-interface {p0, v6}, Lcom/google/android/gms/internal/measurement/zznw;->K(Ljava/lang/Object;)V

    iput v5, p0, Lcom/google/android/gms/internal/measurement/zzof;->d:I

    :cond_12
    monitor-exit p0

    goto :goto_a

    :cond_13
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_14
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zznw;->h0()Ljava/lang/Object;

    move-result-object v6

    :goto_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v6

    :goto_b
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0

    :goto_c
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p0

    :cond_15
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzls;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    const-string p0, "Must call PhenotypeContext.setContext() first"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :catchall_2
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v0
.end method
