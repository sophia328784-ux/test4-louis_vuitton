.class public Lcom/sightcall/universal/scenario/UniversalScenario;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private scenario:Lcom/sightcall/universal/scenario/Scenario;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UniversalScenario"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/scenario/UniversalScenario;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->lock:Ljava/lang/Object;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private static print(Lcom/sightcall/universal/scenario/Scenario;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
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

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/universal/scenario/Scenario;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    return-object p0
.end method

.method public interrupt()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sightcall/universal/scenario/UniversalScenario;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v2, "interrupt()"

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Scenario;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public is(Lcom/sightcall/universal/scenario/Scenario$Status;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/UniversalScenario;->status()Lcom/sightcall/universal/scenario/Scenario$Status;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onScenarioStatusEvent(Lcom/sightcall/universal/scenario/Scenario$StatusEvent;)V
    .locals 3
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    iget-object v0, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sightcall/universal/scenario/UniversalScenario$1;->$SwitchMap$com$sightcall$universal$scenario$Scenario$Status:[I

    invoke-virtual {p1}, Lcom/sightcall/universal/scenario/Scenario$StatusEvent;->status()Lcom/sightcall/universal/scenario/Scenario$Status;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    invoke-virtual {p1}, Lcom/sightcall/universal/scenario/Scenario$StatusEvent;->scenario()Lcom/sightcall/universal/scenario/Scenario;

    move-result-object p1

    if-ne v1, p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sightcall/universal/scenario/UniversalScenario;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v2, "resume()"

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    if-eqz p0, :cond_0

    sget-object v1, Lcom/sightcall/universal/scenario/Scenario$Status;->ACTIVE:Lcom/sightcall/universal/scenario/Scenario$Status;

    invoke-virtual {p0, v1}, Lcom/sightcall/universal/scenario/Scenario;->is(Lcom/sightcall/universal/scenario/Scenario$Status;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Scenario;->resume()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sightcall/universal/scenario/UniversalScenario;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v2, "start(%s)"

    invoke-static {p1}, Lcom/sightcall/universal/scenario/UniversalScenario;->print(Lcom/sightcall/universal/scenario/Scenario;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "scenario"

    invoke-static {p1, v2}, Lnet/rtccloud/sdk/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sightcall/universal/scenario/Scenario;->status()Lcom/sightcall/universal/scenario/Scenario$Status;

    move-result-object v2

    sget-object v3, Lcom/sightcall/universal/scenario/Scenario$Status;->IDLE:Lcom/sightcall/universal/scenario/Scenario$Status;

    if-eq v2, v3, :cond_0

    const-string p0, "Scenario must be in [%s] status to be started, but was [%s]"

    invoke-virtual {p1}, Lcom/sightcall/universal/scenario/Scenario;->status()Lcom/sightcall/universal/scenario/Scenario$Status;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    if-eqz v2, :cond_3

    sget-object v3, Lcom/sightcall/universal/scenario/UniversalScenario$1;->$SwitchMap$com$sightcall$universal$scenario$Scenario$Status:[I

    invoke-virtual {v2}, Lcom/sightcall/universal/scenario/Scenario;->status()Lcom/sightcall/universal/scenario/Scenario$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "Can\'t start a new Scenario while another Scenario is currently running..."

    invoke-virtual {v1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sightcall/universal/scenario/Scenario;->resume()V

    monitor-exit v0

    return-void

    :cond_2
    const-string v3, "Replacing [%s] with [%s]"

    invoke-static {v2}, Lcom/sightcall/universal/scenario/UniversalScenario;->print(Lcom/sightcall/universal/scenario/Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/sightcall/universal/scenario/UniversalScenario;->print(Lcom/sightcall/universal/scenario/Scenario;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    invoke-virtual {p1}, Lcom/sightcall/universal/scenario/Scenario;->start()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public status()Lcom/sightcall/universal/scenario/Scenario$Status;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Scenario;->status()Lcom/sightcall/universal/scenario/Scenario$Status;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/scenario/Scenario$Status;->IDLE:Lcom/sightcall/universal/scenario/Scenario$Status;

    return-object p0
.end method

.method public step()Lcom/sightcall/universal/scenario/Step;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/UniversalScenario;->scenario:Lcom/sightcall/universal/scenario/Scenario;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Scenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object p0

    return-object p0
.end method
