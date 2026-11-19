.class public final Landroidx/media3/datasource/cache/SimpleCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/cache/Cache;


# static fields
.field public static final k:Ljava/util/HashSet;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Landroidx/media3/datasource/cache/CacheEvictor;

.field public final c:Landroidx/media3/datasource/cache/CachedContentIndex;

.field public final d:Landroidx/media3/datasource/cache/CacheFileMetadataIndex;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/Random;

.field public final g:Z

.field public h:J

.field public i:J

.field public j:Landroidx/media3/datasource/cache/Cache$CacheException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/media3/datasource/cache/SimpleCache;->k:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroidx/media3/datasource/cache/CacheEvictor;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 103
    invoke-direct/range {v0 .. v6}, Landroidx/media3/datasource/cache/SimpleCache;-><init>(Ljava/io/File;Landroidx/media3/datasource/cache/CacheEvictor;Landroidx/media3/database/DatabaseProvider;[BZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroidx/media3/datasource/cache/CacheEvictor;Landroidx/media3/database/DatabaseProvider;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 102
    invoke-direct/range {v0 .. v6}, Landroidx/media3/datasource/cache/SimpleCache;-><init>(Ljava/io/File;Landroidx/media3/datasource/cache/CacheEvictor;Landroidx/media3/database/DatabaseProvider;[BZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroidx/media3/datasource/cache/CacheEvictor;Landroidx/media3/database/DatabaseProvider;[BZZ)V
    .locals 6

    new-instance v0, Landroidx/media3/datasource/cache/CachedContentIndex;

    move-object v2, p1

    move-object v1, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/cache/CachedContentIndex;-><init>(Landroidx/media3/database/DatabaseProvider;Ljava/io/File;[BZZ)V

    const/4 p1, 0x0

    if-eqz v1, :cond_0

    if-nez v5, :cond_0

    new-instance p3, Landroidx/media3/datasource/cache/CacheFileMetadataIndex;

    invoke-direct {p3, v1}, Landroidx/media3/datasource/cache/CacheFileMetadataIndex;-><init>(Landroidx/media3/database/DatabaseProvider;)V

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class p4, Landroidx/media3/datasource/cache/SimpleCache;

    monitor-enter p4

    :try_start_0
    sget-object p5, Landroidx/media3/datasource/cache/SimpleCache;->k:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p4

    if-eqz p5, :cond_1

    iput-object v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    iput-object p2, p0, Landroidx/media3/datasource/cache/SimpleCache;->b:Landroidx/media3/datasource/cache/CacheEvictor;

    iput-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    iput-object p3, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/CacheFileMetadataIndex;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->e:Ljava/util/HashMap;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->f:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->g:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->h:J

    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    new-instance p2, Landroidx/media3/datasource/cache/SimpleCache$1;

    const-string p3, "ExoPlayer:SimpleCacheInit"

    invoke-direct {p2, p0, p3, p1}, Landroidx/media3/datasource/cache/SimpleCache$1;-><init>(Landroidx/media3/datasource/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    :cond_1
    const-string p0, "Another SimpleCache instance uses the folder: "

    invoke-static {v2, p0}, La61;->q(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static k(Landroidx/media3/datasource/cache/SimpleCache;)V
    .locals 14

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/CacheFileMetadataIndex;

    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    iget-object v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {v2}, Landroidx/media3/datasource/cache/SimpleCache;->n(Ljava/io/File;)V
    :try_end_0
    .catch Landroidx/media3/datasource/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Landroidx/media3/datasource/cache/Cache$CacheException;

    goto/16 :goto_9

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to list cache directory files: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;)V

    new-instance v1, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {v1, v0}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Landroidx/media3/datasource/cache/Cache$CacheException;

    return-void

    :cond_1
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    const/16 v7, 0x10

    const-string v8, ".uid"

    const-wide/16 v9, -0x1

    if-ge v6, v4, :cond_3

    aget-object v11, v3, v6

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v13, 0x2e

    :try_start_1
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v12, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Malformed UID file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move-wide v4, v9

    :goto_2
    iput-wide v4, p0, Landroidx/media3/datasource/cache/SimpleCache;->h:J

    cmp-long v4, v4, v9

    if-nez v4, :cond_6

    :try_start_2
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v6, v4, v9

    const-wide/16 v9, 0x0

    if-nez v6, :cond_4

    move-wide v4, v9

    goto :goto_3

    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    :goto_3
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-static {v6, v8}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-eqz v6, :cond_5

    move-wide v9, v4

    goto :goto_4

    :cond_5
    const-string v4, "Failed to create UID file: "

    invoke-static {v7, v4}, La61;->n(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    iput-wide v9, p0, Landroidx/media3/datasource/cache/SimpleCache;->h:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create cache UID: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {v2, v1, v0}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Landroidx/media3/datasource/cache/Cache$CacheException;

    goto :goto_9

    :cond_6
    :goto_5
    :try_start_3
    iget-wide v4, p0, Landroidx/media3/datasource/cache/SimpleCache;->h:J

    invoke-virtual {v1, v4, v5}, Landroidx/media3/datasource/cache/CachedContentIndex;->e(J)V

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    iget-wide v5, p0, Landroidx/media3/datasource/cache/SimpleCache;->h:J

    invoke-virtual {v0, v5, v6}, Landroidx/media3/datasource/cache/CacheFileMetadataIndex;->b(J)V

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheFileMetadataIndex;->a()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {p0, v2, v4, v3, v5}, Landroidx/media3/datasource/cache/SimpleCache;->o(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/datasource/cache/CacheFileMetadataIndex;->c(Ljava/util/Set;)V

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v4, v3, v0}, Landroidx/media3/datasource/cache/SimpleCache;->o(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    iget-object p0, v1, Landroidx/media3/datasource/cache/CachedContentIndex;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->s(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/media3/datasource/cache/CachedContentIndex;->f(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    :try_start_4
    invoke-virtual {v1}, Landroidx/media3/datasource/cache/CachedContentIndex;->g()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception p0

    const-string v0, "Storing index file failed"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize cache indices: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {v2, v1, v0}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Landroidx/media3/datasource/cache/Cache$CacheException;

    :goto_9
    return-void
.end method

.method public static n(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create cache directory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {v0, p0}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Landroidx/media3/datasource/cache/DefaultContentMetadata;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/cache/CachedContentIndex;->c(Ljava/lang/String;)Landroidx/media3/datasource/cache/CachedContent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/media3/datasource/cache/CachedContent;->e:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/media3/datasource/cache/DefaultContentMetadata;->c:Landroidx/media3/datasource/cache/DefaultContentMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c(JJLjava/lang/String;)J
    .locals 2

    monitor-enter p0

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const-wide p3, 0x7fffffffffffffffL

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    invoke-virtual {v0, p5}, Landroidx/media3/datasource/cache/CachedContentIndex;->c(Ljava/lang/String;)Landroidx/media3/datasource/cache/CachedContent;

    move-result-object p5

    if-eqz p5, :cond_1

    invoke-virtual {p5, p1, p2, p3, p4}, Landroidx/media3/datasource/cache/CachedContent;->a(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    neg-long p1, p3

    :goto_0
    monitor-exit p0

    return-wide p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(JJLjava/lang/String;)Landroidx/media3/datasource/cache/CacheSpan;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/datasource/cache/SimpleCache;->m()V

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/datasource/cache/SimpleCache;->e(JJLjava/lang/String;)Landroidx/media3/datasource/cache/CacheSpan;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized e(JJLjava/lang/String;)Landroidx/media3/datasource/cache/CacheSpan;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v3, p5

    monitor-enter p0

    :try_start_0
    invoke-virtual {v1}, Landroidx/media3/datasource/cache/SimpleCache;->m()V

    iget-object v0, v1, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    invoke-virtual {v0, v3}, Landroidx/media3/datasource/cache/CachedContentIndex;->c(Ljava/lang/String;)Landroidx/media3/datasource/cache/CachedContent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Landroidx/media3/datasource/cache/SimpleCacheSpan;

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Landroidx/media3/datasource/cache/CacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    goto :goto_1

    :cond_0
    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    :goto_0
    invoke-virtual {v0, v4, v5, v6, v7}, Landroidx/media3/datasource/cache/CachedContent;->b(JJ)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object v2

    iget-boolean v8, v2, Landroidx/media3/datasource/cache/CacheSpan;->e:Z

    if-eqz v8, :cond_1

    iget-object v8, v2, Landroidx/media3/datasource/cache/CacheSpan;->f:Ljava/io/File;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    iget-wide v10, v2, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroidx/media3/datasource/cache/SimpleCache;->q()V

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v0, v2, Landroidx/media3/datasource/cache/CacheSpan;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1, v3, v2}, Landroidx/media3/datasource/cache/SimpleCache;->r(Ljava/lang/String;Landroidx/media3/datasource/cache/SimpleCacheSpan;)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    :try_start_1
    iget-object v0, v1, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    invoke-virtual {v0, v3}, Landroidx/media3/datasource/cache/CachedContentIndex;->d(Ljava/lang/String;)Landroidx/media3/datasource/cache/CachedContent;

    move-result-object v0

    iget-wide v6, v2, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    iget-object v0, v0, Landroidx/media3/datasource/cache/CachedContent;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/datasource/cache/CachedContent$Range;

    iget-wide v9, v8, Landroidx/media3/datasource/cache/CachedContent$Range;->a:J

    cmp-long v11, v9, v4

    const-wide/16 v12, -0x1

    if-gtz v11, :cond_3

    iget-wide v14, v8, Landroidx/media3/datasource/cache/CachedContent$Range;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v8, v14, v12

    if-eqz v8, :cond_5

    add-long/2addr v9, v14

    cmp-long v8, v9, v4

    if-lez v8, :cond_4

    goto :goto_3

    :cond_3
    cmp-long v8, v6, v12

    if-eqz v8, :cond_5

    add-long v11, v4, v6

    cmp-long v8, v11, v9

    if-lez v8, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_6
    :try_start_2
    new-instance v3, Landroidx/media3/datasource/cache/CachedContent$Range;

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/media3/datasource/cache/CachedContent$Range;-><init>(JJ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized f(Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    iget-object v1, p1, Landroidx/media3/datasource/cache/CacheSpan;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/cache/CachedContentIndex;->c(Ljava/lang/String;)Landroidx/media3/datasource/cache/CachedContent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p1, Landroidx/media3/datasource/cache/CacheSpan;->c:J

    iget-object p1, v0, Landroidx/media3/datasource/cache/CachedContent;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/datasource/cache/CachedContent$Range;

    iget-wide v4, v4, Landroidx/media3/datasource/cache/CachedContent$Range;->a:J

    cmp-long v4, v4, v1

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    iget-object v0, v0, Landroidx/media3/datasource/cache/CachedContent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/datasource/cache/CachedContentIndex;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized g(JJLjava/lang/String;)J
    .locals 7

    monitor-enter p0

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    move-wide p3, v1

    goto :goto_0

    :cond_0
    add-long/2addr p3, p1

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v0, p3, v3

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, p3

    :goto_1
    move-wide v5, v3

    :goto_2
    cmp-long p3, p1, v1

    if-gez p3, :cond_3

    sub-long p3, v1, p1

    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/datasource/cache/SimpleCache;->c(JJLjava/lang/String;)J

    move-result-wide p3

    cmp-long v0, p3, v3

    if-lez v0, :cond_2

    add-long/2addr v5, p3

    goto :goto_3

    :cond_2
    neg-long p3, p3

    :goto_3
    add-long/2addr p1, p3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    monitor-exit p0

    return-wide v5
.end method

.method public final declared-synchronized h(JJLjava/lang/String;)Ljava/io/File;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/datasource/cache/SimpleCache;->m()V

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    invoke-virtual {v0, p5}, Landroidx/media3/datasource/cache/CachedContentIndex;->c(Ljava/lang/String;)Landroidx/media3/datasource/cache/CachedContent;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroidx/media3/datasource/cache/CachedContent;->c(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    invoke-static {v0}, Landroidx/media3/datasource/cache/SimpleCache;->n(Ljava/io/File;)V

    invoke-virtual {p0}, Landroidx/media3/datasource/cache/SimpleCache;->q()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->b:Landroidx/media3/datasource/cache/CacheEvictor;

    invoke-interface {v0, p0, p3, p4}, Landroidx/media3/datasource/cache/CacheEvictor;->b(Landroidx/media3/datasource/cache/SimpleCache;J)V

    new-instance v1, Ljava/io/File;

    iget-object p3, p0, Landroidx/media3/datasource/cache/SimpleCache;->a:Ljava/io/File;

    iget-object p4, p0, Landroidx/media3/datasource/cache/SimpleCache;->f:Ljava/util/Random;

    const/16 v0, 0xa

    invoke-virtual {p4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {v1}, Landroidx/media3/datasource/cache/SimpleCache;->n(Ljava/io/File;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v2, p5, Landroidx/media3/datasource/cache/CachedContent;->a:I

    move-wide v3, p1

    invoke-static/range {v1 .. v6}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->c(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized i(Ljava/io/File;J)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    :cond_1
    :try_start_2
    iget-object v5, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p1

    move-wide v1, p2

    invoke-static/range {v0 .. v5}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->b(Ljava/io/File;JJLandroidx/media3/datasource/cache/CachedContentIndex;)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    iget-object p3, p1, Landroidx/media3/datasource/cache/CacheSpan;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroidx/media3/datasource/cache/CachedContentIndex;->c(Ljava/lang/String;)Landroidx/media3/datasource/cache/CachedContent;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p1, Landroidx/media3/datasource/cache/CacheSpan;->c:J

    iget-wide v3, p1, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    invoke-virtual {p2, v1, v2, v3, v4}, Landroidx/media3/datasource/cache/CachedContent;->c(JJ)Z

    move-result p3

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object p2, p2, Landroidx/media3/datasource/cache/CachedContent;->e:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    invoke-virtual {p2}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->b()J

    move-result-wide p2

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_3

    iget-wide v1, p1, Landroidx/media3/datasource/cache/CacheSpan;->c:J

    iget-wide v3, p1, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    add-long/2addr v1, v3

    cmp-long p2, v1, p2

    if-gtz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->q(Z)V

    :cond_3
    iget-object p2, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/CacheFileMetadataIndex;

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/CacheFileMetadataIndex;

    iget-wide v1, p1, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    iget-wide v3, p1, Landroidx/media3/datasource/cache/CacheSpan;->g:J

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/datasource/cache/CacheFileMetadataIndex;->d(JJLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_4
    new-instance p2, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/cache/SimpleCache;->l(Landroidx/media3/datasource/cache/SimpleCacheSpan;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    invoke-virtual {p1}, Landroidx/media3/datasource/cache/CachedContentIndex;->g()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    move-object p1, v0

    :try_start_7
    new-instance p2, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public final declared-synchronized j(Ljava/lang/String;Landroidx/media3/datasource/cache/ContentMetadataMutations;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/datasource/cache/SimpleCache;->m()V

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/cache/CachedContentIndex;->d(Ljava/lang/String;)Landroidx/media3/datasource/cache/CachedContent;

    move-result-object p1

    iget-object v1, p1, Landroidx/media3/datasource/cache/CachedContent;->e:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    invoke-virtual {v1, p2}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->a(Landroidx/media3/datasource/cache/ContentMetadataMutations;)Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object p2

    iput-object p2, p1, Landroidx/media3/datasource/cache/CachedContent;->e:Landroidx/media3/datasource/cache/DefaultContentMetadata;

    invoke-virtual {p2, v1}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, v0, Landroidx/media3/datasource/cache/CachedContentIndex;->e:Landroidx/media3/datasource/cache/CachedContentIndex$Storage;

    invoke-interface {p2, p1}, Landroidx/media3/datasource/cache/CachedContentIndex$Storage;->f(Landroidx/media3/datasource/cache/CachedContent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    invoke-virtual {p1}, Landroidx/media3/datasource/cache/CachedContentIndex;->g()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Landroidx/media3/datasource/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Landroidx/media3/datasource/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final l(Landroidx/media3/datasource/cache/SimpleCacheSpan;)V
    .locals 5

    iget-object v0, p1, Landroidx/media3/datasource/cache/CacheSpan;->b:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    invoke-virtual {v1, v0}, Landroidx/media3/datasource/cache/CachedContentIndex;->d(Ljava/lang/String;)Landroidx/media3/datasource/cache/CachedContent;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/datasource/cache/CachedContent;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->i:J

    iget-wide v3, p1, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->i:J

    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Landroidx/media3/datasource/cache/Cache$Listener;->d(Landroidx/media3/datasource/cache/SimpleCache;Landroidx/media3/datasource/cache/CacheSpan;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->b:Landroidx/media3/datasource/cache/CacheEvictor;

    invoke-interface {v0, p0, p1}, Landroidx/media3/datasource/cache/Cache$Listener;->d(Landroidx/media3/datasource/cache/SimpleCache;Landroidx/media3/datasource/cache/CacheSpan;)V

    return-void
.end method

.method public final declared-synchronized m()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->j:Landroidx/media3/datasource/cache/Cache$CacheException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final o(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .locals 8

    if-eqz p3, :cond_7

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_8

    aget-object v2, p3, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_1

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3, p4}, Landroidx/media3/datasource/cache/SimpleCache;->o(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    goto :goto_4

    :cond_1
    if-eqz p2, :cond_2

    const-string v4, "cached_content_index.exi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, ".uid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_4

    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/datasource/cache/CacheFileMetadata;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    iget-wide v4, v3, Landroidx/media3/datasource/cache/CacheFileMetadata;->a:J

    iget-wide v6, v3, Landroidx/media3/datasource/cache/CacheFileMetadata;->b:J

    :goto_2
    move-wide v3, v4

    move-wide v5, v6

    goto :goto_3

    :cond_4
    const-wide/16 v4, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :goto_3
    iget-object v7, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    invoke-static/range {v2 .. v7}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->b(Ljava/io/File;JJLandroidx/media3/datasource/cache/CachedContentIndex;)Landroidx/media3/datasource/cache/SimpleCacheSpan;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v3}, Landroidx/media3/datasource/cache/SimpleCache;->l(Landroidx/media3/datasource/cache/SimpleCacheSpan;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    if-nez p2, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_8
    return-void
.end method

.method public final p(Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 7

    iget-object v0, p1, Landroidx/media3/datasource/cache/CacheSpan;->b:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/datasource/cache/CacheSpan;->f:Ljava/io/File;

    iget-object v2, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    invoke-virtual {v2, v0}, Landroidx/media3/datasource/cache/CachedContentIndex;->c(Ljava/lang/String;)Landroidx/media3/datasource/cache/CachedContent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, v0, Landroidx/media3/datasource/cache/CachedContent;->c:Ljava/util/TreeSet;

    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    iget-wide v3, p0, Landroidx/media3/datasource/cache/SimpleCache;->i:J

    iget-wide v5, p1, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/datasource/cache/SimpleCache;->i:J

    iget-object v3, p0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/CacheFileMetadataIndex;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v4, v3, Landroidx/media3/datasource/cache/CacheFileMetadataIndex;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, v3, Landroidx/media3/datasource/cache/CacheFileMetadataIndex;->a:Landroidx/media3/database/DatabaseProvider;

    invoke-interface {v4}, Landroidx/media3/database/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iget-object v3, v3, Landroidx/media3/datasource/cache/CacheFileMetadataIndex;->b:Ljava/lang/String;

    const-string v5, "name = ?"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Landroidx/media3/database/DatabaseIOException;

    invoke-direct {v4, v3}, Landroidx/media3/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const-string v3, "Failed to remove file index entry for: "

    invoke-static {v3, v1}, Lcj;->y(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, v0, Landroidx/media3/datasource/cache/CachedContent;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroidx/media3/datasource/cache/CachedContentIndex;->f(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache;->e:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/media3/datasource/cache/CacheSpan;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/Cache$Listener;

    invoke-interface {v2, p1}, Landroidx/media3/datasource/cache/Cache$Listener;->a(Landroidx/media3/datasource/cache/CacheSpan;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/media3/datasource/cache/SimpleCache;->b:Landroidx/media3/datasource/cache/CacheEvictor;

    invoke-interface {p0, p1}, Landroidx/media3/datasource/cache/Cache$Listener;->a(Landroidx/media3/datasource/cache/CacheSpan;)V

    :cond_3
    return-void
.end method

.method public final q()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    iget-object v1, v1, Landroidx/media3/datasource/cache/CachedContentIndex;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/CachedContent;

    iget-object v2, v2, Landroidx/media3/datasource/cache/CachedContent;->c:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/datasource/cache/CacheSpan;

    iget-object v4, v3, Landroidx/media3/datasource/cache/CacheSpan;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, v3, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/cache/CacheSpan;

    invoke-virtual {p0, v2}, Landroidx/media3/datasource/cache/SimpleCache;->p(Landroidx/media3/datasource/cache/CacheSpan;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final r(Ljava/lang/String;Landroidx/media3/datasource/cache/SimpleCacheSpan;)Landroidx/media3/datasource/cache/SimpleCacheSpan;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Landroidx/media3/datasource/cache/CacheSpan;->f:Ljava/io/File;

    iget-boolean v3, v0, Landroidx/media3/datasource/cache/SimpleCache;->g:Z

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iget-wide v5, v1, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v3, 0x1

    iget-object v4, v0, Landroidx/media3/datasource/cache/SimpleCache;->d:Landroidx/media3/datasource/cache/CacheFileMetadataIndex;

    if-eqz v4, :cond_1

    move-wide v7, v14

    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroidx/media3/datasource/cache/CacheFileMetadataIndex;->d(JJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v14, v7

    const-string v4, "Failed to update index with new touch timestamp."

    invoke-static {v4}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object v5, v0, Landroidx/media3/datasource/cache/SimpleCache;->c:Landroidx/media3/datasource/cache/CachedContentIndex;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Landroidx/media3/datasource/cache/CachedContentIndex;->c(Ljava/lang/String;)Landroidx/media3/datasource/cache/CachedContent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Landroidx/media3/datasource/cache/CachedContent;->c:Ljava/util/TreeSet;

    invoke-virtual {v6, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v12, v1, Landroidx/media3/datasource/cache/CacheSpan;->c:J

    iget v11, v5, Landroidx/media3/datasource/cache/CachedContent;->a:I

    invoke-static/range {v10 .. v15}, Landroidx/media3/datasource/cache/SimpleCacheSpan;->c(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v18, v4

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Failed to rename "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v18, v2

    :goto_2
    iget-boolean v2, v1, Landroidx/media3/datasource/cache/CacheSpan;->e:Z

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v10, Landroidx/media3/datasource/cache/SimpleCacheSpan;

    iget-object v11, v1, Landroidx/media3/datasource/cache/CacheSpan;->b:Ljava/lang/String;

    iget-wide v12, v1, Landroidx/media3/datasource/cache/CacheSpan;->c:J

    move-wide/from16 v16, v14

    iget-wide v14, v1, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    invoke-direct/range {v10 .. v18}, Landroidx/media3/datasource/cache/CacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    invoke-virtual {v6, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroidx/media3/datasource/cache/SimpleCache;->e:Ljava/util/HashMap;

    iget-object v4, v1, Landroidx/media3/datasource/cache/CacheSpan;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_3
    if-ltz v4, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/datasource/cache/Cache$Listener;

    invoke-interface {v3, v0, v1, v10}, Landroidx/media3/datasource/cache/Cache$Listener;->c(Landroidx/media3/datasource/cache/SimpleCache;Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_4
    iget-object v2, v0, Landroidx/media3/datasource/cache/SimpleCache;->b:Landroidx/media3/datasource/cache/CacheEvictor;

    invoke-interface {v2, v0, v1, v10}, Landroidx/media3/datasource/cache/Cache$Listener;->c(Landroidx/media3/datasource/cache/SimpleCache;Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)V

    return-object v10
.end method
