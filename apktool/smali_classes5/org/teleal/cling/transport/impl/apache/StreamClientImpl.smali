.class public Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/transport/spi/StreamClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$INoneResponseAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/transport/spi/StreamClient<",
        "Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/logging/Logger;

.field public static final f:Ljava/util/HashMap;


# instance fields
.field public final a:Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

.field public final b:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

.field public final c:Lorg/apache/http/impl/client/DefaultHttpClient;

.field public final d:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lorg/teleal/cling/transport/spi/StreamClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->e:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->f:Ljava/util/HashMap;

    const-class v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$INoneResponseAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->d:Lorg/apache/http/params/HttpParams;

    iput-object p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->a:Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {p1}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->a()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {p1}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->b()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->d()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const-string v4, "http"

    const/16 v5, 0x50

    invoke-direct {v2, v4, v3, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v2, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->b:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->c()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    new-instance p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-virtual {p1}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->c()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    :cond_0
    return-void
.end method

.method public static b(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/message/UpnpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    sget-object v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$5;->a:[I

    iget-object v1, p1, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    iget-object v2, p1, Lorg/teleal/cling/model/message/UpnpRequest;->c:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    new-instance p1, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$3;

    invoke-direct {p1, v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$3;-><init>(Ljava/net/URI;)V

    invoke-static {p0}, Lcom/dynatrace/android/callback/HttpClientCallback;->i(Lorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-static {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->c(Lorg/teleal/cling/model/message/UpnpMessage;)Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object p1

    :cond_0
    new-instance p0, Lorg/apache/http/MethodNotSupportedException;

    iget-object p1, p1, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-static {p0}, Lcom/dynatrace/android/callback/HttpClientCallback;->i(Lorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-static {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->c(Lorg/teleal/cling/model/message/UpnpMessage;)Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object p1

    :cond_2
    new-instance p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$2;

    invoke-direct {p0, v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$2;-><init>(Ljava/net/URI;)V

    invoke-static {p0}, Lcom/dynatrace/android/callback/HttpClientCallback;->i(Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object p0

    :cond_3
    new-instance p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$1;

    invoke-direct {p0, v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$1;-><init>(Ljava/net/URI;)V

    invoke-static {p0}, Lcom/dynatrace/android/callback/HttpClientCallback;->i(Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object p0

    :cond_4
    new-instance p0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-static {p0}, Lcom/dynatrace/android/callback/HttpClientCallback;->i(Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-object p0
.end method

.method public static c(Lorg/teleal/cling/model/message/UpnpMessage;)Lorg/apache/http/HttpEntity;
    .locals 2

    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->e:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    const-string v0, "Preparing HTTP request entity as byte[]"

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->c()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    return-object v0

    :cond_0
    const-string v0, "Preparing HTTP request entity as string"

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "UTF-8"

    :goto_0
    invoke-direct {v1, p0, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 16

    move-object/from16 v1, p1

    const-string v0, "Content-Length: "

    const-string v2, "SOAPACTION: \""

    const-string v3, "Host: "

    const-string v4, "POST "

    iget-object v5, v1, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    check-cast v5, Lorg/teleal/cling/model/message/UpnpRequest;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Preparing HTTP request message with method \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    iget-object v5, v5, Lorg/teleal/cling/model/message/UpnpRequest;->c:Ljava/net/URI;

    invoke-virtual {v8}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\': "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->e:Ljava/util/logging/Logger;

    invoke-virtual {v9, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_0
    iget-object v10, v1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v11, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    iget-object v12, v10, Lorg/teleal/cling/model/message/UpnpHeaders;->c:Ljava/util/LinkedHashMap;

    if-nez v12, :cond_0

    invoke-virtual {v10}, Lorg/teleal/cling/model/message/UpnpHeaders;->m()V

    :cond_0
    iget-object v12, v10, Lorg/teleal/cling/model/message/UpnpHeaders;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, v10, Lorg/teleal/cling/model/message/UpnpHeaders;->c:Ljava/util/LinkedHashMap;

    if-nez v12, :cond_1

    invoke-virtual {v10}, Lorg/teleal/cling/model/message/UpnpHeaders;->m()V

    :cond_1
    iget-object v10, v10, Lorg/teleal/cling/model/message/UpnpHeaders;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/teleal/cling/model/message/header/UpnpHeader;

    iget-object v10, v10, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    move-object v10, v6

    :goto_0
    if-nez v10, :cond_3

    goto/16 :goto_3

    :cond_3
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->f:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v11, :cond_6

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v12

    :try_start_2
    new-instance v13, Ljava/net/Socket;

    invoke-direct {v13}, Ljava/net/Socket;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v14, 0x2710

    :try_start_3
    invoke-virtual {v13, v14}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v15, Ljava/net/InetSocketAddress;

    invoke-direct {v15, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v13, v15, v14}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpMessage;->c()[B

    move-result-object v12

    array-length v12, v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " HTTP/1.1\r\n"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \r\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\r\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Content-Type: text/xml; charset=\"utf-8\"\r\n"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\r\n\r\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpMessage;->c()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v13}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v13, v6

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v13, :cond_4

    :try_start_6
    invoke-virtual {v13}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :cond_4
    :goto_2
    const-string v0, "NO REPONSE WITH SOAP-ACTION : "

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/teleal/cling/model/message/StreamResponseMessage;

    invoke-direct {v2, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    if-eqz v13, :cond_5

    :try_start_7
    invoke-virtual {v13}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_5
    throw v0

    :catch_3
    :cond_6
    :goto_3
    move-object v2, v6

    :goto_4
    if-eqz v2, :cond_7

    return-object v2

    :cond_7
    const-string v2, "UPNP-SEARCH"

    const-string v0, "Sending HTTP request: "

    iget-object v3, v1, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    check-cast v3, Lorg/teleal/cling/model/message/UpnpRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :try_start_8
    invoke-static {v1, v3}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->b(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/message/UpnpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-virtual/range {p0 .. p1}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->d(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/apache/http/params/HttpParams;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    iget-object v4, v1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-static {v3, v4}, Lorg/teleal/cling/transport/impl/apache/HeaderUtil;->a(Lorg/apache/http/HttpMessage;Lorg/teleal/common/http/Headers;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object/from16 v4, p0

    iget-object v0, v4, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$4;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v3, v4}, Lcom/dynatrace/android/callback/HttpClientCallback;->c(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/StreamResponseMessage;
    :try_end_8
    .catch Lorg/apache/http/MethodNotSupportedException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object v6, v0

    goto/16 :goto_9

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto/16 :goto_8

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Sending HTTP request not supported: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/linkplay/log/LinkplayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending HTTP request not supported:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_9

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Client connection was aborted: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/linkplay/log/LinkplayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_9

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP protocol exception executing request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/linkplay/log/LinkplayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Request aborted: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/MethodNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/linkplay/log/LinkplayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_9
    return-object v6
.end method

.method public final d(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/apache/http/params/HttpParams;
    .locals 3

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iget-object v1, p1, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    check-cast v1, Lorg/teleal/cling/model/message/UpnpRequest;

    iget v1, v1, Lorg/teleal/cling/model/message/UpnpOperation;->a:I

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    :goto_0
    const-string v2, "http.protocol.version"

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget p1, p1, Lorg/teleal/cling/model/message/UpnpMessage;->a:I

    iget-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->a:Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/teleal/cling/model/ServerClientTokens;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/teleal/cling/model/ServerClientTokens;-><init>(II)V

    invoke-virtual {v1}, Lorg/teleal/cling/model/ServerClientTokens;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance p1, Lorg/apache/http/params/DefaultedHttpParams;

    iget-object p0, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->d:Lorg/apache/http/params/HttpParams;

    invoke-direct {p1, v0, p0}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    return-object p1
.end method

.method public final stop()V
    .locals 2

    sget-object v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->e:Ljava/util/logging/Logger;

    const-string v1, "Shutting down HTTP client connection manager/pool"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->b:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V

    return-void
.end method
