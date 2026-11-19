.class public abstract Lorg/teleal/cling/controlpoint/ActionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

.field protected controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    iput-object p2, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    return-void
.end method


# virtual methods
.method public createDefaultFailureMessage(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)Ljava/lang/String;
    .locals 1

    iget-object p0, p1, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    const-string p1, "Error: "

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, " (HTTP response was: "

    invoke-static {p1, p0}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/UpnpResponse;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;->createDefaultFailureMessage(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    return-void
.end method

.method public abstract failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
.end method

.method public getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    return-object p0
.end method

.method public declared-synchronized getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    iget-object v0, v0, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    iget-object v1, v0, Lorg/teleal/cling/model/meta/Action;->e:Lorg/teleal/cling/model/meta/Service;

    instance-of v2, v1, Lorg/teleal/cling/model/meta/LocalService;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lorg/teleal/cling/model/meta/LocalService;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/LocalService;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionExecutor;

    invoke-interface {v0}, Lorg/teleal/cling/model/action/ActionExecutor;->execute()V

    iget-object v0, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    iget-object v1, v0, Lorg/teleal/cling/model/action/ActionInvocation;->d:Lorg/teleal/cling/model/action/ActionException;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v3}, Lorg/teleal/cling/controlpoint/ActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;->success(Lorg/teleal/cling/model/action/ActionInvocation;)V

    return-void

    :cond_1
    instance-of v0, v1, Lorg/teleal/cling/model/meta/RemoteService;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteService;

    iget-object v0, v1, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    iget-object v2, v1, Lorg/teleal/cling/model/meta/RemoteService;->g:Ljava/net/URI;

    invoke-virtual {v0, v2}, Lorg/teleal/cling/model/meta/RemoteDevice;->t(Ljava/net/URI;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/controlpoint/ControlPoint;->a()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v2

    iget-object v4, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-interface {v2, v4, v0}, Lorg/teleal/cling/protocol/ProtocolFactory;->a(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)Lorg/teleal/cling/protocol/sync/SendingAction;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/protocol/SendingAsync;->run()V

    invoke-virtual {v2}, Lorg/teleal/cling/protocol/SendingSync;->getOutputMessage()Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;

    const-string v4, "UPNP-SEARCH"

    const-string v5, "GetControlDeviceInfo"

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v2, v3}, Lorg/teleal/cling/controlpoint/ActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    iget-object v1, v1, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDevice;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->f:Lorg/teleal/cling/model/message/UpnpHeaders;

    iget-object p0, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    iget-object p0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "GetControlDeviceInfo response failed"

    invoke-static {v4, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/teleal/cling/UpnpDescriptionTools;->a(Lorg/teleal/cling/model/message/UpnpHeaders;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, v2, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    check-cast v2, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/UpnpResponse;->b()Z

    move-result v3

    iget-object v6, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v6, v2}, Lorg/teleal/cling/controlpoint/ActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    iget-object v1, v1, Lorg/teleal/cling/model/meta/Service;->e:Lorg/teleal/cling/model/meta/Device;

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDevice;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->f:Lorg/teleal/cling/model/message/UpnpHeaders;

    iget-object p0, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    iget-object p0, p0, Lorg/teleal/cling/model/action/ActionInvocation;->a:Lorg/teleal/cling/model/meta/Action;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Action;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "GetControlDeviceInfo failed Status: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lorg/teleal/cling/model/message/UpnpResponse;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/teleal/cling/UpnpDescriptionTools;->a(Lorg/teleal/cling/model/message/UpnpHeaders;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, v6}, Lorg/teleal/cling/controlpoint/ActionCallback;->success(Lorg/teleal/cling/model/action/ActionInvocation;)V

    return-void

    :cond_4
    const-string p0, "Callback must be executed through ControlPoint"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public declared-synchronized setControlPoint(Lorg/teleal/cling/controlpoint/ControlPoint;)Lorg/teleal/cling/controlpoint/ActionCallback;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract success(Lorg/teleal/cling/model/action/ActionInvocation;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(ActionCallback) "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
