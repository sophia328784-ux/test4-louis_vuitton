.class public Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
.super Lorg/teleal/cling/model/meta/DeviceIdentity;
.source "SourceFile"


# instance fields
.field public final c:Ljava/net/URL;

.field public final d:[B

.field public final e:Ljava/net/InetAddress;

.field public final f:Lorg/teleal/cling/model/message/UpnpHeaders;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;)V
    .locals 10

    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/teleal/cling/model/message/header/USNRootDeviceHeader;

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast v0, Lorg/teleal/cling/model/types/UDN;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    const-class v3, Lorg/teleal/cling/model/message/header/UDNHeader;

    invoke-virtual {v0, v1, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast v0, Lorg/teleal/cling/model/types/UDN;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    const-class v3, Lorg/teleal/cling/model/message/header/DeviceUSNHeader;

    invoke-virtual {v0, v1, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast v0, Lorg/teleal/cling/model/types/NamedDeviceType;

    iget-object v0, v0, Lorg/teleal/cling/model/types/NamedDeviceType;->a:Lorg/teleal/cling/model/types/UDN;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    const-class v3, Lorg/teleal/cling/model/message/header/ServiceUSNHeader;

    invoke-virtual {v0, v1, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast v0, Lorg/teleal/cling/model/types/NamedServiceType;

    iget-object v0, v0, Lorg/teleal/cling/model/types/NamedServiceType;->a:Lorg/teleal/cling/model/types/UDN;

    goto :goto_0

    :cond_3
    move-object v4, v2

    :goto_1
    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    invoke-virtual {v0, v1, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_2
    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/LocationHeader;

    invoke-virtual {v0, v1, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/LocationHeader;

    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Lorg/teleal/common/http/Headers;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/teleal/common/http/Headers;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v1, Lorg/teleal/cling/UpnpDescriptionTools;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "UPNP-SEARCH"

    const-string v3, "IncomingNotification Description Port set normal port."

    invoke-static {v1, v3}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "59152"

    const-string v3, "49152"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    move-object v6, v2

    :goto_5
    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    invoke-virtual {v0, v1, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [B

    :cond_7
    move-object v7, v2

    iget-object v8, p1, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->f:Ljava/net/InetAddress;

    iget-object v9, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;Ljava/net/URL;[BLjava/net/InetAddress;Lorg/teleal/cling/model/message/UpnpHeaders;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;)V
    .locals 7

    .line 196
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->h()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    .line 197
    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    .line 198
    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    invoke-virtual {v0, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, v0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    .line 200
    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 201
    :goto_0
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->g()Ljava/net/URL;

    move-result-object v3

    .line 202
    iget-object v4, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    .line 203
    sget-object v5, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v6, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    invoke-virtual {v4, v5, v6}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    if-eqz v4, :cond_1

    .line 204
    iget-object v2, v4, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    .line 205
    check-cast v2, [B

    :cond_1
    move-object v4, v2

    .line 206
    iget-object v5, p1, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->f:Ljava/net/InetAddress;

    .line 207
    iget-object v6, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    move-object v2, v0

    move-object v0, p0

    .line 208
    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;Ljava/net/URL;[BLjava/net/InetAddress;Lorg/teleal/cling/model/message/UpnpHeaders;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;Ljava/net/URL;[BLjava/net/InetAddress;Lorg/teleal/cling/model/message/UpnpHeaders;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/model/meta/DeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;)V

    .line 192
    iput-object p3, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    .line 193
    iput-object p4, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->d:[B

    .line 194
    iput-object p5, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->e:Ljava/net/InetAddress;

    .line 195
    iput-object p6, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->f:Lorg/teleal/cling/model/message/UpnpHeaders;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)V
    .locals 7

    .line 185
    iget-object v2, p2, Lorg/teleal/cling/model/meta/DeviceIdentity;->b:Ljava/lang/Integer;

    .line 186
    iget-object v3, p2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    .line 187
    iget-object v4, p2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->d:[B

    .line 188
    iget-object v5, p2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->e:Ljava/net/InetAddress;

    .line 189
    iget-object v6, p2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->f:Lorg/teleal/cling/model/message/UpnpHeaders;

    move-object v0, p0

    move-object v1, p1

    .line 190
    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;Ljava/net/URL;[BLjava/net/InetAddress;Lorg/teleal/cling/model/message/UpnpHeaders;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    sget-boolean v0, Lorg/teleal/cling/model/ModelUtil;->a:Z

    iget-object v1, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    const-string v2, ", Descriptor: "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "(RemoteDeviceIdentity) UDN: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") UDN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
