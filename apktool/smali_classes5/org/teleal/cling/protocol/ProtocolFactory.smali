.class public interface abstract Lorg/teleal/cling/protocol/ProtocolFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)Lorg/teleal/cling/protocol/sync/SendingAction;
.end method

.method public abstract b(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingSubscribe;
.end method

.method public abstract c(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;
.end method

.method public abstract d(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;
.end method

.method public abstract e(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/protocol/ReceivingSync;
.end method

.method public abstract f(Lorg/teleal/cling/model/message/header/UpnpHeader;)Lorg/teleal/cling/protocol/async/SendingSearch;
.end method
