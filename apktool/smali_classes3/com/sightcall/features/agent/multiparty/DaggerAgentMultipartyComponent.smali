.class public final Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$Builder;,
        Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Builder;
    .locals 2

    new-instance v0, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$Builder;-><init>(I)V

    return-object v0
.end method

.method public static create()Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;
    .locals 2

    new-instance v0, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$Builder;-><init>(I)V

    invoke-virtual {v0}, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$Builder;->build()Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;

    move-result-object v0

    return-object v0
.end method
