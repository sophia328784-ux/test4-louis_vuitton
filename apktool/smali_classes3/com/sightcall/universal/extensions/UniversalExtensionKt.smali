.class public final Lcom/sightcall/universal/extensions/UniversalExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0008\u0010\u0000\u001a\u0004\u0018\u00010\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "getSession",
        "Lcom/sightcall/universal/model/Session;",
        "sdk_installedRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getSession()Lcom/sightcall/universal/model/Session;
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/Universal;->scenario()Lcom/sightcall/universal/scenario/UniversalScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/UniversalScenario;->get()Lcom/sightcall/universal/scenario/Scenario;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/Scenario;->step()Lcom/sightcall/universal/scenario/Step;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/sightcall/universal/scenario/steps/CallStep;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/sightcall/universal/scenario/steps/CallStep;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method
