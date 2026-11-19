.class abstract Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$NoopCallRecordingPlugin;,
        Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/sightcall/universal/scenario/steps/CallStep;)Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;
    .locals 5

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->recording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/universal/model/Session;->config()Lcom/sightcall/universal/model/Config;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v2, v2, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v2}, Lcom/sightcall/universal/agent/Usecase;->recording()Lcom/sightcall/universal/agent/Usecase$Recording;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v4, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;

    invoke-virtual {v2}, Lcom/sightcall/universal/agent/Usecase$Recording;->autoStart()Z

    move-result v2

    invoke-direct {v0, p0, v2, v1}, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$RealCallRecordingPlugin;-><init>(Lcom/sightcall/universal/scenario/steps/CallStep;ZI)V

    return-object v0

    :cond_3
    :goto_2
    new-instance p0, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$NoopCallRecordingPlugin;

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin$NoopCallRecordingPlugin;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract onBind(Lcom/sightcall/universal/scenario/Scenario;)V
.end method

.method public abstract onUnbind()V
.end method
