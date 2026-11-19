.class public final Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;
.super Lcom/networkbench/agent/impl/socket/a;
.source "SourceFile"


# static fields
.field private static context:Ljavax/net/ssl/SSLSocketFactory; = null

.field private static installed:Z = false

.field private static parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# instance fields
.field private delegate:Ljavax/net/ssl/SSLSocketFactory;

.field private sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/socket/a;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p1}, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->a(Ljavax/net/ssl/SSLSocketFactory;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-void
.end method

.method private static a(Ljavax/net/ssl/SSLSocketFactory;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/ad;->b(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "sSLParametersImpl == null"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->c()Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object p0

    :cond_0
    sput-object p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-object p0
.end method

.method private static a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .locals 3

    .line 35
    :try_start_0
    const-class v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    const-string v1, "clone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 37
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 38
    :catchall_0
    sget-object p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-object p0
.end method

.method public static b()Z
    .locals 6

    sget-boolean v0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->installed:Z

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;

    invoke-direct {v1, v0}, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->createSocket()Ljava/net/Socket;

    move-result-object v3

    const-string v4, "localhost"

    const/16 v5, 0x1aef

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sput-object v0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->context:Ljavax/net/ssl/SSLSocketFactory;

    sput-boolean v2, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->installed:Z
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    :catchall_0
    const/4 v0, 0x0

    return v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private static c()Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    const-string v2, "getDefault"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "createAvalidSSLParameters is error:"

    invoke-interface {v2, v3, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public final createSocket()Ljava/net/Socket;
    .locals 1

    .line 20
    new-instance v0, Lcom/networkbench/agent/impl/socket/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-static {p0}, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/socket/c;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/networkbench/agent/impl/socket/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-static {p0}, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lcom/networkbench/agent/impl/socket/c;-><init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6

    .line 17
    new-instance v0, Lcom/networkbench/agent/impl/socket/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-static {p0}, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/socket/c;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 18
    new-instance v0, Lcom/networkbench/agent/impl/socket/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-static {p0}, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lcom/networkbench/agent/impl/socket/c;-><init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6

    .line 19
    new-instance v0, Lcom/networkbench/agent/impl/socket/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-static {p0}, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/socket/c;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/networkbench/agent/impl/socket/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-static {p0}, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->a(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/socket/d;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public final getDefaultCipherSuites()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/CustomSSLSocketFactoryOld;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
