.class public Lcom/networkbench/agent/impl/okhttp3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Z

.field public static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/networkbench/agent/impl/okhttp3/d;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/okhttp3/d;->c:Ljava/util/ArrayList;

    const-string v1, "com.RNFetchBlob.Response.RNFetchBlobFileResp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/networkbench/agent/impl/okhttp3/d;->c:Ljava/util/ArrayList;

    const-string v1, "com.facebook.react.modules.network.ProgressResponseBody"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/networkbench/agent/impl/okhttp3/d;->c:Ljava/util/ArrayList;

    const-string v1, "com.ReactNativeBlobUtil.Response.ReactNativeBlobUtilFileResp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lokhttp3/OkHttpClient;
    .locals 3

    .line 77
    new-instance v0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;-><init>()V

    .line 78
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/okhttp3/d;->b()Z

    move-result v2

    iput-boolean v2, v1, Lcom/networkbench/agent/impl/util/r;->d:Z

    .line 79
    invoke-static {v0}, Lcom/networkbench/agent/impl/okhttp3/d;->a(Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;)Lokhttp3/OkHttpClient;
    .locals 2

    .line 85
    sget-boolean v0, Lcom/networkbench/agent/impl/okhttp3/d;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/okhttp3/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)V

    sget-object v1, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpListener;->FACTORY:Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    iput-object v1, v0, Lokhttp3/OkHttpClient$Builder;->e:Lokhttp3/EventListener$Factory;

    .line 89
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 90
    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->setClient(Lokhttp3/OkHttpClient;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 91
    :catch_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/okhttp3/d;->b(Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/okhttp3/d;->b(Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/okhttp3/d;->b()Z

    move-result v1

    iput-boolean v1, v0, Lcom/networkbench/agent/impl/util/r;->d:Z

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/networkbench/agent/impl/util/r;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;-><init>()V

    new-instance v1, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;-><init>()V

    sget-boolean v2, Lcom/networkbench/agent/impl/okhttp3/d;->b:Z

    if-eqz v2, :cond_0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/okhttp3/d;->a(Lokhttp3/OkHttpClient$Builder;Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Lokhttp3/EventListener$Factory;

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->setClient(Lokhttp3/OkHttpClient;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/okhttp3/d;->b(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catch_0
    :try_start_2
    invoke-static {p0}, Lcom/networkbench/agent/impl/okhttp3/d;->b(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/networkbench/agent/impl/okhttp3/d;->b(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/okhttp3/d;->b(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static a(Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;)Z
    .locals 0

    .line 80
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lokhttp3/OkHttpClient$Builder;Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;)Z
    .locals 3

    const/4 v0, 0x0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "eventListenerFactory"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/EventListener$Factory;

    .line 84
    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/okhttp3/tcp/NBSHttpTcpFactory;->setFactory(Lokhttp3/EventListener$Factory;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method

.method private static b(Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;)Lokhttp3/OkHttpClient;
    .locals 2

    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)V

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    invoke-virtual {p0, v1}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->setClient(Lokhttp3/OkHttpClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0}, Lokhttp3/OkHttpClient;-><init>()V

    return-object p0
.end method

.method public static b(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient;
    .locals 2

    .line 24
    new-instance v0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iget-object v1, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->setClient(Lokhttp3/OkHttpClient;)V

    return-object v1
.end method

.method private static b()Z
    .locals 1

    .line 23
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NetworkLibInit;->checkOkhttpVersionForTcp()Z

    move-result v0

    return v0
.end method
