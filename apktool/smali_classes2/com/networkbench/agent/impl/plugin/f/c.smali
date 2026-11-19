.class public Lcom/networkbench/agent/impl/plugin/f/c;
.super Lcom/networkbench/agent/impl/plugin/f/i;
.source "SourceFile"


# instance fields
.field private a:Lcom/networkbench/agent/impl/data/f;

.field private g:Lcom/networkbench/agent/impl/harvest/ActionData;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/ActionData;Lcom/networkbench/agent/impl/data/f;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/e;->b:Lcom/networkbench/agent/impl/plugin/e;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/f/i;-><init>(Lcom/networkbench/agent/impl/plugin/e;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/f/c;->g:Lcom/networkbench/agent/impl/harvest/ActionData;

    iput-object p2, p0, Lcom/networkbench/agent/impl/plugin/f/c;->a:Lcom/networkbench/agent/impl/data/f;

    const-string p2, "requestHeader"

    iget-object v0, p1, Lcom/networkbench/agent/impl/harvest/ActionData;->requestHeaderParam:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "responseHeader"

    iget-object v0, p1, Lcom/networkbench/agent/impl/harvest/ActionData;->responseHeaderParam:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ak;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "hostName"

    invoke-virtual {p0, v0, p2}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->o(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "port"

    invoke-virtual {p0, p2, p1}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "NetworkScene completeSceneData :--------"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/plugin/h;

    iget-boolean v2, v1, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/c/d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/f/f;->a(Lcom/networkbench/agent/impl/plugin/h;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v2

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/f/c;->g:Lcom/networkbench/agent/impl/harvest/ActionData;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUnknown()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/f/c;->g:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->getUnknown()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v1, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v4, v4, Lcom/networkbench/agent/impl/data/c/d;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/f/c;->a:Lcom/networkbench/agent/impl/data/f;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/f;->h()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/f/c;->a:Lcom/networkbench/agent/impl/data/f;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/f;->h()Ljava/util/HashMap;

    move-result-object v3

    iget-object v1, v1, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v1, v1, Lcom/networkbench/agent/impl/data/c/d;->e:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/f/c;->a:Lcom/networkbench/agent/impl/data/f;

    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpErrorForScene(Lcom/networkbench/agent/impl/data/f;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/f/c;->g:Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addHttpTransaction(Lcom/networkbench/agent/impl/harvest/ActionData;)I

    return-void
.end method

.method public b()Lcom/networkbench/agent/impl/data/f;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/f/c;->a:Lcom/networkbench/agent/impl/data/f;

    return-object p0
.end method
