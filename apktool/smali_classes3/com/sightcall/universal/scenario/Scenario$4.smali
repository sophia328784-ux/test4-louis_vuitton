.class Lcom/sightcall/universal/scenario/Scenario$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/scenario/Scenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/scenario/Scenario;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/Scenario$4;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/sightcall/universal/scenario/Scenario$4;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    check-cast p2, Lcom/sightcall/universal/scenario/ScenarioService$LocalBinder;

    invoke-virtual {p2}, Lcom/sightcall/universal/scenario/ScenarioService$LocalBinder;->getService()Lcom/sightcall/universal/scenario/ScenarioService;

    move-result-object p2

    iput-object p2, p1, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    invoke-static {}, Lcom/sightcall/universal/scenario/Scenario;->d()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    iget-object p2, p0, Lcom/sightcall/universal/scenario/Scenario$4;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    iget-object p2, p2, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sightcall/universal/scenario/Scenario$4;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "onServiceConnected(%s@%s)"

    invoke-virtual {p1, v0, p2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sightcall/universal/scenario/Scenario$4;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    invoke-static {p1}, Lcom/sightcall/universal/scenario/Scenario;->a(Lcom/sightcall/universal/scenario/Scenario;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/scenario/Step;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario$4;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/scenario/Step;->onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/scenario/Scenario;->d()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/Scenario$4;->this$0:Lcom/sightcall/universal/scenario/Scenario;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/Scenario;->service:Lcom/sightcall/universal/scenario/ScenarioService;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/Scenario;->a(Lcom/sightcall/universal/scenario/Scenario;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/scenario/Step;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
