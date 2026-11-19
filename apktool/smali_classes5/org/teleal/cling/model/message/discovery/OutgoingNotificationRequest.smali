.class public abstract Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;
.super Lorg/teleal/cling/model/message/OutgoingDatagramMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/OutgoingDatagramMessage<",
        "Lorg/teleal/cling/model/message/UpnpRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/NotificationSubtype;)V
    .locals 3

    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;)V

    const-string v1, "239.255.255.250"

    sget-boolean v2, Lorg/teleal/cling/model/ModelUtil;->a:Z

    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x76c

    invoke-direct {p0, v0, v1, v2}, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest;Ljava/net/InetAddress;I)V

    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    iget-object p2, p2, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object p2, p2, Lorg/teleal/cling/model/meta/DeviceIdentity;->b:Ljava/lang/Integer;

    invoke-direct {v2, p2}, Lorg/teleal/cling/model/message/header/MaxAgeHeader;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iget-object p2, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/teleal/cling/model/message/header/LocationHeader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/Location;->a()Ljava/net/URL;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/teleal/cling/model/message/header/LocationHeader;-><init>(Ljava/net/URL;)V

    invoke-virtual {p2, v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iget-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object p2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/teleal/cling/model/message/header/ServerHeader;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iget-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object p2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v0, Lorg/teleal/cling/model/message/header/HostHeader;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/header/HostHeader;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object p1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance p2, Lorg/teleal/cling/model/message/header/NTSHeader;

    invoke-direct {p2, p3}, Lorg/teleal/cling/model/message/header/NTSHeader;-><init>(Lorg/teleal/cling/model/types/NotificationSubtype;)V

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method
