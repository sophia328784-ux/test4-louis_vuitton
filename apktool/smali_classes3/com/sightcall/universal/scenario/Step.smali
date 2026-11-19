.class public abstract Lcom/sightcall/universal/scenario/Step;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/scenario/Step$State;,
        Lcom/sightcall/universal/scenario/Step$StateEvent;,
        Lcom/sightcall/universal/scenario/Step$WithSession;
    }
.end annotation


# static fields
.field private static final logger:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private scenario:Lcom/sightcall/universal/scenario/Scenario;

.field private state:Lcom/sightcall/universal/scenario/Step$State;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Step"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/scenario/Step;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/scenario/Step;->tag:Ljava/lang/String;

    sget-object v0, Lcom/sightcall/universal/scenario/Step$State;->IDLE:Lcom/sightcall/universal/scenario/Step$State;

    iput-object v0, p0, Lcom/sightcall/universal/scenario/Step;->state:Lcom/sightcall/universal/scenario/Step$State;

    return-void
.end method

.method private varargs finish(Z[Lcom/sightcall/universal/scenario/Step;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Step;->state:Lcom/sightcall/universal/scenario/Step$State;

    sget-object v1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/sightcall/universal/scenario/Step$State;->SUCCESS:Lcom/sightcall/universal/scenario/Step$State;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sightcall/universal/scenario/Step$State;->FAILURE:Lcom/sightcall/universal/scenario/Step$State;

    :goto_0
    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/Step;->state(Lcom/sightcall/universal/scenario/Step$State;)V

    sget-object p1, Lcom/sightcall/universal/scenario/Step;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Step;->tag:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onUnbind(%s)"

    invoke-virtual {p1, v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->onUnbind()V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Step;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Lcom/sightcall/universal/scenario/Scenario;->next([Lcom/sightcall/universal/scenario/Step;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private state(Lcom/sightcall/universal/scenario/Step$State;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/scenario/Step;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/Step;->tag:Ljava/lang/String;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "state(%s, %s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/Step;->state:Lcom/sightcall/universal/scenario/Step$State;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/scenario/Step$StateEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sightcall/universal/scenario/Step$StateEvent;-><init>(Lcom/sightcall/universal/scenario/Step;Lcom/sightcall/universal/scenario/Step$State;I)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public _interrupt()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/universal/scenario/Step;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/Step;->tag:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "interrupt(%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->interrupt()V

    return-void
.end method

.method public _resume()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/universal/scenario/Step;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/Step;->tag:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resume(%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->resume()V

    return-void
.end method

.method public _start(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Step;->state:Lcom/sightcall/universal/scenario/Step$State;

    sget-object v1, Lcom/sightcall/universal/scenario/Step$State;->IDLE:Lcom/sightcall/universal/scenario/Step$State;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sightcall/universal/scenario/Step;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    sget-object v0, Lcom/sightcall/universal/scenario/Step;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/Step;->tag:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onBind(%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->onBind(Lcom/sightcall/universal/scenario/Scenario;)V

    sget-object p1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/Step;->state(Lcom/sightcall/universal/scenario/Step$State;)V

    iget-object p1, p0, Lcom/sightcall/universal/scenario/Step;->tag:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "run(%s)"

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->run()V

    return-void
.end method

.method public final bindService()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/scenario/Step;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/Step;->tag:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "bindService(%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Step;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/sightcall/universal/scenario/Step;->onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Scenario;->bindService()V

    return-void
.end method

.method public final failure(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/scenario/Step;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sightcall/universal/scenario/Step;->tag:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "failure(%s)"

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    new-array v0, p1, [Lcom/sightcall/universal/scenario/Step;

    invoke-direct {p0, p1, v0}, Lcom/sightcall/universal/scenario/Step;->finish(Z[Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public final varargs failure([Lcom/sightcall/universal/scenario/Step;)V
    .locals 3

    .line 23
    sget-object v0, Lcom/sightcall/universal/scenario/Step;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/Step;->tag:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "failure(%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0, p1}, Lcom/sightcall/universal/scenario/Step;->finish(Z[Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public interrupt()V
    .locals 2

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->unbindService()V

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/sightcall/universal/scenario/Step;

    invoke-direct {p0, v0, v1}, Lcom/sightcall/universal/scenario/Step;->finish(Z[Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public is(Lcom/sightcall/universal/scenario/Step$State;)Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Step;->state:Lcom/sightcall/universal/scenario/Step$State;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isServiceBound()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Step;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public networkExpected()Z
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/rtccloud/sdk/Rtcc$Error;->NETWORK_ERROR:Lnet/rtccloud/sdk/Rtcc$Error;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->toastConnectionError(Lnet/rtccloud/sdk/Rtcc$Error;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract onBind(Lcom/sightcall/universal/scenario/Scenario;)V
.end method

.method public onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public abstract onUnbind()V
.end method

.method public resume()V
    .locals 0

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method public abstract run()V
.end method

.method public scenario()Lcom/sightcall/universal/scenario/Scenario;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Step;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    return-object p0
.end method

.method public state()Lcom/sightcall/universal/scenario/Step$State;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sightcall/universal/scenario/Step;->state:Lcom/sightcall/universal/scenario/Step$State;

    return-object p0
.end method

.method public final varargs success([Lcom/sightcall/universal/scenario/Step;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/scenario/Step;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/Step;->tag:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "success(%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sightcall/universal/scenario/Step;->finish(Z[Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public toastConnectionError(Lnet/rtccloud/sdk/Rtcc$Error;)V
    .locals 2

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/scenario/Step$1;->$SwitchMap$net$rtccloud$sdk$Rtcc$Error:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/sightcall/universal/R$string;->universal_connection_error_network:I

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, v0, p0}, Lcom/sightcall/universal/util/Utils;->safeToast(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/sightcall/universal/R$string;->universal_connection_error_authentication:I

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, v0, p0}, Lcom/sightcall/universal/util/Utils;->safeToast(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/sightcall/universal/R$string;->universal_connection_error_unavailable:I

    invoke-static {p0, v1, p1}, Lcom/sightcall/universal/util/Utils;->safeToast(Landroid/content/Context;II)V

    return-void
.end method

.method public final unbindService()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/scenario/Step;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/Step;->tag:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "unbindService(%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Step;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->onServiceDisconnected()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Scenario;->unbindService()V

    return-void
.end method

.method public final updateServiceNotification()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Step;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/ScenarioService;->updateNotification()V

    :cond_0
    return-void
.end method
