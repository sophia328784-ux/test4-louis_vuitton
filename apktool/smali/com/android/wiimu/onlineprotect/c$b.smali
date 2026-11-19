.class Lcom/android/wiimu/onlineprotect/c$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wiimu/onlineprotect/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/onlineprotect/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/android/wiimu/onlineprotect/c$b;->a:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/android/wiimu/onlineprotect/c$b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/wiimu/onlineprotect/c;Ljava/lang/String;Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/wiimu/onlineprotect/c$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/wiimu/onlineprotect/c$b;->b:Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPSearchTemplate()Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPControlPointSearchTemplate;->getUpnpService()Lorg/teleal/cling/android/AndroidUpnpService;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/teleal/cling/android/AndroidUpnpService;->b()Lorg/teleal/cling/registry/RegistryImpl;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/teleal/cling/registry/RegistryImpl;->o()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/RemoteDevice;

    iget-object v3, v2, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    iget-object v3, v3, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wiimu/onlineprotect/c$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, v2, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    check-cast v2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0, v2}, Lorg/teleal/cling/registry/RegistryImpl;->B(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 0

    .line 95
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    const/16 p1, 0xbb8

    invoke-virtual {p0, p1}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->isAppOnForeground()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/wiimu/onlineprotect/c$b;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wiimu/onlineprotect/c$b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/wiimu/onlineprotect/c$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/wiimu/onlineprotect/c$b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
