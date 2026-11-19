.class public final Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;,
        Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$b;,
        Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;,
        Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$d;
    }
.end annotation


# static fields
.field public static final h:Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;

.field public static final i:Ljava/util/concurrent/ExecutorService;

.field public static final j:Ljava/lang/Object;


# instance fields
.field public final b:Ljava/util/concurrent/locks/Lock;

.field public final c:Ljava/util/concurrent/locks/Lock;

.field public d:J

.field public final e:Ljava/util/HashMap;

.field public f:Z

.field public final g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/common/utility/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;)Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;

    const-string v0, "DatabaseSharedPreferences"

    invoke-static {v0}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    iput-object v2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->b:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->c:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->e:Ljava/util/HashMap;

    new-instance v0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;
    .locals 1

    sget-object v0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;

    invoke-interface {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/LoadingCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    return-object p0
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->j:Ljava/lang/Object;

    iget-object v5, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p0, v4, :cond_0

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :cond_1
    :try_start_2
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq p0, v4, :cond_2

    move v2, v3

    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :cond_3
    :try_start_3
    iget-object p0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->j(Ljava/lang/String;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p0

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    new-instance v0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$d;

    invoke-direct {v0, p0}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$d;-><init>(Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;)V

    return-object v0
.end method

.method public final getAll()Ljava/util/Map;
    .locals 5

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    iget-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    :try_start_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    invoke-virtual {p0}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->h()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->j:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->j:Ljava/lang/Object;

    if-eq p0, p1, :cond_1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :cond_2
    :try_start_3
    iget-object p0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    const-string v1, "boolean"

    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->j:Ljava/lang/Object;

    if-eq p0, p1, :cond_1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :cond_2
    :try_start_3
    iget-object p0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    const-string v1, "float"

    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->j:Ljava/lang/Object;

    if-eq p0, p1, :cond_1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :cond_2
    :try_start_3
    iget-object p0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    const-string v1, "int"

    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p2

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide p2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->j:Ljava/lang/Object;

    if-eq p0, p1, :cond_1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide p2

    :cond_2
    :try_start_3
    iget-object p0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    const-string v1, "long"

    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide p2

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->j:Ljava/lang/Object;

    if-eq p0, p1, :cond_1

    move-object p2, p0

    check-cast p2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :cond_2
    :try_start_3
    iget-object p0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    const-string v1, "String"

    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->j:Ljava/lang/Object;

    if-eq p0, p1, :cond_1

    move-object p2, p0

    check-cast p2, Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :cond_2
    :try_start_3
    iget-object p0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    const-string v1, "Set<String>"

    invoke-virtual {p0, p1, v1}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object p2, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->c:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p0, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p2

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
