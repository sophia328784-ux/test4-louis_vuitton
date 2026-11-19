.class public final Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;
    }
.end annotation


# static fields
.field private static final POLL_BATCH_TIME:J = 0xfaL

.field private static final STOP_THREAD_WAIT_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static active:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile theInstance:Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;


# instance fields
.field private queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    const-string v0, "dtxDatabaseWriteQueue"

    sput-object v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    sget-object v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;
    .locals 2

    sget-object v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->theInstance:Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    if-nez v0, :cond_1

    const-class v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->theInstance:Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    if-nez v1, :cond_0

    new-instance v1, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    invoke-direct {v1}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;-><init>()V

    sput-object v1, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->theInstance:Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->theInstance:Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized flushQueue()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/dynatrace/android/agent/Core;->g:Lcom/dynatrace/android/agent/db/DataAccessObject;

    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v2, v2, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-virtual {v1, v0, v2}, Lcom/dynatrace/android/agent/db/DataAccessObject;->c(Ljava/util/LinkedList;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Database write queue running ..."

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_0
    sget-object v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->flushQueue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    sget-object v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stopThread()V
    .locals 2

    sget-object v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->active:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-class v0, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->theInstance:Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "could not stop thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
