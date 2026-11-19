.class Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$2;
.super Lorg/apache/http/client/methods/HttpGet;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public final getMethod()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
