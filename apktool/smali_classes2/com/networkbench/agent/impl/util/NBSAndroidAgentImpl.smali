.class public Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/background/b;


# static fields
.field private static final a:Ljava/lang/String; = "NBSAndroidAgentImpl"

.field private static final b:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/networkbench/agent/impl/data/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/networkbench/agent/impl/data/j;

.field private f:Lcom/networkbench/agent/impl/util/af;

.field private final g:Ljava/util/concurrent/locks/Lock;

.field private h:Z

.field private i:Lcom/networkbench/agent/impl/harvest/DeviceInformation;

.field private j:Lcom/networkbench/agent/impl/session/NBSNetworkCallback;

.field private k:Lcom/networkbench/agent/impl/harvest/ApplicationInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->d:Ljava/util/ArrayList;

    sget-object v0, Lcom/networkbench/agent/impl/data/j;->c:Lcom/networkbench/agent/impl/data/j;

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->e:Lcom/networkbench/agent/impl/data/j;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->g:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->h:Z

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->c:Landroid/content/Context;

    new-instance v1, Lcom/networkbench/agent/impl/util/af;

    invoke-direct {v1, v0}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/af;->k()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$1;-><init>(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->getInstance()Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->addApplicationStateListener(Lcom/networkbench/agent/impl/background/b;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->e()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "application start to registerActivityLifecycleCallbacks"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->b()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->ad()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "application start to NBSH5ActivityLifeMonitor"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-static {p1}, Lcom/networkbench/agent/impl/crash/b;->b(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/r;->g(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)Lcom/networkbench/agent/impl/util/af;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    .line 103
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 104
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private a(Lcom/networkbench/agent/impl/harvest/DeviceInformation;)V
    .locals 0

    .line 98
    invoke-static {}, Lcom/networkbench/agent/impl/crash/b;->a()Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->setCpuArch(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/networkbench/agent/impl/crash/b;->d()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->setCpuType(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/session/NBSNetworkCallback;)V
    .locals 2

    .line 136
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/e/a;->a()Lcom/networkbench/agent/impl/e/a;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataNetType:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/e/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 138
    sget-object p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "initNetworkMonitor error ...."

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_2
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->j:Lcom/networkbench/agent/impl/session/NBSNetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->j:Lcom/networkbench/agent/impl/session/NBSNetworkCallback;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Lcom/networkbench/agent/impl/session/NBSNetworkCallback;)V

    .line 119
    invoke-static {}, Lcom/networkbench/agent/impl/b/b;->a()Lcom/networkbench/agent/impl/b/b;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/b/h;->d(Lcom/networkbench/agent/impl/b/h$a;)V

    .line 120
    invoke-static {}, Lcom/networkbench/agent/impl/data/a/e;->a()V

    .line 121
    invoke-static {}, Lcom/networkbench/agent/impl/data/a/k;->a()V

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 122
    sput-boolean p0, Lcom/networkbench/agent/impl/util/r;->o:Z

    .line 123
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->harvestNow()V

    .line 124
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/f/e;->a()Lcom/networkbench/agent/impl/f/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/f/e;->c()V

    .line 125
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->shutdown()V

    .line 126
    invoke-static {}, Lcom/networkbench/agent/impl/d/g;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private addLocationListener()V
    .locals 0

    return-void
.end method

.method private static b(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 58
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private b(Lcom/networkbench/agent/impl/harvest/DeviceInformation;)V
    .locals 2

    sget-object p0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataOSVersion:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-static {p0}, Lcom/networkbench/agent/impl/e/b;->a(Lcom/networkbench/agent/impl/PrivacyDataType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->setOsVersion(Ljava/lang/String;)V

    sget-object p0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataManufacturerModel:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-static {p0}, Lcom/networkbench/agent/impl/e/b;->a(Lcom/networkbench/agent/impl/PrivacyDataType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->setModel(Ljava/lang/String;)V

    sget-object p0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataManufacturer:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-static {p0}, Lcom/networkbench/agent/impl/e/b;->a(Lcom/networkbench/agent/impl/PrivacyDataType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->setManufacturer(Ljava/lang/String;)V

    sget-object p0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataDeviceType:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-static {p0}, Lcom/networkbench/agent/impl/e/b;->b(Lcom/networkbench/agent/impl/PrivacyDataType;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->setScreenSize(D)V

    sget-object p0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataDeviceSize:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-static {p0}, Lcom/networkbench/agent/impl/e/b;->c(Lcom/networkbench/agent/impl/PrivacyDataType;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "size"

    invoke-virtual {p1, v0, p0}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->addMisc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->x()V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .line 154
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/e/a;->a()Lcom/networkbench/agent/impl/e/a;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataNetType:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/e/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_1

    .line 156
    sget-object p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "initNetworkMonitor error ...."

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    .line 157
    :cond_1
    new-instance v0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;

    invoke-direct {v0, p1}, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->j:Lcom/networkbench/agent/impl/session/NBSNetworkCallback;

    .line 158
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$2;-><init>(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/networkbench/agent/impl/util/r;->z:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0}, Lcom/networkbench/agent/impl/crash/b;->g(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 27
    invoke-static {}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->v()V

    :cond_0
    return-void
.end method

.method public static synthetic r()Lcom/networkbench/agent/impl/c/e;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    return-object v0
.end method

.method public static synthetic s()V
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->w()V

    return-void
.end method

.method private t()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "HarmonyOS"

    return-object p0

    :cond_0
    const-string p0, "Android"

    return-object p0
.end method

.method private static u()Z
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/networkbench/agent/impl/util/r;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "ohos.utils.system.SystemCapability"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    return v1
.end method

.method private static v()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$3;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static w()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->initUserHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->z()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/networkbench/agent/impl/harvest/HarvestURLConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/harvest/a/r;->e:Lcom/networkbench/agent/impl/harvest/a/r;

    sget-object v2, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->redirectHost:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/networkbench/agent/impl/harvest/a/l;->a(Lcom/networkbench/agent/impl/harvest/a/r;Ljava/lang/String;Z)Lcom/networkbench/agent/impl/harvest/a/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;->sendDataStr(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUpdateHintRunnable error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-void
.end method

.method private x()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/networkbench/agent/impl/util/r;->o:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/networkbench/agent/impl/util/r;->k:J

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->start()V

    invoke-static {}, Lcom/networkbench/agent/impl/f/e;->a()Lcom/networkbench/agent/impl/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/f/e;->b()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/b/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/b/b;->a()Lcom/networkbench/agent/impl/b/b;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/b/h;->a(Lcom/networkbench/agent/impl/b/h$a;)V

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ae()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "reStart plugin_enabled is enabled"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "NBSAndroidAgentImpl start() has an error : "

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/af;->t()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->n(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b()V

    sput-boolean v1, Lcom/networkbench/agent/impl/util/r;->o:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/networkbench/agent/impl/util/r;->k:J

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->start()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->X()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "NBSAndroidAgentImpl"

    if-eqz p0, :cond_0

    :try_start_1
    sget p0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/b/h;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "LooperMonitor register listener"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/b/b;->a()Lcom/networkbench/agent/impl/b/b;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/b/h;->a(Lcom/networkbench/agent/impl/b/h$a;)V

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "register fragment callback"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/networkbench/agent/impl/fragmentadapt/f;->a:Lcom/networkbench/agent/impl/fragmentadapt/f;

    invoke-static {p0}, Lcom/networkbench/agent/impl/fragmentadapt/FragmentTrackHelper;->addFragmentCallbacks(Lcom/networkbench/agent/impl/fragmentadapt/c;)V

    new-instance p0, Lcom/networkbench/agent/impl/fragmentadapt/d;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/fragmentadapt/d;-><init>()V

    invoke-static {p0}, Lcom/networkbench/agent/impl/fragmentadapt/FragmentTrackHelper;->addFragmentCallbacks(Lcom/networkbench/agent/impl/fragmentadapt/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "NBSAndroidAgentImpl start() has an error : "

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Z)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->W()Z

    .line 129
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/networkbench/agent/impl/util/r;->B:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/h/b;->a()Lcom/networkbench/agent/impl/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/h/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    sget-object p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "root ca certificate validity is false, please check"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->start()V

    .line 132
    invoke-static {}, Lcom/networkbench/agent/impl/crash/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/r;->n:Ljava/lang/String;

    .line 133
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->d(Landroid/content/Context;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 135
    sget-object p1, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "Failed to initialize the agent: "

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/background/a;)V
    .locals 3

    .line 141
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$4;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl$4;-><init>(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/data/f;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->e:Lcom/networkbench/agent/impl/data/j;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/j;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 108
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->e:Lcom/networkbench/agent/impl/data/j;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/j;->l()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v0, v0

    .line 109
    iget-object v2, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 110
    iget-object v2, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->d:Ljava/util/ArrayList;

    monitor-enter v2

    long-to-int v0, v0

    .line 111
    :try_start_2
    iget-object v1, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->d:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 115
    :cond_1
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    .line 116
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 117
    throw p1
.end method

.method public b()V
    .locals 2

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHarvestListener(Lcom/networkbench/agent/impl/harvest/HarvestLifecycleAware;)V

    .line 53
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->initialize()V

    .line 54
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->setHarvestConfiguration(Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;)V

    .line 55
    invoke-static {}, Lcom/networkbench/agent/impl/d/g;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 56
    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "initialize error :"

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/networkbench/agent/impl/background/a;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->i()V

    return-void
.end method

.method public c()Lcom/networkbench/agent/impl/harvest/DeviceInformation;
    .locals 7

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->i:Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    const-string v1, "uid"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->addMisc(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->i:Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b(Lcom/networkbench/agent/impl/harvest/DeviceInformation;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->i:Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    return-object p0

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;-><init>()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->setOsName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b(Lcom/networkbench/agent/impl/harvest/DeviceInformation;)V

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Lcom/networkbench/agent/impl/harvest/DeviceInformation;)V

    const-string v2, "agent-android"

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->setAgentName(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->setAgentVersion(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "brsAgentMd5"

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->addMisc(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_2

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->addMisc(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/networkbench/agent/impl/util/r;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "userId"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->addMisc(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v3, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v5, "getDeviceInformation error :"

    invoke-interface {v3, v5, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/crash/NativeCrashInterface;->getNativeVersion()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ndkversion"

    invoke-virtual {v0, v1, v4}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->addMisc(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    sput-object v2, Lcom/networkbench/agent/impl/harvest/DeviceData;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->i:Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    return-object v0
.end method

.method public d()Lcom/networkbench/agent/impl/harvest/DeviceData;
    .locals 5

    new-instance p0, Lcom/networkbench/agent/impl/harvest/DeviceData;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/DeviceData;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->av()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/DeviceData;->setCarrier(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aw()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/DeviceData;->setConnectType(I)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->au()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/DeviceData;->setNetwrokType(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->q()Lcom/networkbench/agent/impl/util/t;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/t;->a()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/agent/impl/harvest/DeviceData;->setLatitude(D)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/t;->b()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/agent/impl/harvest/DeviceData;->setLongitude(D)V

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/harvest/DeviceData;->setLatitude(D)V

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/harvest/DeviceData;->setLongitude(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_0
    sget-object v3, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "location is not null,but getLatitude() or getLongtitude() occur an error "

    invoke-interface {v3, v4, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/harvest/DeviceData;->setLatitude(D)V

    invoke-virtual {p0, v1, v2}, Lcom/networkbench/agent/impl/harvest/DeviceData;->setLongitude(D)V

    return-object p0
.end method

.method public e()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->k:Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->generateData()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->k:Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    return-object p0

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    iget-object v1, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->k:Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->generateAppInfo()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->k:Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/data/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/af;->z()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/af;->m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getErrRspSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public i()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/networkbench/agent/impl/util/r;->l:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Z)V

    return-void
.end method

.method public j()V
    .locals 4

    sget-object v0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PERMANENTLY DISABLING AGENT v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/util/af;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/networkbench/agent/impl/NBSAgent;->setImpl(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lcom/networkbench/agent/impl/NBSAgent;->setImpl(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)V

    throw p0

    :catchall_1
    move-exception v2

    :try_start_2
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lcom/networkbench/agent/impl/NBSAgent;->setImpl(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)V

    throw v2

    :catchall_2
    move-exception p0

    invoke-static {v1}, Lcom/networkbench/agent/impl/NBSAgent;->setImpl(Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;)V

    throw p0
.end method

.method public k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->c:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "00000"

    :cond_0
    return-object p0
.end method

.method public m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public n()Lcom/networkbench/agent/impl/harvest/SystemInfo;
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/harvest/SystemInfo;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/harvest/SystemInfo;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/networkbench/agent/impl/crash/b;->h(Landroid/content/Context;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/SystemInfo;->setMemory(F)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/SystemInfo;->setCpuUtilizationRateUser(I)V

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/SystemInfo;->setCpuUtilizationRateSystem(I)V

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/harvest/SystemInfo;->setCpuUtilizationRateTotal(I)V

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->T()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public p()Lcom/networkbench/agent/impl/util/af;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    return-object p0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->f:Lcom/networkbench/agent/impl/util/af;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->brsAgentMD5:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/af;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
