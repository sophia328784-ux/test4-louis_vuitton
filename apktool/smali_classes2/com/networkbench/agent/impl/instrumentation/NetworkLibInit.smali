.class public Lcom/networkbench/agent/impl/instrumentation/NetworkLibInit;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOkhttpVersion()Z
    .locals 6

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NetworkLibInit;->isQuoteOkhttp3()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lcom/networkbench/agent/impl/util/w;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/agent/impl/util/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/w;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/w;->b()I

    move-result v3

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/w;->c()I

    move-result v1

    const/4 v4, 0x4

    if-le v2, v4, :cond_0

    const-string v1, "Okhttp3 \u7248\u672c\u9ad8\u4e8e5,\u5c06\u4e0d\u91c7\u96c6socket\u6570\u636e.."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V

    return v0

    :cond_0
    if-ne v2, v4, :cond_3

    if-nez v3, :cond_1

    if-le v1, v0, :cond_1

    const-string v1, "Okhttp3 \u7248\u672c\u9ad8\u4e8e4.0.1,\u5c06\u4e0d\u91c7\u96c6socket\u6570\u636e.."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V

    return v0

    :cond_1
    if-ne v3, v0, :cond_2

    if-le v1, v0, :cond_2

    const-string v1, "Okhttp3 \u7248\u672c\u9ad8\u4e8e4.1.2,\u5c06\u4e0d\u91c7\u96c6socket\u6570\u636e.."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v5, 0x2

    if-lt v3, v5, :cond_3

    const-string v1, "Okhttp3 \u7248\u672c\u9ad8\u4e8e4.2.0,\u5c06\u4e0d\u91c7\u96c6socket\u6570\u636e.."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V

    return v0

    :cond_3
    const/4 v5, 0x3

    if-ne v2, v5, :cond_7

    const/16 v2, 0xd

    if-ne v3, v2, :cond_4

    if-le v1, v0, :cond_4

    const-string v1, "Okhttp3 \u7248\u672c\u9ad8\u4e8e3.13.1,\u5c06\u4e0d\u91c7\u96c6socket\u6570\u636e.."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V

    return v0

    :cond_4
    const/16 v2, 0xe

    if-ne v3, v2, :cond_5

    if-le v1, v4, :cond_5

    const-string v1, "Okhttp3 \u7248\u672c\u9ad8\u4e8e3.14.4,\u5c06\u4e0d\u91c7\u96c6socket\u6570\u636e.."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V

    return v0

    :cond_5
    const/16 v2, 0xc

    if-ne v3, v2, :cond_6

    const/4 v2, 0x6

    if-le v1, v2, :cond_6

    const-string v1, "Okhttp3 \u7248\u672c\u9ad8\u4e8e3.12.6,\u5c06\u4e0d\u91c7\u96c6socket\u6570\u636e.."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V

    return v0

    :cond_6
    const/16 v1, 0xf

    if-lt v3, v1, :cond_7

    const-string v1, "Okhttp3 \u7248\u672c\u9ad8\u4e8e3.15.X,\u5c06\u4e0d\u91c7\u96c6socket\u6570\u636e.."

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static checkOkhttpVersionForTcp()Z
    .locals 4

    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/util/w;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/w;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/w;->b()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    const-string v0, "Okhttp3 \u7248\u672c\u9ad8\u4e8e3.9"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V

    return v2

    :cond_0
    if-le v1, v3, :cond_1

    const-string v0, "Okhttp3 \u7248\u672c\u9ad8\u4e8e4\u3002\u3002\u3002\u3002"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getDefaultSocketImplType()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/net/SocketImpl;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Ljava/net/Socket;

    const-class v2, Ljava/net/SocketImpl;

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketImpl;
    :try_end_0
    .catch Lcom/networkbench/agent/impl/util/d; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :catch_0
    return-object v0
.end method

.method public static installNetworkMonitor()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NetworkLibInit;->checkOkhttpVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "installNetworkMonitor : true"

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NetworkLibInit;->installSocketImplFactoryV24()Z

    const-string v1, "install ssl network monitor:false"

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/e;->c(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "installNetworkMonitor error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;)V

    return v0
.end method

.method public static installSocketImplFactoryV24()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Ljava/net/Socket;

    const-class v2, Ljava/net/SocketImplFactory;

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketImplFactory;
    :try_end_0
    .catch Lcom/networkbench/agent/impl/util/d; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NetworkLibInit;->getDefaultSocketImplType()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    :cond_0
    instance-of v4, v1, Lcom/networkbench/agent/impl/socket/b/b;

    if-eqz v4, :cond_1

    return v3

    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    new-instance v2, Lcom/networkbench/agent/impl/socket/b/b;

    invoke-direct {v2, v1}, Lcom/networkbench/agent/impl/socket/b/b;-><init>(Ljava/net/SocketImplFactory;)V

    invoke-static {v2}, Lcom/networkbench/agent/impl/instrumentation/NetworkLibInit;->reflectivelyInstallSocketImplFactory(Ljava/net/SocketImplFactory;)Z

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    new-instance v1, Lcom/networkbench/agent/impl/socket/b/b;

    invoke-direct {v1, v2}, Lcom/networkbench/agent/impl/socket/b/b;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Ljava/net/Socket;->setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/networkbench/agent/impl/util/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return v3

    :catch_0
    :cond_3
    return v0
.end method

.method public static isQuoteOkhttp3()Z
    .locals 1

    :try_start_0
    const-class v0, Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static reflectivelyInstallSocketImplFactory(Ljava/net/SocketImplFactory;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/networkbench/agent/impl/util/d;
        }
    .end annotation

    const-class v0, Ljava/net/Socket;

    const-class v1, Ljava/net/SocketImplFactory;

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method
