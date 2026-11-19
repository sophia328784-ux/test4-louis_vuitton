.class public Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

.field private static final log:Lcom/networkbench/agent/impl/c/e;

.field private static final runnableController:Lcom/networkbench/agent/impl/asyncaction/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/l;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/asyncaction/l;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/g;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/asyncaction/g;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->runnableController:Lcom/networkbench/agent/impl/asyncaction/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final post(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->runnableController:Lcom/networkbench/agent/impl/asyncaction/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/asyncaction/g;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :goto_1
    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error configInstrumentHandler "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static final postAtFrontOfQueue(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->runnableController:Lcom/networkbench/agent/impl/asyncaction/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/asyncaction/g;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :goto_1
    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error configInstrumentHandler "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static final postAtTime(Landroid/os/Handler;Ljava/lang/Runnable;J)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->runnableController:Lcom/networkbench/agent/impl/asyncaction/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/asyncaction/g;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0

    :goto_1
    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error configInstrumentHandler "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public static final postAtTime(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 3

    .line 37
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->runnableController:Lcom/networkbench/agent/impl/asyncaction/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/asyncaction/g;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0

    .line 40
    :goto_1
    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error configInstrumentHandler "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static final postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;J)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->runnableController:Lcom/networkbench/agent/impl/asyncaction/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/asyncaction/g;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0

    :goto_1
    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error configInstrumentHandler "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public static final postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 3

    .line 37
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->runnableController:Lcom/networkbench/agent/impl/asyncaction/g;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/asyncaction/g;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0

    .line 40
    :goto_1
    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error configInstrumentHandler "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static final sendEmptyMessage(Landroid/os/Handler;I)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error sendEmptyMessage "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public static final sendEmptyMessageAtTime(Landroid/os/Handler;IJ)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error configInstrumentHandler"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p0

    return p0
.end method

.method public static final sendEmptyMessageDelayed(Landroid/os/Handler;IJ)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error configInstrumentHandler"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p0

    return p0
.end method

.method public static final sendMessage(Landroid/os/Handler;Landroid/os/Message;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error sendMessage "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static final sendMessageAtFrontOfQueue(Landroid/os/Handler;Landroid/os/Message;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error configInstrumentHandler "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static sendMessageAtTime(Landroid/os/Handler;Landroid/os/Message;J)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error configInstrumentHandler "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public static final sendMessageDelayed(Landroid/os/Handler;Landroid/os/Message;J)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->handlerController:Lcom/networkbench/agent/impl/asyncaction/l;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/l;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSOSHandlerInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error configInstrumentHandler "

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0

    :catchall_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method
