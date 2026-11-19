.class public Lcom/sightcall/universal/scenario/Scenario;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/scenario/Scenario$Status;,
        Lcom/sightcall/universal/scenario/Scenario$StatusEvent;
    }
.end annotation


# static fields
.field private static final logger:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private final executor:Ljava/util/concurrent/Executor;

.field service:Lcom/sightcall/universal/scenario/ScenarioService;

.field private status:Lcom/sightcall/universal/scenario/Scenario$Status;

.field private final steps:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sightcall/universal/scenario/Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Scenario"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/scenario/Scenario;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method private constructor <init>(Lcom/sightcall/universal/scenario/Step;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sightcall/universal/scenario/Scenario$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/Scenario$1;-><init>(Lcom/sightcall/universal/scenario/Scenario;)V

    iput-object v0, p0, Lcom/sightcall/universal/scenario/Scenario;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/sightcall/universal/scenario/Scenario$4;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/Scenario$4;-><init>(Lcom/sightcall/universal/scenario/Scenario;)V

    iput-object v0, p0, Lcom/sightcall/universal/scenario/Scenario;->connection:Landroid/content/ServiceConnection;

    sget-object v0, Lcom/sightcall/universal/scenario/Scenario$Status;->IDLE:Lcom/sightcall/universal/scenario/Scenario$Status;

    iput-object v0, p0, Lcom/sightcall/universal/scenario/Scenario;->status:Lcom/sightcall/universal/scenario/Scenario$Status;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/scenario/Scenario;->steps:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/scenario/Scenario;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario;->steps:Ljava/util/Queue;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/Scenario;->interruptFromExecutor()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/scenario/Scenario;[Lcom/sightcall/universal/scenario/Step;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/Scenario;->nextFromExecutor([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public static bridge synthetic d()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/scenario/Scenario;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-object v0
.end method

.method private interruptFromExecutor()V
    .locals 5

    sget-object v0, Lcom/sightcall/universal/scenario/Scenario$5;->$SwitchMap$com$sightcall$universal$scenario$Scenario$Status:[I

    iget-object v1, p0, Lcom/sightcall/universal/scenario/Scenario;->status:Lcom/sightcall/universal/scenario/Scenario$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Scenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sightcall/universal/scenario/Scenario$Status;->ENDED:Lcom/sightcall/universal/scenario/Scenario$Status;

    invoke-direct {p0, v0}, Lcom/sightcall/universal/scenario/Scenario;->status(Lcom/sightcall/universal/scenario/Scenario$Status;)V

    return-void

    :cond_1
    sget-object v3, Lcom/sightcall/universal/scenario/Scenario$5;->$SwitchMap$com$sightcall$universal$scenario$Step$State:[I

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Step;->state()Lcom/sightcall/universal/scenario/Step$State;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_2

    if-eq v3, v2, :cond_3

    const/4 v0, 0x4

    if-eq v3, v0, :cond_3

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Step;->_interrupt()V

    return-void

    :cond_3
    sget-object v0, Lcom/sightcall/universal/scenario/Scenario$Status;->ENDED:Lcom/sightcall/universal/scenario/Scenario$Status;

    invoke-direct {p0, v0}, Lcom/sightcall/universal/scenario/Scenario;->status(Lcom/sightcall/universal/scenario/Scenario$Status;)V

    return-void

    :cond_4
    sget-object v0, Lcom/sightcall/universal/scenario/Scenario$Status;->ENDED:Lcom/sightcall/universal/scenario/Scenario$Status;

    invoke-direct {p0, v0}, Lcom/sightcall/universal/scenario/Scenario;->status(Lcom/sightcall/universal/scenario/Scenario$Status;)V

    return-void
.end method

.method private varargs nextFromExecutor([Lcom/sightcall/universal/scenario/Step;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Scenario;->steps:Ljava/util/Queue;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/scenario/Scenario;->status:Lcom/sightcall/universal/scenario/Scenario$Status;

    sget-object v0, Lcom/sightcall/universal/scenario/Scenario$Status;->ACTIVE:Lcom/sightcall/universal/scenario/Scenario$Status;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Scenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/sightcall/universal/scenario/Scenario$Status;->ENDED:Lcom/sightcall/universal/scenario/Scenario$Status;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/Scenario;->status(Lcom/sightcall/universal/scenario/Scenario$Status;)V

    return-void

    :cond_2
    sget-object v0, Lcom/sightcall/universal/scenario/Scenario$5;->$SwitchMap$com$sightcall$universal$scenario$Step$State:[I

    invoke-virtual {p1}, Lcom/sightcall/universal/scenario/Step;->state()Lcom/sightcall/universal/scenario/Step$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3

    :goto_0
    return-void

    :cond_3
    iget-object p1, p0, Lcom/sightcall/universal/scenario/Scenario;->steps:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Scenario;->next([Lcom/sightcall/universal/scenario/Step;)V

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Lcom/sightcall/universal/scenario/Step;->_start(Lcom/sightcall/universal/scenario/Scenario;)V

    return-void
.end method

.method private status(Lcom/sightcall/universal/scenario/Scenario$Status;)V
    .locals 4

    sget-object v0, Lcom/sightcall/universal/scenario/Scenario;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "status(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/Scenario;->status:Lcom/sightcall/universal/scenario/Scenario$Status;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/scenario/Scenario$StatusEvent;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/sightcall/universal/scenario/Scenario$StatusEvent;-><init>(Lcom/sightcall/universal/scenario/Scenario;Lcom/sightcall/universal/scenario/Scenario$Status;I)V

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    sget-object v1, Lcom/sightcall/universal/scenario/Scenario$Status;->ENDED:Lcom/sightcall/universal/scenario/Scenario$Status;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    if-eqz p1, :cond_0

    const-string p1, "Service is still bound but scenario is now ended... Forgot to call #unbind() ?"

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Scenario;->unbindService()V

    :cond_0
    return-void
.end method

.method public static with(Lcom/sightcall/universal/scenario/Step;)Lcom/sightcall/universal/scenario/Scenario;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/scenario/Scenario;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/Scenario;-><init>(Lcom/sightcall/universal/scenario/Step;)V

    return-object v0
.end method


# virtual methods
.method public bindService()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Scenario;->steps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/scenario/Step;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/scenario/Step;->onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sightcall/universal/scenario/ScenarioService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public interrupt()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/scenario/Scenario;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "interrupt()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Scenario;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sightcall/universal/scenario/Scenario$3;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/scenario/Scenario$3;-><init>(Lcom/sightcall/universal/scenario/Scenario;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public is(Lcom/sightcall/universal/scenario/Scenario$Status;)Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario;->status:Lcom/sightcall/universal/scenario/Scenario$Status;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public varargs next([Lcom/sightcall/universal/scenario/Step;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Scenario;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sightcall/universal/scenario/Scenario$2;

    invoke-direct {v1, p0, p1}, Lcom/sightcall/universal/scenario/Scenario$2;-><init>(Lcom/sightcall/universal/scenario/Scenario;[Lcom/sightcall/universal/scenario/Step;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/scenario/Scenario;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "resume()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Scenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->_resume()V

    :cond_0
    return-void
.end method

.method public service()Lcom/sightcall/universal/scenario/ScenarioService;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    return-object p0
.end method

.method public start()V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/scenario/Scenario;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "start()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Scenario;->status:Lcom/sightcall/universal/scenario/Scenario$Status;

    sget-object v1, Lcom/sightcall/universal/scenario/Scenario$Status;->IDLE:Lcom/sightcall/universal/scenario/Scenario$Status;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/universal/scenario/Scenario$Status;->ACTIVE:Lcom/sightcall/universal/scenario/Scenario$Status;

    invoke-direct {p0, v0}, Lcom/sightcall/universal/scenario/Scenario;->status(Lcom/sightcall/universal/scenario/Scenario$Status;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/ui/UniversalLoadingActivity;->start(Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Scenario;->next([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public status()Lcom/sightcall/universal/scenario/Scenario$Status;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario;->status:Lcom/sightcall/universal/scenario/Scenario$Status;

    return-object p0
.end method

.method public step()Lcom/sightcall/universal/scenario/Step;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario;->steps:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/scenario/Step;

    return-object p0
.end method

.method public unbindService()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario;->steps:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/scenario/Step;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->onServiceDisconnected()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/scenario/Scenario;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    return-void
.end method
