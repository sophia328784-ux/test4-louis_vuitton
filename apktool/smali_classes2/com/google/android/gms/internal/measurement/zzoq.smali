.class final synthetic Lcom/google/android/gms/internal/measurement/zzoq;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzoq;->zza:Lcom/google/android/gms/internal/measurement/zzpg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzoq;->zza:Lcom/google/android/gms/internal/measurement/zzpg;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzpg;->c:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzpu;->a:Lcom/google/android/gms/internal/measurement/zzvb;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zztd;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/base/Optional;->a()Lcom/google/common/base/Optional;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/zztd;->c:Lcom/google/common/base/Optional;

    sget-object v4, Lcom/google/android/gms/internal/measurement/zztw;->a:Lcom/google/android/gms/internal/measurement/zztw;

    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/zztd;->e:Lcom/google/android/gms/internal/measurement/zzuj;

    iget-byte v4, v3, Lcom/google/android/gms/internal/measurement/zztd;->g:B

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/google/android/gms/internal/measurement/zztd;->f:Z

    or-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/google/android/gms/internal/measurement/zztd;->g:B

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzlk;->b:Landroid/content/Context;

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzsa;->a:Ljava/util/regex/Pattern;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzrz;

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/measurement/zzrz;-><init>(Landroid/content/Context;)V

    const-string v4, "phenotype"

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/zzrz;->a(Ljava/lang/String;)V

    const-string v4, "all_accounts.pb"

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/measurement/zzrz;->b(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzrz;->c()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_15

    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/zztd;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->B()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object v4

    if-eqz v4, :cond_14

    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/zztd;->b:Lcom/google/android/gms/internal/measurement/zznu;

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzpu;->a:Lcom/google/android/gms/internal/measurement/zzvb;

    invoke-static {v4}, Lcom/google/common/base/Optional;->d(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/zztd;->c:Lcom/google/common/base/Optional;

    iget-byte v4, v3, Lcom/google/android/gms/internal/measurement/zztd;->g:B

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/google/android/gms/internal/measurement/zztd;->g:B

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zztd;->d:Lcom/google/common/collect/ImmutableList;

    if-nez v4, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/zztd;->d:Lcom/google/common/collect/ImmutableList;

    :cond_0
    iget-byte v4, v3, Lcom/google/android/gms/internal/measurement/zztd;->g:B

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/zztd;->a:Landroid/net/Uri;

    if-eqz v8, :cond_1

    iget-object v9, v3, Lcom/google/android/gms/internal/measurement/zztd;->b:Lcom/google/android/gms/internal/measurement/zznu;

    if-eqz v9, :cond_1

    iget-object v12, v3, Lcom/google/android/gms/internal/measurement/zztd;->e:Lcom/google/android/gms/internal/measurement/zzuj;

    if-nez v12, :cond_2

    :cond_1
    move/from16 p0, v5

    goto/16 :goto_c

    :cond_2
    new-instance v7, Lcom/google/android/gms/internal/measurement/zzte;

    iget-object v10, v3, Lcom/google/android/gms/internal/measurement/zztd;->c:Lcom/google/common/base/Optional;

    iget-object v11, v3, Lcom/google/android/gms/internal/measurement/zztd;->d:Lcom/google/common/collect/ImmutableList;

    iget-boolean v13, v3, Lcom/google/android/gms/internal/measurement/zztd;->f:Z

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/measurement/zzte;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzafc;Lcom/google/common/base/Optional;Lcom/google/common/collect/ImmutableList;Lcom/google/android/gms/internal/measurement/zzuj;Z)V

    move v3, v13

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzpu;->c:Lcom/google/android/gms/internal/measurement/zztt;

    if-nez v4, :cond_4

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzpu;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzpu;->c:Lcom/google/android/gms/internal/measurement/zztt;

    if-nez v4, :cond_3

    new-instance v4, Lcom/google/android/gms/internal/measurement/zztu;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zztu;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v13

    iput-object v13, v4, Lcom/google/android/gms/internal/measurement/zztu;->a:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    iget-object v13, v1, Lcom/google/android/gms/internal/measurement/zzlk;->f:Lcom/google/common/base/Supplier;

    invoke-interface {v13}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzru;

    iput-object v13, v4, Lcom/google/android/gms/internal/measurement/zztu;->b:Lcom/google/android/gms/internal/measurement/zzru;

    sget-object v13, Lcom/google/android/gms/internal/measurement/zztx;->a:Lcom/google/android/gms/internal/measurement/zzuw;

    sget-object v14, Lcom/google/android/gms/internal/measurement/zzti;->zza:Lcom/google/android/gms/internal/measurement/zzti;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v4, Lcom/google/android/gms/internal/measurement/zztu;->c:Ljava/util/HashMap;

    const-string v15, "singleproc"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    move/from16 p0, v5

    xor-int/lit8 v5, v16, 0x1

    move-object/from16 v19, v1

    const-string v1, "There is already a factory registered for the ID %s"

    invoke-static {v15, v1, v5}, Lcom/google/common/base/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zztu;->c:Ljava/util/HashMap;

    new-instance v5, Lcom/google/android/gms/internal/measurement/zztt;

    iget-object v13, v4, Lcom/google/android/gms/internal/measurement/zztu;->a:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zztu;->b:Lcom/google/android/gms/internal/measurement/zzru;

    invoke-direct {v5, v13, v4, v1}, Lcom/google/android/gms/internal/measurement/zztt;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzru;Ljava/util/HashMap;)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/zzpu;->c:Lcom/google/android/gms/internal/measurement/zztt;

    move-object v4, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object/from16 v19, v1

    move/from16 p0, v5

    :goto_0
    monitor-exit v6

    goto :goto_2

    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move-object/from16 v19, v1

    move/from16 p0, v5

    :goto_2
    const-string v1, ""

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zztt;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-nez v6, :cond_c

    invoke-virtual {v8}, Landroid/net/Uri;->isHierarchical()Z

    move-result v6

    const-string v14, "Uri must be hierarchical: %s"

    invoke-static {v8, v14, v6}, Lcom/google/common/base/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    move-object v6, v1

    :cond_5
    const/16 v14, 0x2e

    invoke-virtual {v6, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    const/4 v13, -0x1

    if-ne v15, v13, :cond_6

    move-object v6, v1

    goto :goto_3

    :cond_6
    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    const-string v15, "pb"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v15, "Uri extension must be .pb: %s"

    invoke-static {v8, v15, v6}, Lcom/google/common/base/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v10, :cond_7

    move/from16 v6, p0

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    const-string v15, "Handler cannot be null"

    invoke-static {v6, v15}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zztt;->e:Ljava/util/Map;

    const-string v15, "singleproc"

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzuw;

    if-eqz v6, :cond_8

    move/from16 v13, p0

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    :goto_5
    const-string v14, "No XDataStoreVariantFactory registered for ID %s"

    invoke-static {v15, v14, v13}, Lcom/google/common/base/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    :goto_6
    const/16 v13, 0x2e

    goto :goto_7

    :cond_9
    move-object v1, v13

    goto :goto_6

    :goto_7
    invoke-virtual {v1, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_a

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_8
    move-object v15, v1

    goto :goto_9

    :cond_a
    const/4 v14, 0x0

    goto :goto_8

    :goto_9
    invoke-static {v8}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v13, v4, Lcom/google/android/gms/internal/measurement/zztt;->d:Lcom/google/common/util/concurrent/AsyncFunction;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v14

    invoke-static {v1, v13, v14}, Lcom/google/common/util/concurrent/Futures;->m(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v13, v4, Lcom/google/android/gms/internal/measurement/zztt;->b:Ljava/util/concurrent/Executor;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zztt;->c:Lcom/google/android/gms/internal/measurement/zzru;

    sget-object v18, Lcom/google/android/gms/internal/measurement/zzti;->zza:Lcom/google/android/gms/internal/measurement/zzti;

    move-object/from16 v17, v4

    move-object v14, v7

    move-object/from16 v16, v13

    const/4 v4, 0x0

    move-object v13, v6

    invoke-virtual/range {v13 .. v18}, Lcom/google/android/gms/internal/measurement/zzuw;->b(Lcom/google/android/gms/internal/measurement/zztr;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzru;Lcom/google/android/gms/internal/measurement/zzti;)Lcom/google/android/gms/internal/measurement/zzui;

    move-result-object v6

    move-object/from16 v14, v16

    move-object/from16 v15, v18

    new-instance v4, Lcom/google/android/gms/internal/measurement/zztp;

    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/measurement/zzuw;->a(Lcom/google/android/gms/internal/measurement/zzti;)V

    invoke-direct {v4, v6, v1}, Lcom/google/android/gms/internal/measurement/zzut;-><init>(Lcom/google/android/gms/internal/measurement/zzuv;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzto;

    invoke-direct {v1, v11, v14}, Lcom/google/android/gms/internal/measurement/zzto;-><init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzut;->g:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v13, v4, Lcom/google/android/gms/internal/measurement/zzut;->i:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v6

    goto :goto_a

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_b
    :goto_a
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_c

    move-object v6, v1

    :cond_c
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zztp;

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zztr;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/zzte;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzpt;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/measurement/zzpt;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzut;->a(Lcom/google/common/base/Function;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzot;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzot;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_d
    const-string v0, "zznu"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ProtoDataStoreConfig<%s> doesn\'t match previous call [uri=%s] [%s]"

    invoke-static {v1, v0}, Lcom/google/common/base/Strings;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v4

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzte;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzte;->a:Landroid/net/Uri;

    invoke-virtual {v8, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "uri"

    invoke-static {v2, v0, v1}, Lcom/google/common/base/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;Z)V

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzte;

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zzte;->b:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/measurement/zzadu;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "schema"

    invoke-static {v2, v0, v1}, Lcom/google/common/base/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zzte;->c:Lcom/google/common/base/Optional;

    invoke-virtual {v10, v1}, Lcom/google/common/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "handler"

    invoke-static {v2, v0, v1}, Lcom/google/common/base/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zzte;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v11, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "migrations"

    invoke-static {v2, v0, v1}, Lcom/google/common/base/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zzte;->e:Lcom/google/android/gms/internal/measurement/zzuj;

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "variantConfig"

    invoke-static {v2, v0, v1}, Lcom/google/common/base/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-boolean v1, v4, Lcom/google/android/gms/internal/measurement/zzte;->f:Z

    if-ne v3, v1, :cond_e

    move/from16 v5, p0

    goto :goto_b

    :cond_e
    const/4 v5, 0x0

    :goto_b
    const-string v1, "useGeneratedExtensionRegistry"

    invoke-static {v1, v0, v5}, Lcom/google/common/base/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v1, "unknown"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Strings;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/zztd;->a:Landroid/net/Uri;

    if-nez v1, :cond_f

    const-string v1, " uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/zztd;->b:Lcom/google/android/gms/internal/measurement/zznu;

    if-nez v1, :cond_10

    const-string v1, " schema"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v1, v3, Lcom/google/android/gms/internal/measurement/zztd;->e:Lcom/google/android/gms/internal/measurement/zzuj;

    if-nez v1, :cond_11

    const-string v1, " variantConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-byte v1, v3, Lcom/google/android/gms/internal/measurement/zztd;->g:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_12

    const-string v1, " useGeneratedExtensionRegistry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-byte v1, v3, Lcom/google/android/gms/internal/measurement/zztd;->g:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_13

    const-string v1, " enableTracing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_14
    const-string v0, "Null schema"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    return-void

    :cond_15
    const-string v0, "Null uri"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method
