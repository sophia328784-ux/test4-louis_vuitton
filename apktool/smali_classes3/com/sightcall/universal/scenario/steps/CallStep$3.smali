.class Lcom/sightcall/universal/scenario/steps/CallStep$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/scenario/steps/CallStep;->onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/scenario/steps/CallStep;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/scenario/steps/CallStep;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep$3;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep$3;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-static {p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->c(Lcom/sightcall/universal/scenario/steps/CallStep;)Lcom/sightcall/universal/model/Session;

    move-result-object p1

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    sget-object v0, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep$3;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-static {p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->c(Lcom/sightcall/universal/scenario/steps/CallStep;)Lcom/sightcall/universal/model/Session;

    move-result-object p1

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-boolean p1, p1, Lcom/sightcall/universal/agent/Usecase;->useAdvancedAnnotations:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep$3;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sightcall/capabilities/CapabilitiesRepository;->setAdvancedAnnotation(Z)V

    :cond_0
    return-void
.end method

.method public onReady()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep$3;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-static {v0}, Lcom/sightcall/universal/scenario/steps/CallStep;->c(Lcom/sightcall/universal/scenario/steps/CallStep;)Lcom/sightcall/universal/model/Session;

    move-result-object v0

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep$3;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    invoke-static {v0}, Lcom/sightcall/universal/scenario/steps/CallStep;->c(Lcom/sightcall/universal/scenario/steps/CallStep;)Lcom/sightcall/universal/model/Session;

    move-result-object v0

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-boolean v0, v0, Lcom/sightcall/universal/agent/Usecase;->useAdvancedAnnotations:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep$3;->this$0:Lcom/sightcall/universal/scenario/steps/CallStep;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->setAdvancedAnnotation(Z)V

    :cond_0
    return-void
.end method
