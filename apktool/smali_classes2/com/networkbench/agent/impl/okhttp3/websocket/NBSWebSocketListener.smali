.class public Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;
.super Lokhttp3/WebSocketListener;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/crash/f;


# static fields
.field private static final b:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field a:Lcom/networkbench/agent/impl/okhttp3/websocket/c;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/okhttp3/websocket/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->c:Ljava/util/List;

    new-instance v0, Lcom/networkbench/agent/impl/okhttp3/websocket/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/okhttp3/websocket/b;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/networkbench/agent/impl/crash/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lokhttp3/Request;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;
    .locals 3

    const-string p0, "retrive transaction from reqeust transaction obj:"

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    const-class v1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/Request;->a(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    :try_start_1
    sget-object v0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "retrive transaction from reqeust failed"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_1
    move-exception p0

    :goto_0
    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error retriveRequestTransaction:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/networkbench/agent/impl/okhttp3/websocket/c;
    .locals 0

    .line 75
    new-instance p0, Lcom/networkbench/agent/impl/okhttp3/websocket/c;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/c;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->b:Z

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->c:I

    .line 79
    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method private a()Z
    .locals 0

    .line 80
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->V()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public isSpan()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCrash(Ljava/lang/Thread;Ljava/lang/Throwable;J)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/okhttp3/websocket/a;

    const-string p2, "crash"

    const/4 p3, -0x1

    invoke-interface {p1, p3, p2}, Lcom/networkbench/agent/impl/okhttp3/websocket/a;->b(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "websocket error"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    sget-object p1, Lcom/networkbench/agent/impl/crash/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/okhttp3/websocket/a;

    invoke-interface {v0, p2, p3}, Lcom/networkbench/agent/impl/okhttp3/websocket/a;->b(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    sget-object p2, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p3, "websocket error"

    invoke-interface {p2, p3, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    sget-object p2, Lcom/networkbench/agent/impl/crash/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    throw p1
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/okhttp3/websocket/a;

    invoke-interface {p1, p2, p3}, Lcom/networkbench/agent/impl/okhttp3/websocket/a;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "websocket error"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    sget-object p1, Lcom/networkbench/agent/impl/crash/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-eqz p3, :cond_2

    :try_start_1
    iget p3, p3, Lokhttp3/Response;->e:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    const/4 p3, -0x1

    :goto_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a:Lcom/networkbench/agent/impl/okhttp3/websocket/c;

    if-nez v0, :cond_3

    invoke-interface {p1}, Lokhttp3/WebSocket;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a(Lokhttp3/Request;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/networkbench/agent/impl/okhttp3/websocket/c;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a:Lcom/networkbench/agent/impl/okhttp3/websocket/c;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/networkbench/agent/impl/okhttp3/websocket/c;->b:Z

    :cond_3
    iget-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/okhttp3/websocket/a;

    iget-object v1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a:Lcom/networkbench/agent/impl/okhttp3/websocket/c;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p3, v2, p2}, Lcom/networkbench/agent/impl/okhttp3/websocket/a;->a(Lcom/networkbench/agent/impl/okhttp3/websocket/c;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    :try_start_2
    sget-object p2, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p3, "websocket error"

    invoke-interface {p2, p3, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_4
    sget-object p2, Lcom/networkbench/agent/impl/crash/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    throw p1
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/okhttp3/websocket/a;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/okhttp3/websocket/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "websocket error"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 1

    .line 47
    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/okhttp3/websocket/a;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p2}, Lokio/ByteString;->e()I

    move-result v0

    .line 50
    :goto_1
    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/okhttp3/websocket/a;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception p0

    .line 51
    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "websocket error"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 1

    :try_start_0
    sget-object p2, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "onOpen happened"

    invoke-interface {p2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onOpen failed, Http_network_enabled is false"

    invoke-interface {p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lokhttp3/WebSocket;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a(Lokhttp3/Request;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lcom/networkbench/agent/impl/okhttp3/websocket/c;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a:Lcom/networkbench/agent/impl/okhttp3/websocket/c;

    iget-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/networkbench/agent/impl/okhttp3/websocket/a;

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a:Lcom/networkbench/agent/impl/okhttp3/websocket/c;

    invoke-interface {p2, v0}, Lcom/networkbench/agent/impl/okhttp3/websocket/a;->a(Lcom/networkbench/agent/impl/okhttp3/websocket/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "websocket error"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onReadPong(Lokio/ByteString;)V
    .locals 3

    const-string v0, "onReadPong payload length:"

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/ByteString;->e()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/okhttp3/websocket/a;

    invoke-virtual {p1}, Lokio/ByteString;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/okhttp3/websocket/a;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "websocket onReadPong"

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public send(Lokio/ByteString;I)Z
    .locals 4

    const-string v0, "send data length:"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/ByteString;->e()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", formatOpcode:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/okhttp3/websocket/a;

    invoke-virtual {p1}, Lokio/ByteString;->e()I

    move-result v2

    invoke-interface {v0, v2, p2}, Lcom/networkbench/agent/impl/okhttp3/websocket/a;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "websocket send"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method

.method public writePingFrame()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "writePingFrame happened"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/okhttp3/websocket/a;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/okhttp3/websocket/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/okhttp3/websocket/NBSWebSocketListener;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "websocket writePingFrame"

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
