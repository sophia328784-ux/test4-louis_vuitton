.class public Lcom/networkbench/agent/impl/socket/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/net/SocketImplFactory;


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketImpl;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/net/SocketImplFactory;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketImpl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/socket/b/b;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketImplFactory;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/networkbench/agent/impl/socket/b/b;->b:Ljava/net/SocketImplFactory;

    return-void
.end method

.method private static a()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.net.ServerSocket"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0

    :catch_0
    const-string v1, "isServerSocket error"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/e;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return v0
.end method

.method private static b()Ljava/net/Socket;
    .locals 4

    :try_start_0
    const-class v0, Ljava/net/Socket;

    const-class v1, Ljava/net/SocketImpl;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, Lcom/networkbench/agent/impl/socket/b/b;->c()Ljava/net/SocketImpl;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createAvalidSocket error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static c()Ljava/net/SocketImpl;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.net.SocksSocketImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createSocksSocketImpl e"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createSocketImpl()Ljava/net/SocketImpl;
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/b/b;->b:Ljava/net/SocketImplFactory;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    :try_start_0
    const-class v0, Ljava/net/Socket;

    const-class v1, Ljava/net/SocketImpl;

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/socket/b/b;->b()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v0

    :catchall_0
    :cond_1
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/b;->a(Ljava/lang/Object;)V

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/networkbench/agent/impl/socket/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Lcom/networkbench/agent/impl/socket/b/a;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/socket/b/a;-><init>(Ljava/net/SocketImpl;)V

    move-object p0, v0

    :cond_3
    return-object p0
.end method
