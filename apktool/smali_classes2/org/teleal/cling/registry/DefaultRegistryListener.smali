.class public Lorg/teleal/cling/registry/DefaultRegistryListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/registry/RegistryListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterShutdown()V
    .locals 0

    return-void
.end method

.method public beforeShutdown(Lorg/teleal/cling/registry/Registry;)V
    .locals 0

    return-void
.end method

.method public deviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0

    return-void
.end method

.method public deviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0

    return-void
.end method

.method public localDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 2

    sget-object v0, Lorg/teleal/cling/protocol/UpnpUDNManager;->c:Lorg/teleal/cling/protocol/UpnpUDNManager;

    iget-object v1, p2, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/protocol/UpnpUDNManager;->e(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->deviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public remoteDeviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->deviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public remoteDeviceDiscoveryFailed(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public remoteDeviceDiscoveryStarted(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0

    return-void
.end method

.method public remoteDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 2

    sget-object v0, Lorg/teleal/cling/protocol/UpnpUDNManager;->c:Lorg/teleal/cling/protocol/UpnpUDNManager;

    iget-object v1, p2, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/protocol/UpnpUDNManager;->e(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->deviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public remoteDeviceUpdated(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0

    sget-object p0, Lorg/teleal/cling/protocol/UpnpUDNManager;->c:Lorg/teleal/cling/protocol/UpnpUDNManager;

    iget-object p1, p2, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast p1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object p1, p1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {p1}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/teleal/cling/protocol/UpnpUDNManager;->a(Ljava/lang/String;)V

    return-void
.end method
