.class public final Lcom/google/android/gms/internal/measurement/zzqt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Ljava/lang/Boolean;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzlk;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzqt;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzlk;->b:Landroid/content/Context;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzsa;->a:Ljava/util/regex/Pattern;

    new-instance p3, Lcom/google/android/gms/internal/measurement/zzrz;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/zzrz;-><init>(Landroid/content/Context;)V

    const-string p1, "phenotype"

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/measurement/zzrz;->a(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance p4, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x4

    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "/"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".pb"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/measurement/zzrz;->b(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzrz;->c()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/zzqs;
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqt;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzlk;->b:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzlk;->f:Lcom/google/common/base/Supplier;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzky;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x3

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->H()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v1, 0x11

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqs;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzqs;-><init>(Lcom/google/android/gms/internal/measurement/zzqv;Lcom/google/android/gms/internal/measurement/zzqr;)V

    return-object v1

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->d:Ljava/lang/Boolean;

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzlk;->g:Lcom/google/android/gms/internal/measurement/zzrf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzrf;->b()Lcom/google/android/gms/internal/measurement/zzqn;

    move-result-object v1

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzqn;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzabz;->zzd:Lcom/google/android/gms/internal/measurement/zzabz;

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzlg;->a:Landroidx/collection/ArrayMap;

    const-string v6, "#"

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzqt;->c:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-gez v6, :cond_3

    const-string v6, "@"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v7

    goto :goto_0

    :cond_2
    const-string p0, "Invalid package name: "

    invoke-virtual {p0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v9

    :cond_3
    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v10, v1, Lcom/google/android/gms/internal/measurement/zzqn;->h:Z

    const/4 v11, 0x4

    const/4 v12, 0x5

    if-eqz v10, :cond_8

    iget-boolean v10, v1, Lcom/google/android/gms/internal/measurement/zzqn;->a:Z

    if-eqz v10, :cond_7

    iget-object v10, v1, Lcom/google/android/gms/internal/measurement/zzqn;->b:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzacr;->f()I

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzqn;->f:Ljava/util/List;

    move-object v10, v5

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v12

    goto :goto_1

    :cond_4
    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzqn;->g:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x6

    goto :goto_1

    :cond_5
    move v5, v8

    goto :goto_1

    :cond_6
    move v5, v11

    goto :goto_1

    :cond_7
    move v5, v3

    goto :goto_1

    :cond_8
    const/16 v5, 0xe

    :goto_1
    if-eqz v5, :cond_9

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(I)V

    new-instance v4, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v4, v9, v1}, Lcom/google/android/gms/internal/measurement/zznv;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V

    goto/16 :goto_6

    :cond_9
    :try_start_0
    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzqn;->e:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzlk;->h:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/base/Optional;

    invoke-virtual {v5}, Lcom/google/common/base/Optional;->c()Z

    move-result v6

    if-nez v6, :cond_a

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v4

    const-string v5, "Unable to get GMS application info, using defaults."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1, v4, v9, v5, v6}, Lcom/google/android/gms/internal/measurement/zzlz;->a(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznd;->c:Lcom/google/android/gms/internal/measurement/zznd;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzqr;

    const/4 v5, 0x7

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    new-instance v5, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v5, v1, v4}, Lcom/google/android/gms/internal/measurement/zznv;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V

    :goto_2
    move-object v4, v5

    goto/16 :goto_6

    :catch_0
    move-exception v1

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v5}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :cond_b
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/zzqn;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v10, v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v10, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzmz;

    const-string v10, ""

    invoke-direct {v8, v4, v7, v10}, Lcom/google/android/gms/internal/measurement/zzmz;-><init>(Lcom/google/android/gms/internal/measurement/zzacr;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v10, "file"

    invoke-virtual {v4, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzmz;->a()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v10, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v10, v13

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v10, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    new-instance v6, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v6, v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzru;

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzna;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzqn;->k:Lcom/google/android/gms/internal/measurement/zznf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zznf;->A()Z

    move-result v1

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/measurement/zzna;-><init>(Z)V

    invoke-virtual {v6, v4, v8}, Lcom/google/android/gms/internal/measurement/zzru;->a(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zznd;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzqr;

    const/4 v6, 0x2

    invoke-direct {v4, v12, v6}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    new-instance v6, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v6, v1, v4}, Lcom/google/android/gms/internal/measurement/zznv;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/gms/internal/measurement/zzaeh; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v6

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_3
    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v6

    const-string v8, "Failed to parse snapshot from shared storage for %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v4, v6, v1, v8, v10}, Lcom/google/android/gms/internal/measurement/zzlz;->a(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v4, 0x9

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(I)V

    new-instance v4, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v4, v9, v1}, Lcom/google/android/gms/internal/measurement/zznv;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_2
    :try_start_5
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v4

    const-string v6, "Shared storage file not found for %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v1, v4, v9, v6, v8}, Lcom/google/android/gms/internal/measurement/zzlz;->a(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(I)V

    new-instance v4, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v4, v9, v1}, Lcom/google/android/gms/internal/measurement/zznv;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :goto_4
    :try_start_6
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_5
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v5

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "Failed to read shared file for %s"

    invoke-static {v4, v5, v1, v8, v6}, Lcom/google/android/gms/internal/measurement/zzlz;->a(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznd;->c:Lcom/google/android/gms/internal/measurement/zznd;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v5, 0xa

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    new-instance v5, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v5, v1, v4}, Lcom/google/android/gms/internal/measurement/zznv;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V

    goto/16 :goto_2

    :goto_6
    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zznv;->b:Lcom/google/android/gms/internal/measurement/zzqr;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zznv;->a:Lcom/google/android/gms/internal/measurement/zznd;

    if-eqz v4, :cond_c

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzqs;

    invoke-direct {p0, v4, v1}, Lcom/google/android/gms/internal/measurement/zzqs;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V

    return-object p0

    :cond_c
    iget v1, v1, Lcom/google/android/gms/internal/measurement/zzqr;->b:I

    :try_start_7
    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzru;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzqt;->b:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->H()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzadu;->h()Lcom/google/android/gms/internal/measurement/zzafj;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzss;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/measurement/zzss;-><init>(Lcom/google/android/gms/internal/measurement/zzafj;)V

    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/internal/measurement/zzru;->a(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzqv;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-direct {v4, v11, v1}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqs;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/measurement/zzqs;-><init>(Lcom/google/android/gms/internal/measurement/zzqv;Lcom/google/android/gms/internal/measurement/zzqr;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :catch_3
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->a()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v0

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Unable to retrieve flag snapshot for %s, using defaults."

    invoke-static {v1, v0, v9, v4, v2}, Lcom/google/android/gms/internal/measurement/zzlz;->a(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzqt;->b()Z

    move-result p0

    if-eqz p0, :cond_d

    sget-object p0, Lcom/google/android/gms/internal/measurement/zznd;->c:Lcom/google/android/gms/internal/measurement/zznd;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v1, 0x10

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqs;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzqs;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V

    goto :goto_7

    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->H()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v1, 0xb

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqs;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzqs;-><init>(Lcom/google/android/gms/internal/measurement/zzqv;Lcom/google/android/gms/internal/measurement/zzqr;)V

    :goto_7
    return-object v1

    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->H()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v1, 0x12

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqs;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzqs;-><init>(Lcom/google/android/gms/internal/measurement/zzqv;Lcom/google/android/gms/internal/measurement/zzqr;)V

    return-object v1
.end method

.method public final b()Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqt;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzlk;->g:Lcom/google/android/gms/internal/measurement/zzrf;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzabz;->zzd:Lcom/google/android/gms/internal/measurement/zzabz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzrf;->c()Lcom/google/android/gms/internal/measurement/zzni;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzni;->H()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/AbstractCollection;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
