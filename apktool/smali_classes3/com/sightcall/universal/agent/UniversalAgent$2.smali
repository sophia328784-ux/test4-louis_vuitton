.class Lcom/sightcall/universal/agent/UniversalAgent$2;
.super Lcom/sightcall/universal/util/Lazy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/UniversalAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/util/Lazy<",
        "Lcom/sightcall/universal/agent/Agent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$2;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-direct {p0}, Lcom/sightcall/universal/util/Lazy;-><init>()V

    return-void
.end method


# virtual methods
.method public init()Lcom/sightcall/universal/agent/Agent;
    .locals 2

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$2;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->i(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/agent/Repository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Repository;->loadAgent()Lcom/sightcall/universal/agent/Agent;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sightcall/httpclient/di/HttpClientModule;->Companion:Lcom/sightcall/httpclient/di/HttpClientModule$Companion;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Agent;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/api/Environment;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/httpclient/di/HttpClientModule$Companion;->initBaseUrl(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent$2;->init()Lcom/sightcall/universal/agent/Agent;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/sightcall/universal/agent/Agent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$2;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->i(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/agent/Repository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/Repository;->saveAgent(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/Agent;

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/sightcall/universal/agent/Agent;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent$2;->set(Lcom/sightcall/universal/agent/Agent;)V

    return-void
.end method
