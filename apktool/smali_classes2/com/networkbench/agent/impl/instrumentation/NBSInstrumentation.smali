.class public final Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentation;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static connectionWrapper(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .locals 1

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpsURLConnectionExtension;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->m(Ljava/net/HttpURLConnection;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/instrumentation/NBSHttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->m(Ljava/net/HttpURLConnection;)V

    return-object v0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .locals 4

    :try_start_0
    const-string v0, "URLConnection openConnection gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentation;->connectionWrapper(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentation;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NBSInstrumentation openConnection() has an error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public static openConnectionWithProxy(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .locals 4

    :try_start_0
    const-string v0, "URLConnection openConnectionWithProxy gather  begin !!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentation;->connectionWrapper(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSInstrumentation;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NBSInstrumentation openConnectionWithProxy() has an error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-object p0
.end method
