.class public final Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionMappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002H\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "toAnalyticsAgentSession",
        "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;",
        "Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity;",
        "analyticsagentsession_release"
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
.method public static final toAnalyticsAgentSession(Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity;)Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionMappingException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity;->getData()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data;->getAttributes()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Attributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data$Attributes;->getUploadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity;->getData()Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/GetAgentSessionResponseEntity$Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/analyticsagentsession/AnalyticsAgentSession;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create a AnalyticsAgentSession from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
