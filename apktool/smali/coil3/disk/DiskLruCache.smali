.class public final Lcoil3/disk/DiskLruCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/disk/DiskLruCache$Companion;,
        Lcoil3/disk/DiskLruCache$Editor;,
        Lcoil3/disk/DiskLruCache$Entry;,
        Lcoil3/disk/DiskLruCache$Snapshot;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0004\u0010\u0011\u0012\u0013B7\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcoil3/disk/DiskLruCache;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "Lokio/FileSystem;",
        "fileSystem",
        "Lokio/Path;",
        "directory",
        "Lkotlin/coroutines/CoroutineContext;",
        "cleanupCoroutineContext",
        "",
        "maxSize",
        "",
        "appVersion",
        "valueCount",
        "<init>",
        "(Lokio/FileSystem;Lokio/Path;Lkotlin/coroutines/CoroutineContext;JII)V",
        "Snapshot",
        "Editor",
        "Entry",
        "Companion",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final u:Lkotlin/text/Regex;


# instance fields
.field public final b:Lokio/Path;

.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:Lokio/Path;

.field public final g:Lokio/Path;

.field public final h:Lokio/Path;

.field public final i:Ljava/util/LinkedHashMap;

.field public final j:Lkotlinx/coroutines/internal/ContextScope;

.field public final k:Ljava/lang/Object;

.field public l:J

.field public m:I

