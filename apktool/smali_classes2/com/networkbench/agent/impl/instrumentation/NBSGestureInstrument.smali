.class public Lcom/networkbench/agent/impl/instrumentation/NBSGestureInstrument;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSGestureInstrument"

.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/g/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSGestureInstrument;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3

    const-string v0, "NBSGestureInstrument"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSGestureInstrument;->isGestureCollect()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "gesture collect not collect"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSGestureInstrument;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/g/a/c;

    invoke-interface {v2, p0}, Lcom/networkbench/agent/impl/g/a/c;->a(Landroid/view/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-void

    :goto_1
    const-string v1, "error in dispatchKeyEvent"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSGestureInstrument;->isGestureCollect()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "NBSGestureInstrument"

    const-string v0, "gesture collect not collect"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSGestureInstrument;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/g/a/c;

    invoke-interface {v1, p0}, Lcom/networkbench/agent/impl/g/a/c;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "dispatchTouchEvent has an error : "

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static isGestureCollect()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    return v0
.end method

.method public static registerMotionEventListener(Lcom/networkbench/agent/impl/g/a/c;)V
    .locals 2

    const-string v0, "NBSGestureInstrument"

    const-string v1, "NBSGestureInstrument  registerMotionEventListener !"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSGestureInstrument;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeMotionEventListener(Lcom/networkbench/agent/impl/g/a/c;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSGestureInstrument;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
