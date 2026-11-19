.class public interface abstract Lorg/teleal/cling/transport/Router;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Lorg/teleal/cling/protocol/ProtocolFactory;
.end method

.method public abstract b(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
.end method

.method public abstract c(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
.end method

.method public abstract d(Ljava/net/InetAddress;)Ljava/util/List;
.end method

.method public abstract e()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
.end method

.method public abstract f(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;)V
.end method

.method public abstract send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V
.end method

.method public abstract shutdown()V
.end method
