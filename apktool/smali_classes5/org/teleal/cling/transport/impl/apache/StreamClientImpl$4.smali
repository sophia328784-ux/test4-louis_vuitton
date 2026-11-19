.class Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler<",
        "Lorg/teleal/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# virtual methods
.method public final handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 5

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    sget-object v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->e:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received HTTP response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v1, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(ILjava/lang/String;)V

    new-instance p0, Lorg/teleal/cling/model/message/StreamResponseMessage;

    invoke-direct {p0, v1}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    new-instance v1, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-static {p1}, Lorg/teleal/cling/transport/impl/apache/HeaderUtil;->b(Lorg/apache/http/HttpMessage;)Lorg/teleal/common/http/Headers;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v1, Lorg/teleal/common/util/MimeType;

    iget-object v1, v1, Lorg/teleal/common/util/MimeType;->a:Ljava/lang/String;

    sget-object v2, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->c:Lorg/teleal/common/util/MimeType;

    iget-object v2, v2, Lorg/teleal/common/util/MimeType;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    const-string v1, "HTTP response message contains text entity"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    return-object p0

    :cond_2
    const-string v1, "HTTP response message contains binary entity"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object p1

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    :cond_3
    :goto_1
    return-object p0
.end method
