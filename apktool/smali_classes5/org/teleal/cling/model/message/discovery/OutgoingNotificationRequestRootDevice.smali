.class public Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestRootDevice;
.super Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/NotificationSubtype;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;-><init>(Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/NotificationSubtype;)V

    iget-object p3, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/teleal/cling/model/message/header/RootDeviceHeader;

    invoke-direct {v1}, Lorg/teleal/cling/model/message/header/RootDeviceHeader;-><init>()V

    invoke-virtual {p3, v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iget-object p3, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v1, Lorg/teleal/cling/model/message/header/USNRootDeviceHeader;

    iget-object p2, p2, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object p2, p2, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-direct {v1, p2}, Lorg/teleal/cling/model/message/header/USNRootDeviceHeader;-><init>(Lorg/teleal/cling/model/types/UDN;)V

    invoke-virtual {p3, v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    iget-object p1, p1, Lorg/teleal/cling/model/Location;->a:Lorg/teleal/cling/model/NetworkAddress;

    iget-object p2, p1, Lorg/teleal/cling/model/NetworkAddress;->c:[B

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object p2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance p3, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    iget-object p1, p1, Lorg/teleal/cling/model/NetworkAddress;->c:[B

    invoke-direct {p3, p1}, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;-><init>([B)V

    invoke-virtual {p0, p2, p3}, Lorg/teleal/cling/model/message/UpnpHeaders;->h(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    :cond_0
    return-void
.end method
