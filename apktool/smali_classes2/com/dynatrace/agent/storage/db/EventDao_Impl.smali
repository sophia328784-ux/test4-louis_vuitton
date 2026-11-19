.class public final Lcom/dynatrace/agent/storage/db/EventDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/storage/db/EventDao;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertionAdapter;

.field public final c:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field public final d:Landroidx/room/SharedSQLiteStatement;

.field public final e:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$1;

    invoke-direct {v0, p1}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->b:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$2;

    invoke-direct {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->c:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$3;

    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->d:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$4;

    invoke-direct {v0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->e:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/dynatrace/agent/storage/db/EventDao_Impl$6;-><init>(Lcom/dynatrace/agent/storage/db/EventDao_Impl;Ljava/util/List;)V

    sget-object p1, Landroidx/room/CoroutinesRoom;->a:Landroidx/room/CoroutinesRoom$Companion;

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1, v0, p2}, Landroidx/room/CoroutinesRoom$Companion;->b(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;

    invoke-direct {v0, p0, p1}, Lcom/dynatrace/agent/storage/db/EventDao_Impl$12;-><init>(Lcom/dynatrace/agent/storage/db/EventDao_Impl;Ljava/util/List;)V

    sget-object p1, Landroidx/room/CoroutinesRoom;->a:Landroidx/room/CoroutinesRoom$Companion;

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1, v0, p2}, Landroidx/room/CoroutinesRoom$Companion;->b(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$7;

    move-object v1, p0

    move-wide v4, p1

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/storage/db/EventDao_Impl$7;-><init>(Lcom/dynatrace/agent/storage/db/EventDao_Impl;JJ)V

    sget-object p0, Landroidx/room/CoroutinesRoom;->a:Landroidx/room/CoroutinesRoom$Companion;

    check-cast p5, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    iget-object p1, v1, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, v0, p5}, Landroidx/room/CoroutinesRoom$Companion;->b(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/dynatrace/agent/storage/db/EventRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/dynatrace/agent/storage/db/EventDao_Impl$5;-><init>(Lcom/dynatrace/agent/storage/db/EventDao_Impl;Lcom/dynatrace/agent/storage/db/EventRecord;)V

    sget-object p1, Landroidx/room/CoroutinesRoom;->a:Landroidx/room/CoroutinesRoom$Companion;

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1, v0, p2}, Landroidx/room/CoroutinesRoom$Companion;->b(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/dynatrace/agent/storage/db/EventDao_Impl$8;

    invoke-direct {v0, p0}, Lcom/dynatrace/agent/storage/db/EventDao_Impl$8;-><init>(Lcom/dynatrace/agent/storage/db/EventDao_Impl;)V

    sget-object v1, Landroidx/room/CoroutinesRoom;->a:Landroidx/room/CoroutinesRoom$Companion;

    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v0, p1}, Landroidx/room/CoroutinesRoom$Companion;->b(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(ZILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x2

    const-string v1, "SELECT id, timestamp, isPriorityData, eventSizeBytes FROM events WHERE isPriorityData = ? LIMIT ?"

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->c(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->a(IJ)V

    int-to-long p1, p2

    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->a(IJ)V

    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    new-instance p2, Lcom/dynatrace/agent/storage/db/EventDao_Impl$10;

    invoke-direct {p2, p0, v1}, Lcom/dynatrace/agent/storage/db/EventDao_Impl$10;-><init>(Lcom/dynatrace/agent/storage/db/EventDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    sget-object v0, Landroidx/room/CoroutinesRoom;->a:Landroidx/room/CoroutinesRoom$Companion;

    check-cast p3, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/room/CoroutinesRoom$Companion;->a(Landroidx/room/RoomDatabase;Landroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    const-string v0, "SELECT * FROM events WHERE id IN ("

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->c(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->a(IJ)V

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v1, Lcom/dynatrace/agent/storage/db/EventDao_Impl$11;

    invoke-direct {v1, p0, v0}, Lcom/dynatrace/agent/storage/db/EventDao_Impl$11;-><init>(Lcom/dynatrace/agent/storage/db/EventDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    sget-object v0, Landroidx/room/CoroutinesRoom;->a:Landroidx/room/CoroutinesRoom$Companion;

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/db/EventDao_Impl;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/room/CoroutinesRoom$Companion;->a(Landroidx/room/RoomDatabase;Landroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
