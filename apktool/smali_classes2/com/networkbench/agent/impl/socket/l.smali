.class public final Lcom/networkbench/agent/impl/socket/l;
.super Ljavax/net/ssl/SSLContextSpi;
.source "SourceFile"


# static fields
.field private static a:[Ljava/lang/reflect/Method; = null

.field private static b:Z = false

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3

.field private static final h:I = 0x4

.field private static final i:I = 0x5

.field private static final j:I = 0x6

.field private static final k:I = 0x7


# instance fields
.field private c:Ljavax/net/ssl/SSLContextSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "engineCreateSSLEngine"

    const-class v1, Ljavax/net/ssl/SSLContextSpi;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/reflect/Method;

    sput-object v2, Lcom/networkbench/agent/impl/socket/l;->a:[Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v3

    sget-object v2, Lcom/networkbench/agent/impl/socket/l;->a:[Ljava/lang/reflect/Method;

    const-class v5, Ljava/lang/String;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v2, v5

    sget-object v0, Lcom/networkbench/agent/impl/socket/l;->a:[Ljava/lang/reflect/Method;

    const-string v2, "engineGetClientSessionContext"

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v0, v6

    sget-object v0, Lcom/networkbench/agent/impl/socket/l;->a:[Ljava/lang/reflect/Method;

    const-string v2, "engineGetServerSessionContext"

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v0, v6

    sget-object v0, Lcom/networkbench/agent/impl/socket/l;->a:[Ljava/lang/reflect/Method;

    const-string v2, "engineGetServerSocketFactory"

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v0, v6

    sget-object v0, Lcom/networkbench/agent/impl/socket/l;->a:[Ljava/lang/reflect/Method;

    const-string v2, "engineGetSocketFactory"

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v0, v6

    sget-object v0, Lcom/networkbench/agent/impl/socket/l;->a:[Ljava/lang/reflect/Method;

    const-string v2, "engineInit"

    const-class v6, [Ljavax/net/ssl/KeyManager;

    const-class v7, [Ljavax/net/ssl/TrustManager;

    const-class v8, Ljava/security/SecureRandom;

    filled-new-array {v6, v7, v8}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v0, Lcom/networkbench/agent/impl/socket/l;->a:[Ljava/lang/reflect/Method;

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v6, v0, v2

    if-eqz v6, :cond_0

    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/networkbench/agent/impl/socket/l;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/socket/l;-><init>()V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/socket/l;->engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, v4, v3}, Lcom/networkbench/agent/impl/socket/l;->engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/socket/l;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/socket/l;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/socket/l;->engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/socket/l;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v4, v4, v4}, Lcom/networkbench/agent/impl/socket/l;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    sput-boolean v5, Lcom/networkbench/agent/impl/socket/l;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    sput-boolean v3, Lcom/networkbench/agent/impl/socket/l;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLContextSpi;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/socket/l;->c:Ljavax/net/ssl/SSLContextSpi;

    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLContextSpi;)Lcom/networkbench/agent/impl/socket/l;
    .locals 1

    .line 70
    sget-boolean v0, Lcom/networkbench/agent/impl/socket/l;->b:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/networkbench/agent/impl/socket/l;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/socket/l;-><init>(Ljavax/net/ssl/SSLContextSpi;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private varargs a(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/l;->c:Ljavax/net/ssl/SSLContextSpi;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/socket/l;->a:[Ljava/lang/reflect/Method;

    aget-object p1, v0, p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of p2, p1, Ljava/lang/Exception;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_1
    new-instance p1, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    check-cast p1, Ljava/lang/Exception;

    throw p1

    :cond_3
    new-instance p1, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 72
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/networkbench/agent/impl/socket/l;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 73
    new-instance p1, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p0

    .line 74
    throw p0

    :catch_1
    move-exception p0

    .line 75
    throw p0
.end method

.method public static a()Z
    .locals 1

    .line 69
    sget-boolean v0, Lcom/networkbench/agent/impl/socket/l;->b:Z

    return v0
.end method

.method private varargs b(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/socket/l;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p1, Lcom/networkbench/agent/impl/socket/a/a;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/socket/a/a;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 2

    const/4 v0, 0x0

    .line 16
    new-array v1, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/socket/l;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLEngine;

    return-object p0
.end method

.method public final engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/networkbench/agent/impl/socket/l;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLEngine;

    return-object p0
.end method

.method public final engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/l;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSessionContext;

    return-object p0
.end method

.method public final engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/l;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSessionContext;

    return-object p0
.end method

.method public final engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/l;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLServerSocketFactory;

    return-object p0
.end method

.method public final engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/networkbench/agent/impl/socket/l;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSocketFactory;

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactory;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object p0

    :catch_0
    move-exception p0

    throw p0
.end method

.method public final engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/socket/l;->a([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/l;->c:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/l;->c:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/l;->c:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
