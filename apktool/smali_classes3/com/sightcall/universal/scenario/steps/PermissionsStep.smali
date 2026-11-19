.class public Lcom/sightcall/universal/scenario/steps/PermissionsStep;
.super Lcom/sightcall/universal/scenario/Step;
.source "SourceFile"


# instance fields
.field private final config:Lcom/sightcall/universal/model/Config;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/model/Config;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/Step;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/PermissionsStep;->config:Lcom/sightcall/universal/model/Config;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/scenario/steps/PermissionsStep;)Lcom/sightcall/universal/model/Config;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/PermissionsStep;->config:Lcom/sightcall/universal/model/Config;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/sightcall/universal/scenario/steps/PermissionsStep;[Lcom/sightcall/universal/scenario/Step;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->success([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/sightcall/universal/scenario/steps/PermissionsStep;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->bindService()V

    return-void
.end method

.method public static synthetic access$200(Lcom/sightcall/universal/scenario/steps/PermissionsStep;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->unbindService()V

    return-void
.end method

.method public static synthetic access$300(Lcom/sightcall/universal/scenario/steps/PermissionsStep;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->failure(Ljava/lang/String;)V

    return-void
.end method

.method public static nextStep(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/scenario/Step;
    .locals 1

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/permission/Permissions;->hasRequiredPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;-><init>(Lcom/sightcall/universal/model/Config;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk23()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sightcall/universal/scenario/steps/PermissionsStep;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/steps/PermissionsStep;-><init>(Lcom/sightcall/universal/model/Config;)V

    return-object v0

    :cond_1
    sget-object p0, Lcom/sightcall/universal/permission/Permissions;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Permissions required to start Universal SDK: "

    invoke-static {p0, v0}, Lbm;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onUnbind()V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/scenario/steps/PermissionsStep$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/steps/PermissionsStep$1;-><init>(Lcom/sightcall/universal/scenario/steps/PermissionsStep;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->context()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/permission/Permissions;->getPermissionList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sightcall/universal/permission/PermissionsActivity;->start(Landroid/content/Context;Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;[Ljava/lang/String;)V

    return-void
.end method
