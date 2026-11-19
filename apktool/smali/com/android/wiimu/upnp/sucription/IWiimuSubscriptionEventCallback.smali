.class public interface abstract Lcom/android/wiimu/upnp/sucription/IWiimuSubscriptionEventCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract ended(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V
.end method

.method public abstract established(Lorg/teleal/cling/model/gena/GENASubscription;)V
.end method

.method public abstract eventReceived(Lorg/teleal/cling/model/gena/GENASubscription;)V
.end method

.method public abstract eventsMissed(Lorg/teleal/cling/model/gena/GENASubscription;I)V
.end method

.method public abstract failed(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V
.end method
