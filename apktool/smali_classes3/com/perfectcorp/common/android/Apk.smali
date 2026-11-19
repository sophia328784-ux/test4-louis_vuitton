.class public abstract Lcom/perfectcorp/common/android/Apk;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/android/Apk;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;
    .locals 6

    sget-object v0, Lcom/perfectcorp/common/android/Apk;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->q(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->f()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-array v3, v5, [Ljava/lang/Iterable;

    aput-object v1, v3, v2

    aput-object p0, v3, v4

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->h([Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v1

    :cond_0
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->d(Ljava/util/AbstractCollection;)Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->e(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-array v1, v5, [Ljava/lang/Iterable;

    aput-object v0, v1, v2

    aput-object p0, v1, v4

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->h([Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 6

    invoke-static {p0}, Lcom/perfectcorp/common/android/Apk;->a(Landroid/content/Context;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    const-string v1, "assets/"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/perfectcorp/common/zip/c$b; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v4, v1, p2}, Lcom/perfectcorp/common/zip/a;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)V

    sget-object v5, Lcom/perfectcorp/common/android/Apk;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Lcom/perfectcorp/common/zip/c$b; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_4
    .catch Lcom/perfectcorp/common/zip/c$b; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    new-instance p1, Lcom/perfectcorp/common/io/a;

    invoke-direct {p1, p2}, Lcom/perfectcorp/common/io/a;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {p0, p1}, Lcom/perfectcorp/common/io/IO;->c(Ljava/io/InputStream;Lcom/perfectcorp/common/io/a;)V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/perfectcorp/common/io/a;->e:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {p0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    invoke-virtual {p1}, Lcom/perfectcorp/common/io/a;->close()V

    return-void

    :catchall_2
    move-exception p2

    :goto_2
    move-object v0, p0

    goto :goto_3

    :catchall_3
    move-exception p2

    move-object p1, v0

    goto :goto_2

    :catchall_4
    move-exception p2

    move-object p1, v0

    :goto_3
    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/perfectcorp/common/io/a;->close()V

    :cond_1
    throw p2
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    invoke-static {p0}, Lcom/perfectcorp/common/android/Apk;->a(Landroid/content/Context;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    const-string v1, "assets/"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/perfectcorp/common/zip/c$b; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    :try_start_1
    invoke-static {v4, v1, v5}, Lcom/perfectcorp/common/zip/c;->c(Ljava/util/zip/ZipFile;Ljava/lang/String;Z)Lcom/perfectcorp/common/zip/c;

    move-result-object v5

    sget-object v6, Lcom/perfectcorp/common/android/Apk;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v5

    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    throw v3
    :try_end_3
    .catch Lcom/perfectcorp/common/zip/c$b; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
