.class public Lcom/android/wiimu/upnp/d;
.super Lorg/teleal/cling/registry/DefaultRegistryListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wiimu/upnp/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/locks/ReentrantLock;

.field private b:Lcom/android/wiimu/upnp/WiimuUpnpBrowseListener;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/upnp/WiimuUpnpBrowseListener;)V
    .locals 1

    invoke-direct {p0}, Lorg/teleal/cling/registry/DefaultRegistryListener;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/upnp/d;->a:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lcom/android/wiimu/upnp/d;->b:Lcom/android/wiimu/upnp/WiimuUpnpBrowseListener;

    return-void
.end method

.method private a(Lb/c;)V
    .locals 5

    .line 267
    sget-object v0, Li/a;->c:Li/a;

    .line 268
    invoke-virtual {v0}, Li/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 270
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 271
    iget-object v3, p1, Lb/c;->b:Ljava/lang/String;

    .line 272
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/c;

    .line 273
    iget-object v4, v4, Lb/c;->b:Ljava/lang/String;

    .line 274
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    sget-object p0, Li/a;->c:Li/a;

    .line 276
    iget-object v0, p1, Lb/c;->b:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Li/a;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 278
    :try_start_0
    iget-object v1, p0, Li/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Li/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 280
    :cond_1
    :goto_1
    invoke-virtual {p0}, Li/a;->e()V

    .line 281
    invoke-static {}, Lcom/android/wiimu/upnp/c;->c()Lcom/android/wiimu/upnp/c;

    move-result-object p0

    .line 282
    iget-object p1, p1, Lb/c;->b:Ljava/lang/String;

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/wiimu/upnp/c;->b(Ljava/lang/String;)V

    return-void

    .line 284
    :goto_2
    invoke-virtual {p0}, Li/a;->e()V

    .line 285
    throw p1

    .line 286
    :cond_2
    iget-object v3, p1, Lb/c;->e:Lb/e;

    .line 287
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/c;

    .line 288
    iget-object v4, v4, Lb/c;->e:Lb/e;

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 290
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/c;

    .line 291
    iget-object p1, p1, Lb/c;->b:Ljava/lang/String;

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/wiimu/upnp/d;->deviceRemove(Ljava/lang/String;)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method private a(Lb/c;Ljava/util/Map;)V
    .locals 8

    if-eqz p2, :cond_9

    const-string v0, "MultiType"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlaveMask"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "0"

    const-string v5, "slave"

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/linkplay/core/utils/LPWiFiResultUtils;->isWiFiConnectAP()Z

    move-result v3

    const-string v6, "master"

    if-eqz v3, :cond_1

    iput-object v6, p1, Lb/c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lb/c;->e:Lb/e;

    iget-object v3, v3, Lb/e;->b:Ljava/lang/String;

    const-string v7, "10.10.10.254"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v6, p1, Lb/c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object v5, p1, Lb/c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-object v5, p1, Lb/c;->c:Ljava/lang/String;

    :goto_0
    const-string v3, "Status"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/wiimu/utils/WiimuDeviceUtils;->getMasterDeviceStatus(Ljava/lang/String;)Lb/e;

    move-result-object v3

    iput-object v3, p1, Lb/c;->e:Lb/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "mask"

    goto :goto_1

    :cond_4
    const-string v1, "unmask"

    :goto_1
    iput-object v1, p1, Lb/c;->d:Ljava/lang/String;

    iget-object v1, p1, Lb/c;->e:Lb/e;

    iget-object v5, v3, Lb/e;->c:Ljava/lang/String;

    iput-object v5, v1, Lb/e;->c:Ljava/lang/String;

    iget-object v5, v3, Lb/e;->f:Ljava/lang/String;

    iput-object v5, v1, Lb/e;->f:Ljava/lang/String;

    sget-object v1, Li/a;->c:Li/a;

    iget-object v5, p1, Lb/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Li/a;->b(Ljava/lang/String;)Lb/c;

    move-result-object v1

    if-eqz v1, :cond_5

    iput-object v3, v1, Lb/c;->e:Lb/e;

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    sget-object v0, Li/a;->c:Li/a;

    iget-object v1, p1, Lb/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Li/a;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/wiimu/upnp/d;->a(Lb/c;)V

    invoke-direct {p0, p1}, Lcom/android/wiimu/upnp/d;->b(Lb/c;)V

    const-string p0, "SlaveList"

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wiimu/utils/WiimuDeviceUtils;->getSlaveDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_9

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/c;

    iget-object v0, p2, Lb/c;->e:Lb/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Li/a;->c:Li/a;

    invoke-virtual {v0, p2}, Li/a;->a(Lb/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linkplay/core/app/LPDeviceManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wiimu/utils/WiimuWifiScanner;->isWiimuWifi(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-direct {p0, p1}, Lcom/android/wiimu/upnp/d;->b(Lb/c;)V

    return-void

    :cond_7
    sget-object p2, Li/a;->c:Li/a;

    invoke-virtual {p2}, Li/a;->c()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/c;

    iget-object v0, p1, Lb/c;->e:Lb/e;

    iget-object p2, p2, Lb/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/android/wiimu/upnp/d;->b(Lb/c;)V

    return-void

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/wiimu/upnp/d;->b(Lb/c;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public static bridge synthetic a(Lcom/android/wiimu/upnp/d;Lb/c;Ljava/util/Map;)V
    .locals 0

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/wiimu/upnp/d;->a(Lb/c;Ljava/util/Map;)V

    return-void
.end method

.method private b(Lb/c;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Li/a;->c:Li/a;

    iget-object v1, p1, Lb/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Li/a;->b(Ljava/lang/String;)Lb/c;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Li/a;->a(Lb/c;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Li/a;->b:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v2, p1, Lb/c;->c:Ljava/lang/String;

    const-string v3, "master"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, v0, Li/a;->a:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lb/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    invoke-static {}, Lcom/android/wiimu/upnp/c;->c()Lcom/android/wiimu/upnp/c;

    move-result-object v0

    iget-object v1, p1, Lb/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/wiimu/upnp/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/wiimu/upnp/c;->c()Lcom/android/wiimu/upnp/c;

    move-result-object v0

    iget-object v1, p1, Lb/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/wiimu/upnp/c;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lcom/android/wiimu/upnp/b;

    invoke-direct {v0, p1}, Lcom/android/wiimu/upnp/b;-><init>(Lb/c;)V

    :cond_4
    invoke-static {}, Lcom/android/wiimu/upnp/c;->c()Lcom/android/wiimu/upnp/c;

    move-result-object v1

    iget-object v2, p1, Lb/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/wiimu/upnp/c;->a(Ljava/lang/String;Lcom/android/wiimu/upnp/b;)V

    iget-object p0, p0, Lcom/android/wiimu/upnp/d;->b:Lcom/android/wiimu/upnp/WiimuUpnpBrowseListener;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lcom/android/wiimu/upnp/WiimuUpnpBrowseListener;->deviceAdded(Lb/c;)V

    invoke-virtual {v0}, Lcom/android/wiimu/upnp/b;->a()V

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method private deviceAdded(Lorg/teleal/cling/model/meta/Device;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/teleal/cling/model/meta/Device;->c:Lorg/teleal/cling/model/types/DeviceType;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaServer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Lcom/android/wiimu/upnp/a;->f()Lcom/android/wiimu/upnp/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wiimu/upnp/a;->b(Lorg/teleal/cling/model/meta/Device;)V

    return-void

    :cond_1
    const-string v2, "MediaRenderer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/android/wiimu/upnp/a;->f()Lcom/android/wiimu/upnp/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wiimu/upnp/a;->a(Lorg/teleal/cling/model/meta/Device;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->i()[Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/teleal/cling/model/meta/Device;->c:Lorg/teleal/cling/model/types/DeviceType;

    invoke-virtual {v4}, Lorg/teleal/cling/model/types/DeviceType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {}, Lcom/android/wiimu/upnp/a;->f()Lcom/android/wiimu/upnp/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/wiimu/upnp/a;->b(Lorg/teleal/cling/model/meta/Device;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/android/wiimu/utils/WiimuDeviceUtils;->convertDeviceItem(Lorg/teleal/cling/model/meta/Device;)Lb/c;

    move-result-object v0

    new-instance v1, Lcom/android/wiimu/upnp/d$a;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/wiimu/upnp/d$a;-><init>(Lcom/android/wiimu/upnp/d;Lorg/teleal/cling/model/meta/Device;Lb/c;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private deviceRemoved(Lorg/teleal/cling/model/meta/Device;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v0, v0, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wiimu/upnp/d;->deviceRemove(Ljava/lang/String;)V

    iget-object p0, p1, Lorg/teleal/cling/model/meta/Device;->c:Lorg/teleal/cling/model/types/DeviceType;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/DeviceType;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaServer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_2

    invoke-static {}, Lcom/android/wiimu/upnp/a;->f()Lcom/android/wiimu/upnp/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wiimu/upnp/a;->c(Lorg/teleal/cling/model/meta/Device;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private removeDevice(Lorg/teleal/cling/model/meta/Device;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getWiimuUpnpTemplate()Lcom/android/wiimu/upnp/e;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/wiimu/upnp/e;->c()Lorg/teleal/cling/registry/Registry;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    instance-of v0, p1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-interface {p0, p1}, Lorg/teleal/cling/registry/Registry;->b(Lorg/teleal/cling/model/meta/LocalDevice;)Z

    return-void

    :cond_3
    instance-of v0, p1, Lorg/teleal/cling/model/meta/RemoteDevice;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-interface {p0, p1}, Lorg/teleal/cling/registry/Registry;->g(Lorg/teleal/cling/model/meta/RemoteDevice;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public deviceRemove(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wiimu/upnp/d;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget-object v0, Li/a;->c:Li/a;

    invoke-virtual {v0, p1}, Li/a;->b(Ljava/lang/String;)Lb/c;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/wiimu/upnp/d;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/wiimu/upnp/a;->f()Lcom/android/wiimu/upnp/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/wiimu/upnp/a;->a(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/wiimu/upnp/d;->removeDevice(Lorg/teleal/cling/model/meta/Device;)V

    invoke-static {}, Lcom/android/wiimu/upnp/c;->c()Lcom/android/wiimu/upnp/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/wiimu/upnp/c;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/wiimu/upnp/a;->f()Lcom/android/wiimu/upnp/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/wiimu/upnp/a;->b(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v0, p1}, Li/a;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wiimu/upnp/d;->b:Lcom/android/wiimu/upnp/WiimuUpnpBrowseListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lcom/android/wiimu/upnp/WiimuUpnpBrowseListener;->deviceRemoved(Lb/c;)V

    :cond_1
    iget-object p0, p0, Lcom/android/wiimu/upnp/d;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public localDeviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 2

    sget-object v0, Lorg/teleal/cling/protocol/UpnpUDNManager;->c:Lorg/teleal/cling/protocol/UpnpUDNManager;

    iget-object v1, p2, Lorg/teleal/cling/model/meta/Device;->a:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v1, v1, Lorg/teleal/cling/model/meta/DeviceIdentity;->a:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/protocol/UpnpUDNManager;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->deviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V

    invoke-direct {p0, p2}, Lcom/android/wiimu/upnp/d;->deviceAdded(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public localDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->localDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V

    invoke-direct {p0, p2}, Lcom/android/wiimu/upnp/d;->deviceRemoved(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public remoteDeviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->deviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V

    invoke-direct {p0, p2}, Lcom/android/wiimu/upnp/d;->deviceAdded(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method public remoteDeviceDiscoveryFailed(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/teleal/cling/registry/DefaultRegistryListener;->remoteDeviceDiscoveryFailed(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    return-void
.end method

.method public remoteDeviceDiscoveryStarted(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->remoteDeviceDiscoveryStarted(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    return-void
.end method

.method public remoteDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->remoteDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    invoke-direct {p0, p2}, Lcom/android/wiimu/upnp/d;->deviceRemoved(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method