.field public n:Lokio/RealBufferedSink;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public final t:Lcoil3/disk/DiskLruCache$fileSystem$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil3/disk/DiskLruCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/disk/DiskLruCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[a-z0-9_-]{1,120}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcoil3/disk/DiskLruCache;->u:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Lokio/FileSystem;Lokio/Path;Lkotlin/coroutines/CoroutineContext;JII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcoil3/disk/DiskLruCache;->b:Lokio/Path;

    iput-wide p4, p0, Lcoil3/disk/DiskLruCache;->c:J

    iput p6, p0, Lcoil3/disk/DiskLruCache;->d:I

    iput p7, p0, Lcoil3/disk/DiskLruCache;->e:I

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    const/4 p5, 0x0

    if-lez p4, :cond_3

    if-lez p7, :cond_2

    const-string p4, "journal"

    invoke-virtual {p2, p4}, Lokio/Path;->e(Ljava/lang/String;)Lokio/Path;

    move-result-object p4

    iput-object p4, p0, Lcoil3/disk/DiskLruCache;->f:Lokio/Path;

    const-string p4, "journal.tmp"

    invoke-virtual {p2, p4}, Lokio/Path;->e(Ljava/lang/String;)Lokio/Path;

    move-result-object p4

    iput-object p4, p0, Lcoil3/disk/DiskLruCache;->g:Lokio/Path;

    const-string p4, "journal.bkp"

    invoke-virtual {p2, p4}, Lokio/Path;->e(Ljava/lang/String;)Lokio/Path;

    move-result-object p2

    iput-object p2, p0, Lcoil3/disk/DiskLruCache;->h:Lokio/Path;

    new-instance p2, Ljava/util/LinkedHashMap;

    const/4 p4, 0x0

    const/high16 p6, 0x3f400000    # 0.75f

    const/4 p7, 0x1

    invoke-direct {p2, p4, p6, p7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p2, p0, Lcoil3/disk/DiskLruCache;->i:Ljava/util/LinkedHashMap;

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    invoke-interface {p3, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    sget-object p4, Lcoil3/util/UtilsKt;->a:Lkotlin/jvm/functions/Function1;

    sget-object p4, Lkotlin/coroutines/ContinuationInterceptor;->y0:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {p3, p4}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p3

    instance-of p4, p3, Lkotlinx/coroutines/CoroutineDispatcher;

    if-eqz p4, :cond_0

    check-cast p3, Lkotlinx/coroutines/CoroutineDispatcher;

    goto :goto_0

    :cond_0
    move-object p3, p5

    :goto_0
    if-nez p3, :cond_1

    sget-object p3, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    :cond_1
    const/4 p4, 0x2

    invoke-static {p3, p7, p5, p4, p5}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism$default(Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    invoke-interface {p2, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p2

    iput-object p2, p0, Lcoil3/disk/DiskLruCache;->j:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcoil3/disk/DiskLruCache;->k:Ljava/lang/Object;

    new-instance p2, Lcoil3/disk/DiskLruCache$fileSystem$1;

    invoke-direct {p2, p1}, Lokio/ForwardingFileSystem;-><init>(Lokio/FileSystem;)V

    iput-object p2, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    return-void

    :cond_2
    const-string p0, "valueCount <= 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw p5

    :cond_3
    const-string p0, "maxSize <= 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw p5
.end method

.method public static final c(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Editor;Z)V
    .locals 10

    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcoil3/disk/DiskLruCache$Editor;->a:Lcoil3/disk/DiskLruCache$Entry;

    iget-object v2, v1, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-boolean v3, v1, Lcoil3/disk/DiskLruCache$Entry;->f:Z

    if-nez v3, :cond_4

    iget v3, p0, Lcoil3/disk/DiskLruCache;->e:I

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p1, Lcoil3/disk/DiskLruCache$Editor;->c:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v6, v1, Lcoil3/disk/DiskLruCache$Entry;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/Path;

    invoke-virtual {v5, v6}, Lokio/FileSystem;->k(Lokio/Path;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v2}, Lcoil3/disk/DiskLruCache$Editor;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget p1, p0, Lcoil3/disk/DiskLruCache;->e:I

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_5

    iget-object v4, v1, Lcoil3/disk/DiskLruCache$Entry;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/Path;

    iget-object v5, v1, Lcoil3/disk/DiskLruCache$Entry;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/Path;

    iget-object v6, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    invoke-virtual {v6, v4}, Lokio/FileSystem;->k(Lokio/Path;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v7, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v7, v4, v5}, Lokio/ForwardingFileSystem;->d(Lokio/Path;Lokio/Path;)V

    goto :goto_2

    :cond_2
    iget-object v4, v1, Lcoil3/disk/DiskLruCache$Entry;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/Path;

    invoke-static {v7, v4}, Lcoil3/util/FileSystemsKt;->a(Lokio/FileSystem;Lokio/Path;)V

    :goto_2
    iget-object v4, v1, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    aget-wide v6, v4, v3

    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    invoke-virtual {v4, v5}, Lokio/FileSystem;->n(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v4

    iget-object v4, v4, Lokio/FileMetadata;->d:Ljava/lang/Long;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x0

    :goto_3
    iget-object v8, v1, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    aput-wide v4, v8, v3

    iget-wide v8, p0, Lcoil3/disk/DiskLruCache;->l:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcoil3/disk/DiskLruCache;->l:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget p1, p0, Lcoil3/disk/DiskLruCache;->e:I

    move v3, v2

    :goto_4
    if-ge v3, p1, :cond_5

    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v5, v1, Lcoil3/disk/DiskLruCache$Entry;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/Path;

    invoke-virtual {v4, v5}, Lokio/FileSystem;->j(Lokio/Path;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    iput-object p1, v1, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    iget-boolean p1, v1, Lcoil3/disk/DiskLruCache$Entry;->f:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache;->o(Lcoil3/disk/DiskLruCache$Entry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :cond_6
    :try_start_3
    iget p1, p0, Lcoil3/disk/DiskLruCache;->m:I

    const/4 v3, 0x1

    add-int/2addr p1, v3

    iput p1, p0, Lcoil3/disk/DiskLruCache;->m:I

    iget-object p1, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/RealBufferedSink;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xa

    const/16 v5, 0x20

    if-nez p2, :cond_8

    iget-boolean p2, v1, Lcoil3/disk/DiskLruCache$Entry;->e:Z

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lcoil3/disk/DiskLruCache;->i:Ljava/util/LinkedHashMap;

    iget-object v6, v1, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "REMOVE"

    invoke-virtual {p1, p2}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {p1, v5}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object p2, v1, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {p1, v4}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_7

    :cond_8
    :goto_5
    iput-boolean v3, v1, Lcoil3/disk/DiskLruCache$Entry;->e:Z

    const-string p2, "CLEAN"

    invoke-virtual {p1, p2}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {p1, v5}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object p2, v1, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object p2, v1, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    array-length v1, p2

    move v6, v2

    :goto_6
    if-ge v6, v1, :cond_9

    aget-wide v7, p2, v6

    invoke-virtual {p1, v5}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {p1, v7, v8}, Lokio/RealBufferedSink;->F0(J)Lokio/BufferedSink;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {p1, v4}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    :goto_7
    invoke-virtual {p1}, Lokio/RealBufferedSink;->flush()V

    iget-wide p1, p0, Lcoil3/disk/DiskLruCache;->l:J

    iget-wide v4, p0, Lcoil3/disk/DiskLruCache;->c:J

    cmp-long p1, p1, v4

    if-gtz p1, :cond_b

    iget p1, p0, Lcoil3/disk/DiskLruCache;->m:I

    const/16 p2, 0x7d0

    if-lt p1, p2, :cond_a

    move v2, v3

    :cond_a
    if-eqz v2, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    monitor-exit v0

    return-void

    :cond_d
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    monitor-exit v0

    throw p0
.end method

.method public static q(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcoil3/disk/DiskLruCache;->u:Lkotlin/text/Regex;

    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "keys must match regex [a-z0-9_-]{1,120}: \""

    const-string v1, "\""

    invoke-static {v0, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 8

    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcoil3/disk/DiskLruCache;->p:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcoil3/disk/DiskLruCache;->q:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Lcoil3/disk/DiskLruCache$Entry;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcoil3/disk/DiskLruCache$Entry;

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    iget-object v5, v5, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    if-eqz v5, :cond_1

    iget-object v6, v5, Lcoil3/disk/DiskLruCache$Editor;->a:Lcoil3/disk/DiskLruCache$Entry;

    iget-object v7, v6, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-boolean v2, v6, Lcoil3/disk/DiskLruCache$Entry;->f:Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->p()V

    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->j:Lkotlinx/coroutines/internal/ContextScope;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/RealBufferedSink;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lokio/RealBufferedSink;->close()V

    iput-object v3, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/RealBufferedSink;

    iput-boolean v2, p0, Lcoil3/disk/DiskLruCache;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v2, p0, Lcoil3/disk/DiskLruCache;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final d(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Editor;
    .locals 5

    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcoil3/disk/DiskLruCache;->q:Z

    if-nez v1, :cond_7

    invoke-static {p1}, Lcoil3/disk/DiskLruCache;->q(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->h()V

    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil3/disk/DiskLruCache$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    iget v3, v1, Lcoil3/disk/DiskLruCache$Entry;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    monitor-exit v0

    return-object v2

    :cond_2
    :try_start_2
    iget-boolean v3, p0, Lcoil3/disk/DiskLruCache;->r:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcoil3/disk/DiskLruCache;->s:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/RealBufferedSink;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "DIRTY"

    invoke-virtual {v3, v4}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v3, p1}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v3}, Lokio/RealBufferedSink;->flush()V

    iget-boolean v3, p0, Lcoil3/disk/DiskLruCache;->o:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    monitor-exit v0

    return-object v2

    :cond_4
    if-nez v1, :cond_5

    :try_start_3
    new-instance v1, Lcoil3/disk/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1}, Lcoil3/disk/DiskLruCache$Entry;-><init>(Lcoil3/disk/DiskLruCache;Ljava/lang/String;)V

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->i:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance p1, Lcoil3/disk/DiskLruCache$Editor;

    invoke-direct {p1, p0, v1}, Lcoil3/disk/DiskLruCache$Editor;-><init>(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V

    iput-object p1, v1, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p1

    :cond_6
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->j()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v2

    :cond_7
    :try_start_5
    const-string p0, "cache is closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final e(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Snapshot;
    .locals 5

    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcoil3/disk/DiskLruCache;->q:Z

    if-nez v1, :cond_4

    invoke-static {p1}, Lcoil3/disk/DiskLruCache;->q(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->h()V

    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil3/disk/DiskLruCache$Entry;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcoil3/disk/DiskLruCache$Entry;->a()Lcoil3/disk/DiskLruCache$Snapshot;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget v2, p0, Lcoil3/disk/DiskLruCache;->m:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcoil3/disk/DiskLruCache;->m:I

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/RealBufferedSink;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "READ"

    invoke-virtual {v2, v4}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v2, p1}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    const/16 p1, 0xa

    invoke-virtual {v2, p1}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v2}, Lokio/RealBufferedSink;->flush()V

    iget p1, p0, Lcoil3/disk/DiskLruCache;->m:I

    const/16 v2, 0x7d0

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    monitor-exit v0

    return-object v1

    :cond_3
    :goto_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_4
    :try_start_1
    const-string p0, "cache is closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcoil3/disk/DiskLruCache;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->g:Lokio/Path;

    invoke-virtual {v1, v2}, Lokio/FileSystem;->j(Lokio/Path;)V

    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->h:Lokio/Path;

    invoke-virtual {v1, v2}, Lokio/FileSystem;->k(Lokio/Path;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->f:Lokio/Path;

    invoke-virtual {v1, v2}, Lokio/FileSystem;->k(Lokio/Path;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v3, p0, Lcoil3/disk/DiskLruCache;->h:Lokio/Path;

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v2, v3}, Lokio/FileSystem;->j(Lokio/Path;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->f:Lokio/Path;

    invoke-virtual {v2, v3, v1}, Lokio/ForwardingFileSystem;->d(Lokio/Path;Lokio/Path;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->f:Lokio/Path;

    invoke-virtual {v1, v2}, Lokio/FileSystem;->k(Lokio/Path;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->m()V

    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->k()V

    iput-boolean v2, p0, Lcoil3/disk/DiskLruCache;->p:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catch_0
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->close()V

    iget-object v3, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->b:Lokio/Path;

    invoke-static {v3, v4}, Lcoil3/util/FileSystemsKt;->b(Lokio/FileSystem;Lokio/Path;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iput-boolean v1, p0, Lcoil3/disk/DiskLruCache;->q:Z

    goto :goto_1

    :catchall_1
    move-exception v2

    iput-boolean v1, p0, Lcoil3/disk/DiskLruCache;->q:Z

    throw v2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->r()V

    iput-boolean v2, p0, Lcoil3/disk/DiskLruCache;->p:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final j()V
    .locals 3

    new-instance v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(Lcoil3/disk/DiskLruCache;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcoil3/disk/DiskLruCache;->j:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final k()V
    .locals 9

    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcoil3/disk/DiskLruCache$Entry;

    iget-object v4, v3, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    iget v5, p0, Lcoil3/disk/DiskLruCache;->e:I

    const/4 v6, 0x0

    if-nez v4, :cond_1

    :goto_1
    if-ge v6, v5, :cond_0

    iget-object v4, v3, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    aget-wide v7, v4, v6

    add-long/2addr v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    iput-object v4, v3, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    :goto_2
    if-ge v6, v5, :cond_2

    iget-object v4, v3, Lcoil3/disk/DiskLruCache$Entry;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/Path;

    iget-object v7, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    invoke-virtual {v7, v4}, Lokio/FileSystem;->j(Lokio/Path;)V

    iget-object v4, v3, Lcoil3/disk/DiskLruCache$Entry;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/Path;

    invoke-virtual {v7, v4}, Lokio/FileSystem;->j(Lokio/Path;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iput-wide v1, p0, Lcoil3/disk/DiskLruCache;->l:J

    return-void
.end method

.method public final m()V
    .locals 13

    const-string v0, ", "

    const-string v1, "unexpected journal header: ["

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v3, p0, Lcoil3/disk/DiskLruCache;->f:Lokio/Path;

    invoke-virtual {v2, v3}, Lokio/ForwardingFileSystem;->r(Lokio/Path;)Lokio/Source;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->c(Lokio/Source;)Lokio/RealBufferedSource;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    :try_start_0
    invoke-virtual {v4, v5, v6}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v6}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v6}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v11

    const-string v12, "libcore.io.DiskLruCache"

    invoke-virtual {v12, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "1"

    invoke-virtual {v12, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget v12, p0, Lcoil3/disk/DiskLruCache;->d:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget v12, p0, Lcoil3/disk/DiskLruCache;->e:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v12, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v4, v5, v6}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache;->n(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->i:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcoil3/disk/DiskLruCache;->m:I

    invoke-virtual {v4}, Lokio/RealBufferedSource;->Z0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->r()V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lokio/ForwardingFileSystem;->c(Lokio/Path;)Lokio/Sink;

    move-result-object v0

    new-instance v1, Lcoil3/disk/FaultHidingSink;

    new-instance v2, Lck;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3}, Lck;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v0, v2}, Lcoil3/disk/FaultHidingSink;-><init>(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lokio/RealBufferedSink;

    invoke-direct {v0, v1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    iput-object v0, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/RealBufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Lokio/RealBufferedSource;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p0, 0x0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    :try_start_4
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-virtual {v4}, Lokio/RealBufferedSource;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    if-nez p0, :cond_2

    return-void

    :cond_2
    throw p0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 10

    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p1, v0, v1, v2}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    move-result v3

    const-string v4, "unexpected journal line: "

    const/4 v5, -0x1

    if-eq v3, v5, :cond_8

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x4

    invoke-static {p1, v0, v6, v7}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    move-result v8

    iget-object v9, p0, Lcoil3/disk/DiskLruCache;->i:Ljava/util/LinkedHashMap;

    if-ne v8, v5, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    if-ne v3, v2, :cond_1

    const-string v2, "REMOVE"

    invoke-static {p1, v2, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lcoil3/disk/DiskLruCache$Entry;

    invoke-direct {v2, p0, v6}, Lcoil3/disk/DiskLruCache$Entry;-><init>(Lcoil3/disk/DiskLruCache;Ljava/lang/String;)V

    invoke-interface {v9, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v2, Lcoil3/disk/DiskLruCache$Entry;

    const/4 v6, 0x5

    if-eq v8, v5, :cond_4

    if-ne v3, v6, :cond_4

    const-string v9, "CLEAN"

    invoke-static {p1, v9, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 p0, 0x1

    add-int/2addr v8, p0

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-array v3, p0, [C

    aput-char v0, v3, v1

    invoke-static {p1, v3}, Lkotlin/text/StringsKt;->M(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p1

    iput-boolean p0, v2, Lcoil3/disk/DiskLruCache$Entry;->e:Z

    const/4 p0, 0x0

    iput-object p0, v2, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    iget-object v0, v2, Lcoil3/disk/DiskLruCache$Entry;->i:Lcoil3/disk/DiskLruCache;

    iget v0, v0, Lcoil3/disk/DiskLruCache;->e:I

    if-ne p0, v0, :cond_3

    :try_start_0
    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_0
    if-ge v1, p0, :cond_6

    iget-object v0, v2, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    invoke-static {p1, v4}, La61;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p1, v4}, La61;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_4
    if-ne v8, v5, :cond_5

    if-ne v3, v6, :cond_5

    const-string v0, "DIRTY"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lcoil3/disk/DiskLruCache$Editor;

    invoke-direct {p1, p0, v2}, Lcoil3/disk/DiskLruCache$Editor;-><init>(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V

    iput-object p1, v2, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    return-void

    :cond_5
    if-ne v8, v5, :cond_7

    if-ne v3, v7, :cond_7

    const-string p0, "READ"

    invoke-static {p1, p0, v1}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final o(Lcoil3/disk/DiskLruCache$Entry;)V
    .locals 10

    iget v0, p1, Lcoil3/disk/DiskLruCache$Entry;->h:I

    iget-object v1, p1, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-lez v0, :cond_0

    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/RealBufferedSink;

    if-eqz v0, :cond_0

    const-string v4, "DIRTY"

    invoke-virtual {v0, v4}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v0, v3}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v0, v1}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v0, v2}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v0}, Lokio/RealBufferedSink;->flush()V

    :cond_0
    iget v0, p1, Lcoil3/disk/DiskLruCache$Entry;->h:I

    const/4 v4, 0x1

    if-gtz v0, :cond_5

    iget-object v0, p1, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v5, p0, Lcoil3/disk/DiskLruCache;->e:I

    if-ge v0, v5, :cond_2

    iget-object v5, p1, Lcoil3/disk/DiskLruCache$Entry;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/Path;

    iget-object v6, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    invoke-virtual {v6, v5}, Lokio/FileSystem;->j(Lokio/Path;)V

    iget-wide v5, p0, Lcoil3/disk/DiskLruCache;->l:J

    iget-object v7, p1, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    aget-wide v8, v7, v0

    sub-long/2addr v5, v8

    iput-wide v5, p0, Lcoil3/disk/DiskLruCache;->l:J

    const-wide/16 v5, 0x0

    aput-wide v5, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcoil3/disk/DiskLruCache;->m:I

    add-int/2addr p1, v4

    iput p1, p0, Lcoil3/disk/DiskLruCache;->m:I

    iget-object p1, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/RealBufferedSink;

    if-eqz p1, :cond_3

    const-string v0, "REMOVE"

    invoke-virtual {p1, v0}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {p1, v3}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {p1, v1}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {p1, v2}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {p1}, Lokio/RealBufferedSink;->flush()V

    :cond_3
    iget-object p1, p0, Lcoil3/disk/DiskLruCache;->i:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcoil3/disk/DiskLruCache;->m:I

    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_4

    invoke-virtual {p0}, Lcoil3/disk/DiskLruCache;->j()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    iput-boolean v4, p1, Lcoil3/disk/DiskLruCache$Entry;->f:Z

    return-void
.end method

.method public final p()V
    .locals 4

    :goto_0
    iget-wide v0, p0, Lcoil3/disk/DiskLruCache;->l:J

    iget-wide v2, p0, Lcoil3/disk/DiskLruCache;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil3/disk/DiskLruCache$Entry;

    iget-boolean v2, v1, Lcoil3/disk/DiskLruCache$Entry;->f:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache;->o(Lcoil3/disk/DiskLruCache$Entry;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcoil3/disk/DiskLruCache;->r:Z

    return-void
.end method

.method public final r()V
    .locals 11

    iget-object v0, p0, Lcoil3/disk/DiskLruCache;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/RealBufferedSink;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokio/RealBufferedSink;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    :goto_0
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->g:Lokio/Path;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcoil3/disk/DiskLruCache$fileSystem$1;->q(Lokio/Path;Z)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->b(Lokio/Sink;)Lokio/RealBufferedSink;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    const-string v4, "1"

    invoke-virtual {v1, v4}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v1, v2}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget v4, p0, Lcoil3/disk/DiskLruCache;->d:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Lokio/RealBufferedSink;->F0(J)Lokio/BufferedSink;

    invoke-virtual {v1, v2}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget v4, p0, Lcoil3/disk/DiskLruCache;->e:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Lokio/RealBufferedSink;->F0(J)Lokio/BufferedSink;

    invoke-virtual {v1, v2}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v1, v2}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcoil3/disk/DiskLruCache$Entry;

    iget-object v6, v5, Lcoil3/disk/DiskLruCache$Entry;->g:Lcoil3/disk/DiskLruCache$Editor;

    const/16 v7, 0x20

    if-eqz v6, :cond_1

    const-string v6, "DIRTY"

    invoke-virtual {v1, v6}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v1, v7}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v5, v5, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v1, v2}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_3

    :cond_1
    const-string v6, "CLEAN"

    invoke-virtual {v1, v6}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v1, v7}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    iget-object v6, v5, Lcoil3/disk/DiskLruCache$Entry;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    iget-object v5, v5, Lcoil3/disk/DiskLruCache$Entry;->b:[J

    array-length v6, v5

    move v8, v3

    :goto_2
    if-ge v8, v6, :cond_2

    aget-wide v9, v5, v8

    invoke-virtual {v1, v7}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v1, v9, v10}, Lokio/RealBufferedSink;->F0(J)Lokio/BufferedSink;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2}, Lokio/RealBufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lokio/RealBufferedSink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v1, 0x0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_5

    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lokio/RealBufferedSink;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    :try_start_4
    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    move-object v1, v2

    :goto_5
    if-nez v1, :cond_5

    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->f:Lokio/Path;

    invoke-virtual {v1, v2}, Lokio/FileSystem;->k(Lokio/Path;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    if-eqz v1, :cond_4

    :try_start_5
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->f:Lokio/Path;

    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->h:Lokio/Path;

    invoke-virtual {v2, v1, v4}, Lokio/ForwardingFileSystem;->d(Lokio/Path;Lokio/Path;)V

    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->g:Lokio/Path;

    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->f:Lokio/Path;

    invoke-virtual {v1, v2, v4}, Lokio/ForwardingFileSystem;->d(Lokio/Path;Lokio/Path;)V

    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->h:Lokio/Path;

    invoke-virtual {v1, v2}, Lokio/FileSystem;->j(Lokio/Path;)V

    goto :goto_6

    :cond_4
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->g:Lokio/Path;

    iget-object v4, p0, Lcoil3/disk/DiskLruCache;->f:Lokio/Path;

    invoke-virtual {v2, v1, v4}, Lokio/ForwardingFileSystem;->d(Lokio/Path;Lokio/Path;)V

    :goto_6
    iget-object v1, p0, Lcoil3/disk/DiskLruCache;->t:Lcoil3/disk/DiskLruCache$fileSystem$1;

    iget-object v2, p0, Lcoil3/disk/DiskLruCache;->f:Lokio/Path;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lokio/ForwardingFileSystem;->c(Lokio/Path;)Lokio/Sink;

    move-result-object v1

    new-instance v2, Lcoil3/disk/FaultHidingSink;

    new-instance v4, Lck;

    const/16 v5, 0xd

    invoke-direct {v4, p0, v5}, Lck;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v1, v4}, Lcoil3/disk/FaultHidingSink;-><init>(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lokio/RealBufferedSink;

    invoke-direct {v1, v2}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    iput-object v1, p0, Lcoil3/disk/DiskLruCache;->n:Lokio/RealBufferedSink;

    iput v3, p0, Lcoil3/disk/DiskLruCache;->m:I

    iput-boolean v3, p0, Lcoil3/disk/DiskLruCache;->o:Z

    iput-boolean v3, p0, Lcoil3/disk/DiskLruCache;->s:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-void

    :cond_5
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_7
    monitor-exit v0

    throw p0
.end method
