.class public Lcom/networkbench/agent/impl/instrumentation/NBSAsyncTaskInstrument;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

.field private static final log:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSAsyncTaskInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/l;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/asyncaction/l;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSAsyncTaskInstrument;->handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSAsyncTaskInstrument;->handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSAsyncTaskInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error AsyncTask execute "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    :catchall_1
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask;",
            "Ljava/util/concurrent/Executor;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSAsyncTaskInstrument;->handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSAsyncTaskInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error AsyncTask executeOnExecutor "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0

    :catchall_1
    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method
