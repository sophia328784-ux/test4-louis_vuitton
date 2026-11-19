.class public Lcom/networkbench/agent/impl/plugin/f/d;
.super Lcom/networkbench/agent/impl/plugin/f/i;
.source "SourceFile"


# instance fields
.field private a:Lcom/networkbench/agent/impl/harvest/ActionData;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/ActionData;)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/plugin/e;->a:Lcom/networkbench/agent/impl/plugin/e;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/f/i;-><init>(Lcom/networkbench/agent/impl/plugin/e;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/f/d;->a:Lcom/networkbench/agent/impl/harvest/ActionData;

    const-string v0, "requestHeader"

    iget-object v1, p1, Lcom/networkbench/agent/impl/harvest/ActionData;->requestHeaderParam:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "responseHeader"

    iget-object v1, p1, Lcom/networkbench/agent/impl/harvest/ActionData;->responseHeaderParam:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hostName"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->o(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "port"

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "NetworkScene completeSceneData :--------"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/plugin/h;

    iget-boolean v2, v1, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/c/d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/f/d;->a:Lcom/networkbench/agent/impl/harvest/ActionData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUnknown()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/f/d;->a:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUnknown()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v3, v3, Lcom/networkbench/agent/impl/data/c/d;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/f/f;->a(Lcom/networkbench/agent/impl/plugin/h;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/f/d;->a:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpTransactionForScene(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    return-void
.end method
