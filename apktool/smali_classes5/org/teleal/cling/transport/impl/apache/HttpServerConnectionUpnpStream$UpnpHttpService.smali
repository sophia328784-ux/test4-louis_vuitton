.class public Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;
.super Lorg/apache/http/protocol/HttpService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpnpHttpService"
.end annotation


# instance fields
.field public final synthetic a:Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->a:Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    return-void
.end method


# virtual methods
.method public final doService(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 7

    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->b()Ljava/util/logging/Logger;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processing HTTP request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    sget-object v0, Lk/a;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-static {v0}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->a(Ljava/lang/String;)Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v3

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    iget-object v1, v2, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v1

    check-cast v3, Lorg/teleal/cling/model/message/UpnpRequest;

    iget-object v3, v3, Lorg/teleal/cling/model/message/UpnpRequest;->b:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    sget-object v4, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Created new request message: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v0

    check-cast v1, Lorg/teleal/cling/model/message/UpnpRequest;

    iput v0, v1, Lorg/teleal/cling/model/message/UpnpOperation;->a:I

    new-instance v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-static {p1}, Lorg/teleal/cling/transport/impl/apache/HeaderUtil;->b(Lorg/apache/http/HttpMessage;)Lorg/teleal/common/http/Headers;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    iput-object v0, v2, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    const-string v1, "Request did not contain entity body"

    const-string v3, "UTF-8"

    if-eqz v0, :cond_5

    const-string v0, "Request contains entity body, setting on UPnP message"

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/common/io/IO;->a(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, v2, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v5, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-virtual {v0, v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast v0, Lorg/teleal/common/util/MimeType;

    iget-object v0, v0, Lorg/teleal/common/util/MimeType;->a:Ljava/lang/String;

    sget-object v4, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->c:Lorg/teleal/common/util/MimeType;

    iget-object v4, v4, Lorg/teleal/common/util/MimeType;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const-string v0, "Request contains textual entity body, converting then setting string on message"

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/UpnpMessage;->e()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/UpnpMessage;->e()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-direct {v1, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, v2, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object v1, v2, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    array-length v0, p1

    if-lez v0, :cond_3

    const-string v0, "Request contains binary entity body, setting bytes on message"

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object v0, v2, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object p1, v2, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {p3, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    throw p0

    :cond_5
    invoke-virtual {p3, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_2
    :try_start_2
    iget-object p1, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->a:Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    invoke-virtual {p1, v2}, Lorg/teleal/cling/transport/spi/UpnpStream;->process(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_7

    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending HTTP response message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    new-instance v2, Lorg/apache/http/ProtocolVersion;

    check-cast v0, Lorg/teleal/cling/model/message/UpnpResponse;

    iget v4, v0, Lorg/teleal/cling/model/message/UpnpOperation;->a:I

    const-string v5, "HTTP"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v4}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    iget v4, v0, Lorg/teleal/cling/model/message/UpnpResponse;->b:I

    iget-object v0, v0, Lorg/teleal/cling/model/message/UpnpResponse;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v0}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/StatusLine;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response status line: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    new-instance v0, Lorg/apache/http/params/DefaultedHttpParams;

    iget-object v1, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->a:Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    iget-object v1, v1, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, p3, v1}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    iget-object p3, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-static {p2, p3}, Lorg/teleal/cling/transport/impl/apache/HeaderUtil;->a(Lorg/apache/http/HttpMessage;Lorg/teleal/common/http/Headers;)V

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->f()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p1, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->c()[B

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {p2, p3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->f()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p1, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    new-instance p3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_3

    :cond_7
    const-string v0, "Sending HTTP response: 404"

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/16 p3, 0x194

    invoke-interface {p2, p3}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    :cond_8
    :goto_3
    iget-object p0, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->a:Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    invoke-static {p0, p1}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$100(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Lorg/teleal/cling/model/message/StreamResponseMessage;)V

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->b()Ljava/util/logging/Logger;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception occured during UPnP stream processing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/teleal/common/util/Exceptions;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p3, v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    const-string v0, "Sending HTTP response: 500"

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/16 p3, 0x1f4

    invoke-interface {p2, p3}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    iget-object p0, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->a:Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    invoke-static {p0, p1}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$000(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Method not supported by UPnP stack: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/http/MethodNotSupportedException;

    const-string p1, "Method not supported: "

    invoke-static {p1, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    const-string p1, "Invalid request URI: "

    const-string p2, ": "

    invoke-static {p1, v1, p2}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1}, Ld21;->i(Ljava/lang/IllegalArgumentException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->b()Ljava/util/logging/Logger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p2, Lorg/apache/http/HttpException;

    invoke-direct {p2, p1, p0}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
