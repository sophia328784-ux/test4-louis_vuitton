.class public Lorg/teleal/cling/controlpoint/ControlPointImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/controlpoint/ControlPoint;


# instance fields
.field public final a:Lorg/teleal/cling/UpnpServiceConfiguration;

.field public final b:Lorg/teleal/cling/protocol/ProtocolFactory;

.field public final c:Lorg/teleal/cling/registry/Registry;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/controlpoint/ControlPointImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;Lorg/teleal/cling/registry/Registry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->d:I

    iput-object p1, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    iput-object p2, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->b:Lorg/teleal/cling/protocol/ProtocolFactory;

    iput-object p3, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->c:Lorg/teleal/cling/registry/Registry;

    return-void
.end method


# virtual methods
.method public final a()Lorg/teleal/cling/protocol/ProtocolFactory;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->b:Lorg/teleal/cling/protocol/ProtocolFactory;

    return-object p0
.end method

.method public final b()Lorg/teleal/cling/registry/Registry;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->c:Lorg/teleal/cling/registry/Registry;

    return-object p0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v1, v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    const-string v1, "RSSI: "

    invoke-static {v0, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "App send upnpSearch Request."

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPNP-SEARCH"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lj/a;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Lorg/teleal/cling/model/message/header/STAllHeader;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/header/STAllHeader;-><init>()V

    sget v1, Lorg/teleal/cling/model/message/header/MXHeader;->c:I

    iget-object v1, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->m()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->b:Lorg/teleal/cling/protocol/ProtocolFactory;

    invoke-interface {v2, v0}, Lorg/teleal/cling/protocol/ProtocolFactory;->f(Lorg/teleal/cling/model/message/header/UpnpHeader;)Lorg/teleal/cling/protocol/async/SendingSearch;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ControlPointImpl;->d()V

    return-void
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->d:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->d:I

    const-string v0, "UPNP-SEARCH"

    const-string v1, "send searchDMS"

    invoke-static {v0, v1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/teleal/cling/model/message/header/DMSAllHeader;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/header/DMSAllHeader;-><init>()V

    sget v1, Lorg/teleal/cling/model/message/header/MXHeader;->c:I

    iget-object v1, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->m()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->b:Lorg/teleal/cling/protocol/ProtocolFactory;

    invoke-interface {p0, v0}, Lorg/teleal/cling/protocol/ProtocolFactory;->f(Lorg/teleal/cling/model/message/header/UpnpHeader;)Lorg/teleal/cling/protocol/async/SendingSearch;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lj/a;->a:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lorg/teleal/cling/model/message/header/STCustomHeader;

    invoke-direct {v3, v2}, Lorg/teleal/cling/model/message/header/STCustomHeader;-><init>(Ljava/lang/String;)V

    sget v2, Lorg/teleal/cling/model/message/header/MXHeader;->c:I

    iget-object v2, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->m()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->b:Lorg/teleal/cling/protocol/ProtocolFactory;

    invoke-interface {v4, v3}, Lorg/teleal/cling/protocol/ProtocolFactory;->f(Lorg/teleal/cling/model/message/header/UpnpHeader;)Lorg/teleal/cling/protocol/async/SendingSearch;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ControlPointImpl;->d()V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ControlPointImpl;->c()V

    return-void
.end method

.method public final getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/controlpoint/ControlPointImpl;->a:Lorg/teleal/cling/UpnpServiceConfiguration;

    return-object p0
.end method
