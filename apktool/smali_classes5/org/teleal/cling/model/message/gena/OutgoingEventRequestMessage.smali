.class public Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;
.super Lorg/teleal/cling/model/message/StreamRequestMessage;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/gena/GENASubscription;Ljava/net/URL;)V
    .locals 2

    .line 81
    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->c()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    .line 82
    monitor-enter p1

    .line 83
    :try_start_0
    iget-object v1, p1, Lorg/teleal/cling/model/gena/GENASubscription;->f:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 84
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 85
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;-><init>(Lorg/teleal/cling/model/gena/GENASubscription;Ljava/net/URL;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/util/Collection;)V

    return-void

    :catchall_0
    move-exception p0

    .line 86
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public constructor <init>(Lorg/teleal/cling/model/gena/GENASubscription;Ljava/net/URL;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/gena/GENASubscription;",
            "Ljava/net/URL;",
            "Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;",
            "Ljava/util/Collection<",
            "Lorg/teleal/cling/model/state/StateVariableValue;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-direct {v0, v1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest;)V

    iget-object p2, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-direct {v1}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iget-object p2, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/teleal/cling/model/message/header/NTEventHeader;

    invoke-direct {v1}, Lorg/teleal/cling/model/message/header/NTEventHeader;-><init>()V

    invoke-virtual {p2, v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iget-object p2, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/teleal/cling/model/message/header/NTSHeader;

    sget-object v2, Lorg/teleal/cling/model/types/NotificationSubtype;->PROPCHANGE:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/header/NTSHeader;-><init>(Lorg/teleal/cling/model/types/NotificationSubtype;)V

    invoke-virtual {p2, v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iget-object p2, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iget-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object p2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SEQ:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/teleal/cling/model/message/header/EventSequenceHeader;

    iget-wide v1, p3, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->a:J

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/message/header/EventSequenceHeader;-><init>(J)V

    invoke-virtual {p1, p2, v0}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iput-object p4, p0, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->f:Ljava/util/Collection;

    return-void
.end method
