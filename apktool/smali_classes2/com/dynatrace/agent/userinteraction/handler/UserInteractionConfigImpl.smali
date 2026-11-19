.class public final Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;",
        "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;",
        "Lcom/dynatrace/agent/common/InstrumentationFlavor;",
        "instrumentationFlavor",
        "<init>",
        "(Lcom/dynatrace/agent/common/InstrumentationFlavor;)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/agent/common/InstrumentationFlavor;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/common/InstrumentationFlavor;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;->a:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/common/InstrumentationFlavor;->PLAIN:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;->a:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/dynatrace/agent/common/InstrumentationFlavor;->JETPACK_COMPOSE:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;->a:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    iget-object p1, p1, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;->a:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;->a:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserInteractionConfigImpl(instrumentationFlavor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfigImpl;->a:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
