.class public Lcom/sightcall/universal/scenario/steps/DeeplinkStep;
.super Lcom/sightcall/universal/scenario/Step;
.source "SourceFile"


# instance fields
.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/Step;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/DeeplinkStep;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    return-void
.end method

.method public onUnbind()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/DeeplinkStep;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/sightcall/universal/util/DeeplinkParser;->parse(Landroid/net/Uri;)Lcom/sightcall/universal/util/Deeplink;

    move-result-object v0

    instance-of v1, v0, Lcom/sightcall/universal/util/StepLink;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sightcall/universal/util/StepLink;

    invoke-virtual {v0}, Lcom/sightcall/universal/util/StepLink;->getStep()Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    filled-new-array {v0}, [Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->success([Lcom/sightcall/universal/scenario/Step;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/util/Deeplink;->execute(Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->success([Lcom/sightcall/universal/scenario/Step;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->failure(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeeplinkStep{state=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->state()Lcom/sightcall/universal/scenario/Step$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/DeeplinkStep;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
