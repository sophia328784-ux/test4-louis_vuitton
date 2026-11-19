.class public final Lcom/sightcall/universal/ar/UniversalAr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/ar/ArBridge;


# static fields
.field private static volatile bridge:Lcom/sightcall/universal/ar/ArBridge;

.field private static final logger:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UniversalAr"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/ar/UniversalAr;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/ar/UniversalAr;->context:Landroid/content/Context;

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sightcall/universal/di/SDKInjectorI;->inject(Lcom/sightcall/universal/ar/UniversalAr;)V

    return-void
.end method

.method public static bridge synthetic a()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/ar/UniversalAr;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-object v0
.end method

.method private bridge()Lcom/sightcall/universal/ar/ArBridge;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/ar/UniversalAr;->bridge:Lcom/sightcall/universal/ar/ArBridge;

    if-nez v0, :cond_1

    const-class v0, Lcom/sightcall/universal/ar/ArBridge;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sightcall/universal/ar/UniversalAr;->bridge:Lcom/sightcall/universal/ar/ArBridge;

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/ar/UniversalAr;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/universal/ar/UniversalAr;->findBridge(Landroid/content/Context;)Lcom/sightcall/universal/ar/ArBridge;

    move-result-object p0

    sput-object p0, Lcom/sightcall/universal/ar/UniversalAr;->bridge:Lcom/sightcall/universal/ar/ArBridge;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/sightcall/universal/ar/UniversalAr;->bridge:Lcom/sightcall/universal/ar/ArBridge;

    return-object p0
.end method

.method private static findBridge(Landroid/content/Context;)Lcom/sightcall/universal/ar/ArBridge;
    .locals 5

    sget-object v0, Lcom/sightcall/universal/ar/UniversalAr;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "com.sightcall.universal.ar.ArBridge"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Searching meta-data for [%s]"

    invoke-virtual {v0, v3, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Lcom/sightcall/universal/ar/ArBridge;

    if-eqz v2, :cond_1

    const-string v2, "Found: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p0, Lcom/sightcall/universal/ar/ArBridge;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "[%s] is not defined."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/sightcall/universal/ar/UniversalAr;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s creation error"

    invoke-virtual {v0, v1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    sget-object p0, Lcom/sightcall/universal/ar/ArBridge;->NOOP:Lcom/sightcall/universal/ar/ArBridge;

    return-object p0
.end method


# virtual methods
.method public checkArCoreAvailability()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/ar/UniversalAr;->bridge()Lcom/sightcall/universal/ar/ArBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/ar/ArBridge;->checkArCoreAvailability()V

    return-void
.end method

.method public getActivityClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/ar/UniversalAr;->bridge()Lcom/sightcall/universal/ar/ArBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/ar/ArBridge;->getActivityClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getArCoreState()Lcom/sightcall/universal/ar/ArCoreState;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/ar/UniversalAr;->bridge()Lcom/sightcall/universal/ar/ArBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/ar/ArBridge;->getArCoreState()Lcom/sightcall/universal/ar/ArCoreState;

    move-result-object p0

    return-object p0
.end method

.method public isArCoreUnsupported()Z
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/ar/UniversalAr;->bridge()Lcom/sightcall/universal/ar/ArBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/ar/ArBridge;->isArCoreUnsupported()Z

    move-result p0

    return p0
.end method

.method public startActivity(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/ar/UniversalAr;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->activateAr()V

    invoke-direct {p0}, Lcom/sightcall/universal/ar/UniversalAr;->bridge()Lcom/sightcall/universal/ar/ArBridge;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sightcall/universal/ar/ArBridge;->startActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public upload(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/ar/ArPictureUpload;Lcom/sightcall/universal/ar/ArPictureUploadCallback;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/ar/ArPictureUploadCallback$Error;

    invoke-direct {p0}, Lcom/sightcall/universal/ar/ArPictureUploadCallback$Error;-><init>()V

    invoke-interface {p3, p0}, Lcom/sightcall/universal/ar/ArPictureUploadCallback;->onUploadPictureError(Lcom/sightcall/universal/ar/ArPictureUploadCallback$Error;)V

    return-void

    :cond_0
    const-class v0, Lcom/sightcall/universal/ar/ArApi;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sightcall/universal/api/Apis;->get(Ljava/lang/Class;Lcom/sightcall/universal/api/Environment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/ar/ArApi;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->config()Lcom/sightcall/universal/model/Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->hash()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/universal/api/Headers$Authorization$Bearer;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object p1

    invoke-static {p2}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/sightcall/universal/ar/ArApi;->upload(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/sightcall/universal/ar/UniversalAr$1;

    invoke-direct {p2, p0, p3}, Lcom/sightcall/universal/ar/UniversalAr$1;-><init>(Lcom/sightcall/universal/ar/UniversalAr;Lcom/sightcall/universal/ar/ArPictureUploadCallback;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method
