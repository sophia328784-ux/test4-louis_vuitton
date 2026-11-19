.class public final Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$Companion;


# instance fields
.field private final NSDTAG:Ljava/lang/String;

.field private mNsdListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private mServiceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->Companion:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NSD-SERVICE"

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->NSDTAG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->mServiceType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/linkplay/core/device/LPDevice;)V
    .locals 0

    invoke-static {p0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->serviceLost$lambda$0(Lcom/linkplay/core/device/LPDevice;)V

    return-void
.end method

.method public static final synthetic access$getMNsdManager$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Landroid/net/nsd/NsdManager;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->mNsdManager:Landroid/net/nsd/NsdManager;

    return-object p0
.end method

.method public static final synthetic access$getMServiceType$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->mServiceType:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getNSDTAG$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->NSDTAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$serviceLost(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->serviceLost(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method private final initDiscoveryListener()V
    .locals 1

    new-instance v0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;

    invoke-direct {v0, p0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;-><init>(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)V

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->mNsdListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    return-void
.end method

.method private final serviceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/app/LPDeviceManager;->getMasterDevices()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Let;

    const/16 v3, 0x1b

    invoke-direct {v2, v0, v3}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static final serviceLost$lambda$0(Lcom/linkplay/core/device/LPDevice;)V
    .locals 4

    const-string v0, "connectTCP->NsdServiceInfo="

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/linkplay/core/utils/IPUtils;->connectTCP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "LINKPLAY_SDK"

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceStatus;->getFriendlyName()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " TCP connected status="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPBrowseListener()Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPBrowseListener()Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->deviceRemove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final initListener()Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->initDiscoveryListener()V

    return-object p0
.end method

.method public final setServiceType(Ljava/lang/String;)Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->mServiceType:Ljava/lang/String;

    return-object p0
.end method

.method public final startNsdService()V
    .locals 3

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/app/LPDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "servicediscovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->mNsdManager:Landroid/net/nsd/NsdManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->mServiceType:Ljava/lang/String;

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->mNsdListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    :cond_0
    return-void
.end method

.method public final stopNsdService()V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->mNsdManager:Landroid/net/nsd/NsdManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->mNsdListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->mNsdManager:Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->mNsdListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    return-void
.end method
