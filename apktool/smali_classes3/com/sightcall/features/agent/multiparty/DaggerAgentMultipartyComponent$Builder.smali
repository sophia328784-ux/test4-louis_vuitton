.class final Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent;
    .locals 1

    new-instance p0, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;

    new-instance v0, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;

    invoke-direct {v0}, Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;-><init>()V

    invoke-direct {p0, v0}, Lcom/sightcall/features/agent/multiparty/DaggerAgentMultipartyComponent$AgentMultipartyComponentImpl;-><init>(Lcom/sightcall/features/agent/multiparty/AgentMultipartyComponent$Module;)V

    return-object p0
.end method
