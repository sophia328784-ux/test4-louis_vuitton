.class public Lorg/teleal/cling/model/meta/RemoteDevice;
.super Lorg/teleal/cling/model/meta/Device;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/meta/Device<",
        "Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;",
        "Lorg/teleal/cling/model/meta/RemoteDevice;",
        "Lorg/teleal/cling/model/meta/RemoteService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;[Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 29
    invoke-direct/range {p0 .. p7}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 21
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/Icon;

    move-result-object p4

    filled-new-array {p5}, [Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object p5

    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/RemoteService;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 22
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/Icon;

    move-result-object p4

    filled-new-array {p5}, [Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object p5

    filled-new-array {p6}, [Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object p6

    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 23
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/Icon;

    move-result-object p4

    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;[Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 24
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/Icon;

    move-result-object p4

    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 17
    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/RemoteService;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    filled-new-array {p4}, [Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v5

    filled-new-array {p5}, [Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 25
    filled-new-array {p5}, [Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object p5

    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/RemoteService;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 26
    filled-new-array {p5}, [Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object p5

    filled-new-array {p6}, [Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object p6

    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 27
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;[Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .line 28
    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 19
    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/RemoteService;[Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 20
    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/teleal/cling/model/Namespace;)[Lorg/teleal/cling/model/resource/Resource;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/teleal/cling/model/meta/Device;->f:[Lorg/teleal/cling/model/meta/Service;

    if-eqz v2, :cond_0

    check-cast v2, [Lorg/teleal/cling/model/meta/RemoteService;

    goto :goto_0

    :cond_0
    new-array v2, v1, [Lorg/teleal/cling/model/meta/RemoteService;

    :goto_0
    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    new-instance v6, Lorg/teleal/cling/model/resource/ServiceEventCallbackResource;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Lorg/teleal/cling/model/Namespace;->b(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/cb.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/teleal/cling/model/resource/ServiceEventCallbackResource;-><init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/RemoteService;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->k()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->g:[Lorg/teleal/cling/model/meta/Device;

    if-eqz p0, :cond_3

    check-cast p0, [Lorg/teleal/cling/model/meta/RemoteDevice;

    goto :goto_3

    :cond_3
    new-array p0, v1, [Lorg/teleal/cling/model/meta/RemoteDevice;

    :goto_3
    array-length v2, p0

    :goto_4
    if-ge v1, v2, :cond_5

    aget-object v3, p0, v1

    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v3, p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->a(Lorg/teleal/cling/model/Namespace;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/teleal/cling/model/resource/Resource;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/teleal/cling/model/resource/Resource;

    return-object p0
.end method

.method public final c(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/Device;
    .locals 0

    invoke-static {p1, p0}, Lorg/teleal/cling/model/meta/Device;->b(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/meta/RemoteDevice;

    return-object p0
.end method

.method public final i()[Lorg/teleal/cling/model/meta/Device;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->g:[Lorg/teleal/cling/model/meta/Device;

    if-eqz p0, :cond_0

    check-cast p0, [Lorg/teleal/cling/model/meta/RemoteDevice;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lorg/teleal/cling/model/meta/RemoteDevice;

    return-object p0
.end method

.method public final j()[Lorg/teleal/cling/model/meta/Service;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->f:[Lorg/teleal/cling/model/meta/Service;

    if-eqz p0, :cond_0

    check-cast p0, [Lorg/teleal/cling/model/meta/RemoteService;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lorg/teleal/cling/model/meta/RemoteService;

    return-object p0
.end method

.method public final bridge synthetic o(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;Ljava/util/ArrayList;)Lorg/teleal/cling/model/meta/Device;
    .locals 0

    check-cast p6, [Lorg/teleal/cling/model/meta/RemoteService;

    invoke-virtual/range {p0 .. p7}, Lorg/teleal/cling/model/meta/RemoteDevice;->s(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;Ljava/util/ArrayList;)Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/meta/Service;
    .locals 0

    new-instance p0, Lorg/teleal/cling/model/meta/RemoteService;

    invoke-direct/range {p0 .. p7}, Lorg/teleal/cling/model/meta/RemoteService;-><init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)V

    return-object p0
.end method

.method public final q(I)[Lorg/teleal/cling/model/meta/Service;
    .locals 0

    new-array p0, p1, [Lorg/teleal/cling/model/meta/RemoteService;

    return-object p0
.end method

.method public final s(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;Ljava/util/ArrayList;)Lorg/teleal/cling/model/meta/RemoteDevice;
    .locals 2

    move-object v0, p0

    new-instance p0, Lorg/teleal/cling/model/meta/RemoteDevice;

    move-object v1, p1

    new-instance p1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-direct {p1, v1, v0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)V

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {p7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p7

    check-cast p7, [Lorg/teleal/cling/model/meta/RemoteDevice;

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    :goto_0
    invoke-direct/range {p0 .. p7}, Lorg/teleal/cling/model/meta/RemoteDevice;-><init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;[Lorg/teleal/cling/model/meta/RemoteDevice;)V

    return-object p0
.end method

.method public final t(Ljava/net/URI;)Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lorg/teleal/cling/model/meta/Device;->d:Lorg/teleal/cling/model/meta/DeviceDetails;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/teleal/cling/model/meta/DeviceDetails;->a:Ljava/net/URL;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lorg/teleal/common/util/URIUtil;->b(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    if-eqz p0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object p0, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->c:Ljava/net/URL;

    invoke-static {p0, p1}, Lorg/teleal/common/util/URIUtil;->b(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "UPNP-SEARCH"

    const-string p1, "descriptionURL is null."

    invoke-static {p0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
