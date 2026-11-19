.class public final Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;",
        ">;"
    }
.end annotation


# instance fields
.field private final agentSessionsApiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl_Factory;->agentSessionsApiProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;",
            ">;)",
            "Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl_Factory;

    invoke-direct {v0, p0}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;)Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;
    .locals 1

    new-instance v0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;

    invoke-direct {v0, p0}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;-><init>(Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl_Factory;->agentSessionsApiProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;

    invoke-static {p0}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl_Factory;->newInstance(Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;)Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl_Factory;->get()Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;

    move-result-object p0

    return-object p0
.end method
